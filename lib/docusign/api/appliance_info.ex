# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Api.ApplianceInfo do
  @moduledoc """
  API calls for all endpoints tagged `ApplianceInfo`.
  """

  alias DocuSign.Connection
  import DocuSign.RequestBuilder

  @doc """
  Deletes custom fields information for Display Appliance.


  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID GUID.
  - envelope_id (String.t): The envelope&#39;s GUID.   Example: &#x60;93be49ab-xxxx-xxxx-xxxx-f752070d71ec&#x60;
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec envelope_appliance_info_delete_custom_fields(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, nil} | {:error, Tesla.Env.t()}
  def envelope_appliance_info_delete_custom_fields(
        connection,
        account_id,
        envelope_id,
        _opts \\ []
      ) do
    %{}
    |> method(:post)
    |> url(
      "/v2.1/accounts/#{account_id}/envelopes/#{envelope_id}/display_appliance_info/custom_fields/delete"
    )
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Deletes document information for Display Appliance.


  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID GUID.
  - document_id (String.t): The &#x60;documentId&#x60; is set by the API client. It is an integer that falls between &#x60;1&#x60; and 2,147,483,647. The value is encoded as a string without commas. The values &#x60;1&#x60;, &#x60;2&#x60;, &#x60;3&#x60;, and so on are typically used to identify the first few documents in an envelope. Tab definitions include a &#x60;documentId&#x60; property that specifies the document on which to place the tab.
  - envelope_id (String.t): The envelope&#39;s GUID.   Example: &#x60;93be49ab-xxxx-xxxx-xxxx-f752070d71ec&#x60;
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec envelope_appliance_info_delete_document(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, nil} | {:error, Tesla.Env.t()}
  def envelope_appliance_info_delete_document(
        connection,
        account_id,
        document_id,
        envelope_id,
        _opts \\ []
      ) do
    %{}
    |> method(:delete)
    |> url(
      "/v2.1/accounts/#{account_id}/envelopes/#{envelope_id}/display_appliance_info/document/#{
        document_id
      }"
    )
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Deletes page information for Display Appliance.


  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID GUID.
  - envelope_id (String.t): The envelope&#39;s GUID.   Example: &#x60;93be49ab-xxxx-xxxx-xxxx-f752070d71ec&#x60;
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec envelope_appliance_info_delete_page_info(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, nil} | {:error, Tesla.Env.t()}
  def envelope_appliance_info_delete_page_info(connection, account_id, envelope_id, _opts \\ []) do
    %{}
    |> method(:post)
    |> url(
      "/v2.1/accounts/#{account_id}/envelopes/#{envelope_id}/display_appliance_info/page_info/delete"
    )
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Deletes RecipientDeniedDocumentCopy for Display Appliance.


  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID GUID.
  - envelope_id (String.t): The envelope&#39;s GUID.   Example: &#x60;93be49ab-xxxx-xxxx-xxxx-f752070d71ec&#x60;
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec envelope_appliance_info_delete_recipient_denied_document_copy(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, nil} | {:error, Tesla.Env.t()}
  def envelope_appliance_info_delete_recipient_denied_document_copy(
        connection,
        account_id,
        envelope_id,
        _opts \\ []
      ) do
    %{}
    |> method(:delete)
    |> url(
      "/v2.1/accounts/#{account_id}/envelopes/#{envelope_id}/display_appliance_info/recipient_denied_copy"
    )
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Deletes signer attachment information for Display Appliance.


  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID GUID.
  - envelope_id (String.t): The envelope&#39;s GUID.   Example: &#x60;93be49ab-xxxx-xxxx-xxxx-f752070d71ec&#x60;
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec envelope_appliance_info_delete_signer_attachment(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, nil} | {:error, Tesla.Env.t()}
  def envelope_appliance_info_delete_signer_attachment(
        connection,
        account_id,
        envelope_id,
        _opts \\ []
      ) do
    %{}
    |> method(:delete)
    |> url(
      "/v2.1/accounts/#{account_id}/envelopes/#{envelope_id}/display_appliance_info/signer_attachment_info"
    )
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Returns envelope account information for Display Appliance.


  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID GUID.
  - envelope_id (String.t): The envelope&#39;s GUID.   Example: &#x60;93be49ab-xxxx-xxxx-xxxx-f752070d71ec&#x60;
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %DocuSign.Model.DisplayApplianceAccount{}} on success
  {:error, info} on failure
  """
  @spec envelope_appliance_info_get_account(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, DocuSign.Model.DisplayApplianceAccount.t()} | {:error, Tesla.Env.t()}
  def envelope_appliance_info_get_account(connection, account_id, envelope_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url(
      "/v2.1/accounts/#{account_id}/envelopes/#{envelope_id}/display_appliance_info/account_info"
    )
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.DisplayApplianceAccount{})
  end

  @doc """
  Returns envelope and recipient information for Display Appliance.


  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID GUID.
  - envelope_id (String.t): The envelope&#39;s GUID.   Example: &#x60;93be49ab-xxxx-xxxx-xxxx-f752070d71ec&#x60;
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %DocuSign.Model.DisplayApplianceInfo{}} on success
  {:error, info} on failure
  """
  @spec envelope_appliance_info_get_appliance_info(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, DocuSign.Model.DisplayApplianceInfo.t()} | {:error, Tesla.Env.t()}
  def envelope_appliance_info_get_appliance_info(connection, account_id, envelope_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/v2.1/accounts/#{account_id}/envelopes/#{envelope_id}/display_appliance_info")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.DisplayApplianceInfo{})
  end

  @doc """
  Return custom fields information for Display Appliance.


  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID GUID.
  - envelope_id (String.t): The envelope&#39;s GUID.   Example: &#x60;93be49ab-xxxx-xxxx-xxxx-f752070d71ec&#x60;
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %DocuSign.Model.DisplayApplianceInfo{}} on success
  {:error, info} on failure
  """
  @spec envelope_appliance_info_get_custom_fields(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, DocuSign.Model.DisplayApplianceInfo.t()} | {:error, Tesla.Env.t()}
  def envelope_appliance_info_get_custom_fields(connection, account_id, envelope_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url(
      "/v2.1/accounts/#{account_id}/envelopes/#{envelope_id}/display_appliance_info/custom_fields"
    )
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.DisplayApplianceInfo{})
  end

  @doc """
  Gets date signed information for Display Appliance.


  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID GUID.
  - envelope_id (String.t): The envelope&#39;s GUID.   Example: &#x60;93be49ab-xxxx-xxxx-xxxx-f752070d71ec&#x60;
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %DocuSign.Model.DisplayApplianceInfo{}} on success
  {:error, info} on failure
  """
  @spec envelope_appliance_info_get_date_signed(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, DocuSign.Model.DisplayApplianceInfo.t()} | {:error, Tesla.Env.t()}
  def envelope_appliance_info_get_date_signed(connection, account_id, envelope_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url(
      "/v2.1/accounts/#{account_id}/envelopes/#{envelope_id}/display_appliance_info/date_signed"
    )
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.DisplayApplianceInfo{})
  end

  @doc """
  Return document pages for Display Appliance.


  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID GUID.
  - envelope_id (String.t): The envelope&#39;s GUID.   Example: &#x60;93be49ab-xxxx-xxxx-xxxx-f752070d71ec&#x60;
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %DocuSign.Model.DisplayApplianceInfo{}} on success
  {:error, info} on failure
  """
  @spec envelope_appliance_info_get_document_pages(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, DocuSign.Model.DisplayApplianceInfo.t()} | {:error, Tesla.Env.t()}
  def envelope_appliance_info_get_document_pages(connection, account_id, envelope_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url(
      "/v2.1/accounts/#{account_id}/envelopes/#{envelope_id}/display_appliance_info/document_page_list"
    )
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.DisplayApplianceInfo{})
  end

  @doc """
  Returns document pages for Display Appliance.


  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID GUID.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %DocuSign.Model.DisplayApplianceInfo{}} on success
  {:error, info} on failure
  """
  @spec envelope_appliance_info_get_dynamic_system_settings(
          Tesla.Env.client(),
          String.t(),
          keyword()
        ) :: {:ok, DocuSign.Model.DisplayApplianceInfo.t()} | {:error, Tesla.Env.t()}
  def envelope_appliance_info_get_dynamic_system_settings(connection, account_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/v2.1/accounts/#{account_id}/display_appliance_info/dynamicsystemsettings")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.DisplayApplianceInfo{})
  end

  @doc """
  Returns images for Display Appliance.


  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID GUID.
  - envelope_id (String.t): The envelope&#39;s GUID.   Example: &#x60;93be49ab-xxxx-xxxx-xxxx-f752070d71ec&#x60;
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %DocuSign.Model.DisplayApplianceInfo{}} on success
  {:error, info} on failure
  """
  @spec envelope_appliance_info_get_image(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, DocuSign.Model.DisplayApplianceInfo.t()} | {:error, Tesla.Env.t()}
  def envelope_appliance_info_get_image(connection, account_id, envelope_id, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/v2.1/accounts/#{account_id}/envelopes/#{envelope_id}/display_appliance_info/image")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.DisplayApplianceInfo{})
  end

  @doc """
  Returns locale policy information for Display Appliance.


  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID GUID.
  - envelope_id (String.t): The envelope&#39;s GUID.   Example: &#x60;93be49ab-xxxx-xxxx-xxxx-f752070d71ec&#x60;
  - user_id (String.t): The ID of the user to access. Generally this is the ID of the current authenticated user, but if the authenticated user is an Administrator on the account, &#x60;userId&#x60; can represent another user whom the Administrator is accessing.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %DocuSign.Model.DisplayApplianceInfo{}} on success
  {:error, info} on failure
  """
  @spec envelope_appliance_info_get_locale_policy(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, DocuSign.Model.DisplayApplianceInfo.t()} | {:error, Tesla.Env.t()}
  def envelope_appliance_info_get_locale_policy(
        connection,
        account_id,
        envelope_id,
        user_id,
        _opts \\ []
      ) do
    %{}
    |> method(:post)
    |> url(
      "/v2.1/accounts/#{account_id}/envelopes/#{envelope_id}/display_appliance_info/localepolicy/#{
        user_id
      }"
    )
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.DisplayApplianceInfo{})
  end

  @doc """
  Return PDF for Display Appliance.


  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID GUID.
  - envelope_id (String.t): The envelope&#39;s GUID.   Example: &#x60;93be49ab-xxxx-xxxx-xxxx-f752070d71ec&#x60;
  - pdf_id (String.t): **Deprecated**.   The &#x60;pdfId&#x60; property in the consumer_disclosure PUT request is deprecated. For security reasons going forward, any value provided in the request packet must be ignored.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %DocuSign.Model.DisplayAppliancePdf{}} on success
  {:error, info} on failure
  """
  @spec envelope_appliance_info_get_pdf(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, DocuSign.Model.DisplayAppliancePdf.t()} | {:error, Tesla.Env.t()}
  def envelope_appliance_info_get_pdf(connection, account_id, envelope_id, pdf_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url(
      "/v2.1/accounts/#{account_id}/envelopes/#{envelope_id}/display_appliance_info/pdf/#{pdf_id}"
    )
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.DisplayAppliancePdf{})
  end

  @doc """
  Returns PDF blobs for Display Appliance.


  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID GUID.
  - envelope_id (String.t): The envelope&#39;s GUID.   Example: &#x60;93be49ab-xxxx-xxxx-xxxx-f752070d71ec&#x60;
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %DocuSign.Model.DisplayAppliancePdf{}} on success
  {:error, info} on failure
  """
  @spec envelope_appliance_info_get_pdf_blob(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, DocuSign.Model.DisplayAppliancePdf.t()} | {:error, Tesla.Env.t()}
  def envelope_appliance_info_get_pdf_blob(connection, account_id, envelope_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url(
      "/v2.1/accounts/#{account_id}/envelopes/#{envelope_id}/display_appliance_info/pdf_blobs"
    )
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.DisplayAppliancePdf{})
  end

  @doc """
  Returns signer attachment information for Display Appliance.


  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID GUID.
  - envelope_id (String.t): The envelope&#39;s GUID.   Example: &#x60;93be49ab-xxxx-xxxx-xxxx-f752070d71ec&#x60;
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %DocuSign.Model.DisplayApplianceSignerAttachment{}} on success
  {:error, info} on failure
  """
  @spec envelope_appliance_info_get_signer_attachment(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword()
        ) ::
          {:ok, DocuSign.Model.DisplayApplianceSignerAttachment.t()}
          | {:error, Tesla.Env.t()}
  def envelope_appliance_info_get_signer_attachment(
        connection,
        account_id,
        envelope_id,
        _opts \\ []
      ) do
    %{}
    |> method(:get)
    |> url(
      "/v2.1/accounts/#{account_id}/envelopes/#{envelope_id}/display_appliance_info/signer_attachment_info"
    )
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.DisplayApplianceSignerAttachment{})
  end

  @doc """
  Returns whether a template was encrypted by Display Appliance.


  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID GUID.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %DocuSign.Model.DisplayApplianceInfo{}} on success
  {:error, info} on failure
  """
  @spec envelope_appliance_info_get_template_info(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, DocuSign.Model.DisplayApplianceInfo.t()} | {:error, Tesla.Env.t()}
  def envelope_appliance_info_get_template_info(connection, account_id, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/v2.1/accounts/#{account_id}/display_appliance_info/templateInfo")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.DisplayApplianceInfo{})
  end

  @doc """
  Uploads Kazmon error for Display Appliance.


  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec envelope_appliance_info_post_error(Tesla.Env.client(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def envelope_appliance_info_post_error(connection, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/v2.1/display_appliance_info/error")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Creates page information for Display Appliance.


  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID GUID.
  - envelope_id (String.t): The envelope&#39;s GUID.   Example: &#x60;93be49ab-xxxx-xxxx-xxxx-f752070d71ec&#x60;
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec envelope_appliance_info_post_page_info(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, nil} | {:error, Tesla.Env.t()}
  def envelope_appliance_info_post_page_info(connection, account_id, envelope_id, _opts \\ []) do
    %{}
    |> method(:post)
    |> url(
      "/v2.1/accounts/#{account_id}/envelopes/#{envelope_id}/display_appliance_info/page_info"
    )
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Adds PDF blobs for Display Appliance.


  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID GUID.
  - envelope_id (String.t): The envelope&#39;s GUID.   Example: &#x60;93be49ab-xxxx-xxxx-xxxx-f752070d71ec&#x60;
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %DocuSign.Model.DisplayAppliancePdf{}} on success
  {:error, info} on failure
  """
  @spec envelope_appliance_info_post_pdf_blob(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, DocuSign.Model.DisplayAppliancePdf.t()} | {:error, Tesla.Env.t()}
  def envelope_appliance_info_post_pdf_blob(connection, account_id, envelope_id, _opts \\ []) do
    %{}
    |> method(:post)
    |> url(
      "/v2.1/accounts/#{account_id}/envelopes/#{envelope_id}/display_appliance_info/pdf_blobs"
    )
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.DisplayAppliancePdf{})
  end

  @doc """
  Returns signing URL for Display Appliance.


  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %DocuSign.Model.DisplayApplianceInfo{}} on success
  {:error, info} on failure
  """
  @spec envelope_appliance_info_post_redeem(Tesla.Env.client(), keyword()) ::
          {:ok, DocuSign.Model.DisplayApplianceInfo.t()} | {:error, Tesla.Env.t()}
  def envelope_appliance_info_post_redeem(connection, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/v2.1/display_appliance_info/redeem")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.DisplayApplianceInfo{})
  end

  @doc """
  Updates document information for Display Applianc.


  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID GUID.
  - document_id (String.t): The &#x60;documentId&#x60; is set by the API client. It is an integer that falls between &#x60;1&#x60; and 2,147,483,647. The value is encoded as a string without commas. The values &#x60;1&#x60;, &#x60;2&#x60;, &#x60;3&#x60;, and so on are typically used to identify the first few documents in an envelope. Tab definitions include a &#x60;documentId&#x60; property that specifies the document on which to place the tab.
  - envelope_id (String.t): The envelope&#39;s GUID.   Example: &#x60;93be49ab-xxxx-xxxx-xxxx-f752070d71ec&#x60;
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec envelope_appliance_info_put_document(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, nil} | {:error, Tesla.Env.t()}
  def envelope_appliance_info_put_document(
        connection,
        account_id,
        document_id,
        envelope_id,
        _opts \\ []
      ) do
    %{}
    |> method(:put)
    |> url(
      "/v2.1/accounts/#{account_id}/envelopes/#{envelope_id}/display_appliance_info/document/#{
        document_id
      }"
    )
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Updates page information for Display Appliance.


  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID GUID.
  - envelope_id (String.t): The envelope&#39;s GUID.   Example: &#x60;93be49ab-xxxx-xxxx-xxxx-f752070d71ec&#x60;
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec envelope_appliance_info_put_page_info(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, nil} | {:error, Tesla.Env.t()}
  def envelope_appliance_info_put_page_info(connection, account_id, envelope_id, _opts \\ []) do
    %{}
    |> method(:put)
    |> url(
      "/v2.1/accounts/#{account_id}/envelopes/#{envelope_id}/display_appliance_info/page_info"
    )
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Sets latest PDF for Display Appliance.


  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID GUID.
  - envelope_id (String.t): The envelope&#39;s GUID.   Example: &#x60;93be49ab-xxxx-xxxx-xxxx-f752070d71ec&#x60;
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %DocuSign.Model.DisplayAppliancePdf{}} on success
  {:error, info} on failure
  """
  @spec envelope_appliance_info_put_pdf(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, DocuSign.Model.DisplayAppliancePdf.t()} | {:error, Tesla.Env.t()}
  def envelope_appliance_info_put_pdf(connection, account_id, envelope_id, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/v2.1/accounts/#{account_id}/envelopes/#{envelope_id}/display_appliance_info/pdf")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.DisplayAppliancePdf{})
  end

  @doc """
  Updates PDF blobs for Display Appliance.


  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID GUID.
  - envelope_id (String.t): The envelope&#39;s GUID.   Example: &#x60;93be49ab-xxxx-xxxx-xxxx-f752070d71ec&#x60;
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec envelope_appliance_info_put_pdf_blob(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, nil} | {:error, Tesla.Env.t()}
  def envelope_appliance_info_put_pdf_blob(connection, account_id, envelope_id, _opts \\ []) do
    %{}
    |> method(:put)
    |> url(
      "/v2.1/accounts/#{account_id}/envelopes/#{envelope_id}/display_appliance_info/pdf_blobs"
    )
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Updates RecipientDeniedDocumentCopy for Display Appliance.


  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID GUID.
  - envelope_id (String.t): The envelope&#39;s GUID.   Example: &#x60;93be49ab-xxxx-xxxx-xxxx-f752070d71ec&#x60;
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec envelope_appliance_info_put_recipient_denied_document_copy(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, nil} | {:error, Tesla.Env.t()}
  def envelope_appliance_info_put_recipient_denied_document_copy(
        connection,
        account_id,
        envelope_id,
        _opts \\ []
      ) do
    %{}
    |> method(:put)
    |> url(
      "/v2.1/accounts/#{account_id}/envelopes/#{envelope_id}/display_appliance_info/recipient_denied_copy"
    )
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end
end
