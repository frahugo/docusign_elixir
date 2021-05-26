# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Api.EnvelopeRecipients do
  @moduledoc """
  API calls for all endpoints tagged `EnvelopeRecipients`.
  """

  alias DocuSign.Connection
  import DocuSign.RequestBuilder

  @doc """
  Deletes a recipient from an envelope.
  Deletes a recipient from a &#x60;draft&#x60; or &#x60;sent&#x60; envelope.  If the envelope is \&quot;In Process\&quot; (has been sent and is not completed or voided), recipients that have completed their actions cannot be deleted.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID GUID.
  - envelope_id (String.t): The envelope&#39;s GUID.   Example: &#x60;93be49ab-xxxx-xxxx-xxxx-f752070d71ec&#x60;
  - recipient_id (String.t): A local reference that senders use to map recipients to other objects, such as specific document tabs. Within an envelope, each &#x60;recipientId&#x60; must be unique, but there is no uniqueness requirement across envelopes. For example, many envelopes assign the first recipient a &#x60;recipientId&#x60; of &#x60;1&#x60;.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %DocuSign.Model.EnvelopeRecipients{}} on success
  {:error, info} on failure
  """
  @spec recipients_delete_recipient(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, DocuSign.Model.EnvelopeRecipients.t()} | {:error, Tesla.Env.t()}
  def recipients_delete_recipient(connection, account_id, envelope_id, recipient_id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/v2.1/accounts/#{account_id}/envelopes/#{envelope_id}/recipients/#{recipient_id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.EnvelopeRecipients{})
  end

  @doc """
  Deletes recipients from an envelope.
  Deletes one or more recipients from a draft or sent envelope. List the recipients that you want to delete in the body of the request. This method uses the &#x60;recipientId&#x60; as the key for deleting recipients.  If the envelope is &#x60;In Process&#x60;, meaning that it has been sent and has not been completed or voided, recipients that have completed their actions cannot be deleted.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID GUID.
  - envelope_id (String.t): The envelope&#39;s GUID.   Example: &#x60;93be49ab-xxxx-xxxx-xxxx-f752070d71ec&#x60;
  - opts (KeywordList): [optional] Optional parameters
    - :envelope_recipients (EnvelopeRecipients):

  ## Returns

  {:ok, %DocuSign.Model.EnvelopeRecipients{}} on success
  {:error, info} on failure
  """
  @spec recipients_delete_recipients(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, DocuSign.Model.EnvelopeRecipients.t()} | {:error, Tesla.Env.t()}
  def recipients_delete_recipients(connection, account_id, envelope_id, opts \\ []) do
    optional_params = %{
      :EnvelopeRecipients => :body
    }

    %{}
    |> method(:delete)
    |> url("/v2.1/accounts/#{account_id}/envelopes/#{envelope_id}/recipients")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.EnvelopeRecipients{})
  end

  @doc """
  Gets the status of recipients for an envelope.
  Retrieves the status of all recipients in a single envelope and identifies the current recipient in the routing list. This method can also be used to retrieve the tab values.  The &#x60;currentRoutingOrder&#x60; property of the response contains the &#x60;routingOrder&#x60; value of the current recipient indicating that the envelope has been sent to the recipient, but the recipient has not completed their actions.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID GUID.
  - envelope_id (String.t): The envelope&#39;s GUID.   Example: &#x60;93be49ab-xxxx-xxxx-xxxx-f752070d71ec&#x60;
  - opts (KeywordList): [optional] Optional parameters
    - :include_anchor_tab_locations (String.t):  When set to **true** and &#x60;include_tabs&#x60; value is set to **true**, all tabs with anchor tab properties are included in the response.
    - :include_extended (String.t):  When set to **true**, the extended properties are included in the response.
    - :include_metadata (String.t): Boolean value that specifies whether to include metadata associated with the recipients (for envelopes only, not templates).
    - :include_tabs (String.t): When set to **true**, the tab information associated with the recipient is included in the response.

  ## Returns

  {:ok, %DocuSign.Model.EnvelopeRecipients{}} on success
  {:error, info} on failure
  """
  @spec recipients_get_recipients(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, DocuSign.Model.EnvelopeRecipients.t()} | {:error, Tesla.Env.t()}
  def recipients_get_recipients(connection, account_id, envelope_id, opts \\ []) do
    optional_params = %{
      :include_anchor_tab_locations => :query,
      :include_extended => :query,
      :include_metadata => :query,
      :include_tabs => :query
    }

    %{}
    |> method(:get)
    |> url("/v2.1/accounts/#{account_id}/envelopes/#{envelope_id}/recipients")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.EnvelopeRecipients{})
  end

  @doc """
  Creates a resource token for a sender to request ID Evidence data.
  Creates a resource token for a sender. This token allows a sender to return identification data for a recipient using the [ID Evidence API](https://developers.docusign.com/docs/idevidence-api/).

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The account ID.
  - envelope_id (String.t): The envelope&#39;s GUID.   Example: &#x60;93be49ab-xxxx-xxxx-xxxx-f752070d71ec&#x60;
  - recipient_id (String.t): The &#x60;recipientIdGuid&#x60;.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %DocuSign.Model.ProofServiceResourceToken{}} on success
  {:error, info} on failure
  """
  @spec recipients_post_recipient_proof_file_resource_token(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, DocuSign.Model.ProofServiceResourceToken.t()} | {:error, Tesla.Env.t()}
  def recipients_post_recipient_proof_file_resource_token(
        connection,
        account_id,
        envelope_id,
        recipient_id,
        _opts \\ []
      ) do
    %{}
    |> method(:post)
    |> url(
      "/v2.1/accounts/#{account_id}/envelopes/#{envelope_id}/recipients/#{recipient_id}/identity_proof_token"
    )
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.ProofServiceResourceToken{})
  end

  @doc """
  Adds one or more recipients to an envelope.
  Adds one or more recipients to an envelope.  For an in process envelope, one that has been sent and has not been completed or voided, an email is sent to a new recipient when they are reached in the routing order. If the new recipient&#39;s routing order is before or the same as the envelope&#39;s next recipient, an email is only sent if the optional &#x60;resend_envelope&#x60; query string is set to **true**.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID GUID.
  - envelope_id (String.t): The envelope&#39;s GUID.   Example: &#x60;93be49ab-xxxx-xxxx-xxxx-f752070d71ec&#x60;
  - opts (KeywordList): [optional] Optional parameters
    - :resend_envelope (String.t): When set to **true**, resends the   envelope if the new recipient&#39;s routing order is before or the same as the envelope&#39;s next recipient.
    - :envelope_recipients (EnvelopeRecipients):

  ## Returns

  {:ok, %DocuSign.Model.EnvelopeRecipients{}} on success
  {:error, info} on failure
  """
  @spec recipients_post_recipients(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, DocuSign.Model.EnvelopeRecipients.t()} | {:error, Tesla.Env.t()}
  def recipients_post_recipients(connection, account_id, envelope_id, opts \\ []) do
    optional_params = %{
      :resend_envelope => :query,
      :EnvelopeRecipients => :body
    }

    %{}
    |> method(:post)
    |> url("/v2.1/accounts/#{account_id}/envelopes/#{envelope_id}/recipients")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.EnvelopeRecipients{})
  end

  @doc """
  Updates recipients in a draft envelope or corrects recipient information for an in-process envelope.
  Updates the recipients of a draft envelope or corrects recipient information for an in-process envelope.   If you send information for a recipient that does not already exist in a draft envelope, the recipient is added to the envelope (similar to the EnvelopeRecipients::Create method).  You can also use this method to resend an envelope to a recipient by using the &#x60;resend_envelope&#x60; option.  **Updating Sent Envelopes**  After an envelope has been sent, you can edit only the following properties:   - &#x60;accessCode&#x60; - &#x60;agentCanEditName&#x60; - &#x60;agentCanEditEmail&#x60; - &#x60;customFields&#x60; - &#x60;deliveryMethod&#x60; - &#x60;documentVisibility&#x60; - &#x60;email&#x60; - &#x60;emailNotification&#x60; - &#x60;idCheckConfigurationName&#x60; - &#x60;name&#x60; - &#x60;note&#x60; - &#x60;phoneAuthentication&#x60; - &#x60;recipientType&#x60; (For this to work, you must also change the recipient object to match the recipient type.) - &#x60;requireIdLookup&#x60; - &#x60;routingOrder&#x60; - &#x60;routingOrder&#x60; - &#x60;signingGroupId&#x60; (You can change this id to switch to a different signing group and its corresponding set of recipients.) - &#x60;smsAuthentication&#x60; - &#x60;suppressEmails&#x60; - &#x60;userName&#x60;

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID GUID.
  - envelope_id (String.t): The envelope&#39;s GUID.   Example: &#x60;93be49ab-xxxx-xxxx-xxxx-f752070d71ec&#x60;
  - opts (KeywordList): [optional] Optional parameters
    - :combine_same_order_recipients (String.t): When set to **true**, recipients are combined or merged with matching recipients. Recipient matching occurs as part of [template matching](https://docs.docusign.com/DocuSignHelp/Content/automatic-template-matching.htm), and is based on Recipient Role and Routing Order.
    - :offline_signing (String.t): Indicates if offline signing is enabled for the recipient when a network connection is unavailable.
    - :resend_envelope (String.t): When set to **true**, resends the   envelope if the new recipient&#39;s routing order is before or the same as the envelope&#39;s next recipient.
    - :envelope_recipients (EnvelopeRecipients):

  ## Returns

  {:ok, %DocuSign.Model.RecipientsUpdateSummary{}} on success
  {:error, info} on failure
  """
  @spec recipients_put_recipients(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, DocuSign.Model.RecipientsUpdateSummary.t()} | {:error, Tesla.Env.t()}
  def recipients_put_recipients(connection, account_id, envelope_id, opts \\ []) do
    optional_params = %{
      :combine_same_order_recipients => :query,
      :offline_signing => :query,
      :resend_envelope => :query,
      :EnvelopeRecipients => :body
    }

    %{}
    |> method(:put)
    |> url("/v2.1/accounts/#{account_id}/envelopes/#{envelope_id}/recipients")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.RecipientsUpdateSummary{})
  end

  @doc """
  Updates document visibility for recipients
  This method updates document visibility for one or more recipients based on the &#x60;recipientId&#x60; and &#x60;visible&#x60; values that you include in the request body.  **Note**: A document cannot be hidden from a recipient if the recipient has tabs assigned to them on the document. Carbon Copy, Certified Delivery (Needs to Sign), Editor, and Agent recipients can always see all documents.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID GUID.
  - envelope_id (String.t): The envelope&#39;s GUID.   Example: &#x60;93be49ab-xxxx-xxxx-xxxx-f752070d71ec&#x60;
  - opts (KeywordList): [optional] Optional parameters
    - :document_visibility_list (DocumentVisibilityList):

  ## Returns

  {:ok, %DocuSign.Model.DocumentVisibilityList{}} on success
  {:error, info} on failure
  """
  @spec recipients_put_recipients_document_visibility(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, DocuSign.Model.DocumentVisibilityList.t()} | {:error, Tesla.Env.t()}
  def recipients_put_recipients_document_visibility(
        connection,
        account_id,
        envelope_id,
        opts \\ []
      ) do
    optional_params = %{
      :documentVisibilityList => :body
    }

    %{}
    |> method(:put)
    |> url("/v2.1/accounts/#{account_id}/envelopes/#{envelope_id}/recipients/document_visibility")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.DocumentVisibilityList{})
  end

  @doc """
  Creates an envelope recipient preview.
  This method returns a URL for an envelope recipient preview  in the DocuSign UI that you can embed in your application. You use this method to enable the sender to preview the recipients&#39; experience.  For more information, see [Preview and Send](https://support.docusign.com/en/guides/ndse-user-guide-send-your-documents).

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID GUID.
  - envelope_id (String.t): The envelope&#39;s GUID.   Example: &#x60;93be49ab-xxxx-xxxx-xxxx-f752070d71ec&#x60;
  - opts (KeywordList): [optional] Optional parameters
    - :recipient_preview_request (RecipientPreviewRequest):

  ## Returns

  {:ok, %DocuSign.Model.ViewUrl{}} on success
  {:error, info} on failure
  """
  @spec views_post_envelope_recipient_preview(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, DocuSign.Model.ViewUrl.t()} | {:error, Tesla.Env.t()}
  def views_post_envelope_recipient_preview(connection, account_id, envelope_id, opts \\ []) do
    optional_params = %{
      :recipientPreviewRequest => :body
    }

    %{}
    |> method(:post)
    |> url("/v2.1/accounts/#{account_id}/envelopes/#{envelope_id}/views/recipient_preview")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.ViewUrl{})
  end

  @doc """
  Create the link to the page for manually reviewing IDs.
  This method returns the URL of the page that allows a sender to [manually review](https://support.docusign.com/en/guides/ndse-user-guide-send-documents-with-id-verification) the ID of a recipient.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): A value that identifies your account. This value is automatically generated by DocuSign for any account you create. Copy the value from the API Account ID field in the [AppsI and Keys](https://support.docusign.com/en/guides/ndse-admin-guide-api-and-keys) page.
  - envelope_id (String.t): The envelope&#39;s GUID.   Example: &#x60;93be49ab-xxxx-xxxx-xxxx-f752070d71ec&#x60;
  - recipient_id (String.t): A GUID value that DocuSign assigns to identify each recipient in an envelope. This value is globally unique for all recipients, not just those in your account.  The specified recipient must belong to a workflow that allows the [manual review](https://support.docusign.com/en/guides/Identity-Verification-DocuSign-eSignature-Admin-Guide) of IDs. In addition, the status of the automatic verification for this recipient must return &#x60;Failed&#x60; and the value of the &#x60;vendorFailureStatusCode&#x60; field must be &#x60;MANUAL_REVIEW_STARTED&#x60; as shown in the following extract of a response to the [GET ENVELOPE](https://developers.docusign.com/docs/esign-rest-api/reference/envelopes/envelopes/get/) method: &lt;p&gt;  &#x60;&#x60;&#x60; \&quot;recipientAuthenticationStatus\&quot;: {        \&quot;identityVerificationResult\&quot;: {               \&quot;status\&quot;: \&quot;Failed\&quot;,              \&quot;eventTimestamp\&quot;: \&quot;2020-09-04T16:59:42.8045667Z\&quot;,              \&quot;vendorFailureStatusCode\&quot;: \&quot;MANUAL_REVIEW_STARTED\&quot;         }   } &#x60;&#x60;&#x60;
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %DocuSign.Model.ViewUrl{}} on success
  {:error, info} on failure
  """
  @spec views_post_recipient_manual_review_view(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, DocuSign.Model.ViewUrl.t()} | {:error, Tesla.Env.t()}
  def views_post_recipient_manual_review_view(
        connection,
        account_id,
        envelope_id,
        recipient_id,
        _opts \\ []
      ) do
    %{}
    |> method(:post)
    |> url(
      "/v2.1/accounts/#{account_id}/envelopes/#{envelope_id}/recipients/#{recipient_id}/views/identity_manual_review"
    )
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.ViewUrl{})
  end
end
