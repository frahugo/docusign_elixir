defmodule DocuSign.ConnectionTest do
  use ExUnit.Case, async: false

  alias DocuSign.Connection

  import DocuSign.EnvHelper
  import DocuSign.ProcessHelper

  import Mox

  setup :set_mox_from_context
  setup :verify_on_exit!

  @oauth_mock __MODULE__.DocuSign.OAuth

  defmock(@oauth_mock, for: DocuSign.OAuth)

  describe "creating a connection for default user" do
    setup do
      {:ok, pid} = DocuSign.ClientRegistry.start_link()
      on_exit(fn -> assert_down(pid) end)
    end

    test "no user ID returns connection using default user ID" do
      connection = Connection.new()

      # Returns user id provided by OAuth.Fake
      assert connection.client.ref.user_id == ":user-id:"
    end
  end

  describe "getting a new connection for a user ID" do
    setup do
      {:ok, pid} = DocuSign.ClientRegistry.start_link()
      on_exit(fn -> assert_down(pid) end)
    end

    test "user ID returns connection for that user" do
      @oauth_mock
      |> expect(:client, fn opts ->
        assert opts[:user_id] == ":other-user-id:"
        %OAuth2.Client{ref: %{user_id: opts[:user_id]}}
      end)
      |> expect(:refresh_token!, fn client, _force -> client end)
      |> expect(:interval_refresh_token, fn _client -> 1000 end)

      connection = Connection.get(":other-user-id:", oauth_impl: @oauth_mock)

      assert connection.client.ref.user_id == ":other-user-id:"
    end
  end

  describe "requesting with a configured timeout" do
    setup do
      bypass = Bypass.open()

      {:ok, bypass: bypass}
    end

    test "request without timeout returns payload", %{bypass: bypass} do
      Bypass.expect_once(bypass, fn conn ->
        Plug.Conn.resp(conn, 200, "")
      end)

      result = do_request(bypass)

      refute result == :timeout
    end

    test "request with timeout less than 2s returns :timeout", %{bypass: bypass} do
      # By default, Mint times out after 2s
      put_env(:docusign, :timeout, 500)

      Bypass.expect_once(bypass, fn conn ->
        Process.sleep(1_000)
        Plug.Conn.resp(conn, 200, "")
      end)

      result = do_request(bypass)

      assert result == :timeout

      # Force bypass expectations to pass to prevent exit :shutdown error
      Bypass.pass(bypass)
    end
  end

  defp do_request(bypass) do
    conn = %Connection{
      client: %{token: %OAuth2.AccessToken{}},
      app_account: %DocuSign.User.AppAccount{base_uri: "http://localhost:#{bypass.port}"}
    }

    opts = [method: :GET, url: "/endpoint"]

    Connection.request(conn, opts)
  end
end
