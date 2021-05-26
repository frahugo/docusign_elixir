# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Api.TemplateViews do
  @moduledoc """
  API calls for all endpoints tagged `TemplateViews`.
  """

  alias DocuSign.Connection
  import DocuSign.RequestBuilder

  @doc """
  Gets a URL for a template edit view.
  This method returns a URL for starting an edit view of a template that uses the DocuSign Template UI.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID GUID.
  - template_id (String.t): The id of the template.
  - opts (KeywordList): [optional] Optional parameters
    - :return_url_request (ReturnUrlRequest):

  ## Returns

  {:ok, %DocuSign.Model.ViewUrl{}} on success
  {:error, info} on failure
  """
  @spec views_post_template_edit_view(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, DocuSign.Model.ViewUrl.t()} | {:error, Tesla.Env.t()}
  def views_post_template_edit_view(connection, account_id, template_id, opts \\ []) do
    optional_params = %{
      :returnUrlRequest => :body
    }

    %{}
    |> method(:post)
    |> url("/v2.1/accounts/#{account_id}/templates/#{template_id}/views/edit")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.ViewUrl{})
  end
end
