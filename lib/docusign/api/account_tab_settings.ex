# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Api.AccountTabSettings do
  @moduledoc """
  API calls for all endpoints tagged `AccountTabSettings`.
  """

  alias DocuSign.Connection
  import DocuSign.RequestBuilder

  @doc """
  Returns tab settings list for specified account
  This method returns information about the tab types and tab functionality that is currently enabled for an account.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID GUID.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %DocuSign.Model.TabAccountSettings{}} on success
  {:error, info} on failure
  """
  @spec tab_settings_get_tab_settings(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, DocuSign.Model.TabAccountSettings.t()} | {:error, Tesla.Env.t()}
  def tab_settings_get_tab_settings(connection, account_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/v2.1/accounts/#{account_id}/settings/tabs")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.TabAccountSettings{})
  end

  @doc """
  Modifies tab settings for specified account
  This method modifies the tab types and tab functionality that is enabled for an account.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID GUID.
  - opts (KeywordList): [optional] Optional parameters
    - :tab_account_settings (TabAccountSettings): Account-wide tab settings.

  ## Returns

  {:ok, %DocuSign.Model.TabAccountSettings{}} on success
  {:error, info} on failure
  """
  @spec tab_settings_put_settings(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, DocuSign.Model.TabAccountSettings.t()} | {:error, Tesla.Env.t()}
  def tab_settings_put_settings(connection, account_id, opts \\ []) do
    optional_params = %{
      :tabAccountSettings => :body
    }

    %{}
    |> method(:put)
    |> url("/v2.1/accounts/#{account_id}/settings/tabs")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.TabAccountSettings{})
  end
end
