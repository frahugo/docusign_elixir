# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Api.EnvelopeDocumentVisibility do
  @moduledoc """
  API calls for all endpoints tagged `EnvelopeDocumentVisibility`.
  """

  alias DocuSign.Connection
  import DocuSign.RequestBuilder

  @doc """
  Returns document visibility for a recipient
  This method returns information about document visibility for a recipient.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID GUID.
  - envelope_id (String.t): The envelope&#39;s GUID.   Example: &#x60;93be49ab-xxxx-xxxx-xxxx-f752070d71ec&#x60;
  - recipient_id (String.t): A local reference that senders use to map recipients to other objects, such as specific document tabs. Within an envelope, each &#x60;recipientId&#x60; must be unique, but there is no uniqueness requirement across envelopes. For example, many envelopes assign the first recipient a &#x60;recipientId&#x60; of &#x60;1&#x60;.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %DocuSign.Model.DocumentVisibilityList{}} on success
  {:error, info} on failure
  """
  @spec recipients_get_recipient_document_visibility(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, DocuSign.Model.DocumentVisibilityList.t()} | {:error, Tesla.Env.t()}
  def recipients_get_recipient_document_visibility(
        connection,
        account_id,
        envelope_id,
        recipient_id,
        _opts \\ []
      ) do
    %{}
    |> method(:get)
    |> url(
      "/v2.1/accounts/#{account_id}/envelopes/#{envelope_id}/recipients/#{recipient_id}/document_visibility"
    )
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.DocumentVisibilityList{})
  end

  @doc """
  Updates document visibility for a recipient
  This method updates document visibility for a recipient.  **Note**: A document cannot be hidden from a recipient if the recipient has tabs assigned to them on the document. Carbon Copy, Certified Delivery (Needs to Sign), Editor, and Agent recipients can always see all documents.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID GUID.
  - envelope_id (String.t): The envelope&#39;s GUID.   Example: &#x60;93be49ab-xxxx-xxxx-xxxx-f752070d71ec&#x60;
  - recipient_id (String.t): A local reference that senders use to map recipients to other objects, such as specific document tabs. Within an envelope, each &#x60;recipientId&#x60; must be unique, but there is no uniqueness requirement across envelopes. For example, many envelopes assign the first recipient a &#x60;recipientId&#x60; of &#x60;1&#x60;.
  - opts (KeywordList): [optional] Optional parameters
    - :document_visibility_list (DocumentVisibilityList):

  ## Returns

  {:ok, %DocuSign.Model.DocumentVisibilityList{}} on success
  {:error, info} on failure
  """
  @spec recipients_put_recipient_document_visibility(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, DocuSign.Model.DocumentVisibilityList.t()} | {:error, Tesla.Env.t()}
  def recipients_put_recipient_document_visibility(
        connection,
        account_id,
        envelope_id,
        recipient_id,
        opts \\ []
      ) do
    optional_params = %{
      :documentVisibilityList => :body
    }

    %{}
    |> method(:put)
    |> url(
      "/v2.1/accounts/#{account_id}/envelopes/#{envelope_id}/recipients/#{recipient_id}/document_visibility"
    )
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.DocumentVisibilityList{})
  end
end
