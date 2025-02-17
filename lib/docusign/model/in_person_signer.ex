# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DocuSign.Model.InPersonSigner do
  @moduledoc """
  Contains information about an in-person recipient. This is a DocuSign user, acting as a Signing Host, who is in the same physical location as the signer. To learn about the fields used for the eNotary feature, see the [EnvelopeRecipients resource][resource].  [resource]: /docs/esign-rest-api/reference/envelopes/enveloperecipients/#in-person-signer-recipient 
  """

  @derive [Poison.Encoder]
  defstruct [
    :accessCode,
    :accessCodeMetadata,
    :addAccessCodeToEmail,
    :allowSystemOverrideForLockedRecipient,
    :autoNavigation,
    :autoRespondedReason,
    :canSignOffline,
    :clientUserId,
    :completedCount,
    :creationReason,
    :customFields,
    :declinedDateTime,
    :declinedReason,
    :defaultRecipient,
    :deliveredDateTime,
    :deliveryMethod,
    :deliveryMethodMetadata,
    :designatorId,
    :designatorIdGuid,
    :documentVisibility,
    :email,
    :emailMetadata,
    :emailNotification,
    :embeddedRecipientStartURL,
    :errorDetails,
    :excludedDocuments,
    :faxNumber,
    :faxNumberMetadata,
    :hostEmail,
    :hostEmailMetadata,
    :hostName,
    :hostNameMetadata,
    :idCheckConfigurationName,
    :idCheckConfigurationNameMetadata,
    :idCheckInformationInput,
    :identityVerification,
    :inheritEmailNotificationConfiguration,
    :inPersonSigningType,
    :inPersonSigningTypeMetadata,
    :lockedRecipientPhoneAuthEditable,
    :lockedRecipientSmsEditable,
    :name,
    :nameMetadata,
    :notaryHost,
    :notaryId,
    :note,
    :noteMetadata,
    :phoneAuthentication,
    :recipientAttachments,
    :recipientAuthenticationStatus,
    :recipientFeatureMetadata,
    :recipientId,
    :recipientIdGuid,
    :recipientSignatureProviders,
    :recipientSuppliesTabs,
    :recipientType,
    :recipientTypeMetadata,
    :requireIdLookup,
    :requireIdLookupMetadata,
    :requireSignerCertificate,
    :requireSignOnPaper,
    :requireUploadSignature,
    :roleName,
    :routingOrder,
    :routingOrderMetadata,
    :sentDateTime,
    :signatureInfo,
    :signedDateTime,
    :signerEmail,
    :signerEmailMetadata,
    :signerFirstName,
    :signerFirstNameMetadata,
    :signerLastName,
    :signerLastNameMetadata,
    :signerName,
    :signerNameMetadata,
    :signInEachLocation,
    :signInEachLocationMetadata,
    :signingGroupId,
    :signingGroupIdMetadata,
    :signingGroupName,
    :signingGroupUsers,
    :smsAuthentication,
    :socialAuthentications,
    :status,
    :statusCode,
    :suppressEmails,
    :tabs,
    :templateLocked,
    :templateRequired,
    :totalTabCount,
    :userId
  ]

  @type t :: %__MODULE__{
          :accessCode => String.t() | nil,
          :accessCodeMetadata => DocuSign.Model.PropertyMetadata.t() | nil,
          :addAccessCodeToEmail => String.t() | nil,
          :allowSystemOverrideForLockedRecipient => String.t() | nil,
          :autoNavigation => String.t() | nil,
          :autoRespondedReason => String.t() | nil,
          :canSignOffline => String.t() | nil,
          :clientUserId => String.t() | nil,
          :completedCount => String.t() | nil,
          :creationReason => String.t() | nil,
          :customFields => [String.t()] | nil,
          :declinedDateTime => String.t() | nil,
          :declinedReason => String.t() | nil,
          :defaultRecipient => String.t() | nil,
          :deliveredDateTime => String.t() | nil,
          :deliveryMethod => String.t() | nil,
          :deliveryMethodMetadata => DocuSign.Model.PropertyMetadata.t() | nil,
          :designatorId => String.t() | nil,
          :designatorIdGuid => String.t() | nil,
          :documentVisibility => [DocuSign.Model.DocumentVisibility.t()] | nil,
          :email => String.t() | nil,
          :emailMetadata => DocuSign.Model.PropertyMetadata.t() | nil,
          :emailNotification => DocuSign.Model.RecipientEmailNotification.t() | nil,
          :embeddedRecipientStartURL => String.t() | nil,
          :errorDetails => DocuSign.Model.ErrorDetails.t() | nil,
          :excludedDocuments => [String.t()] | nil,
          :faxNumber => String.t() | nil,
          :faxNumberMetadata => DocuSign.Model.PropertyMetadata.t() | nil,
          :hostEmail => String.t() | nil,
          :hostEmailMetadata => DocuSign.Model.PropertyMetadata.t() | nil,
          :hostName => String.t() | nil,
          :hostNameMetadata => DocuSign.Model.PropertyMetadata.t() | nil,
          :idCheckConfigurationName => String.t() | nil,
          :idCheckConfigurationNameMetadata => DocuSign.Model.PropertyMetadata.t() | nil,
          :idCheckInformationInput => DocuSign.Model.IdCheckInformationInput.t() | nil,
          :identityVerification => DocuSign.Model.RecipientIdentityVerification.t() | nil,
          :inheritEmailNotificationConfiguration => String.t() | nil,
          :inPersonSigningType => String.t() | nil,
          :inPersonSigningTypeMetadata => DocuSign.Model.PropertyMetadata.t() | nil,
          :lockedRecipientPhoneAuthEditable => String.t() | nil,
          :lockedRecipientSmsEditable => String.t() | nil,
          :name => String.t() | nil,
          :nameMetadata => DocuSign.Model.PropertyMetadata.t() | nil,
          :notaryHost => DocuSign.Model.NotaryHost.t() | nil,
          :notaryId => String.t() | nil,
          :note => String.t() | nil,
          :noteMetadata => DocuSign.Model.PropertyMetadata.t() | nil,
          :phoneAuthentication => DocuSign.Model.RecipientPhoneAuthentication.t() | nil,
          :recipientAttachments => [DocuSign.Model.RecipientAttachment.t()] | nil,
          :recipientAuthenticationStatus => DocuSign.Model.AuthenticationStatus.t() | nil,
          :recipientFeatureMetadata => [DocuSign.Model.FeatureAvailableMetadata.t()] | nil,
          :recipientId => String.t() | nil,
          :recipientIdGuid => String.t() | nil,
          :recipientSignatureProviders => [DocuSign.Model.RecipientSignatureProvider.t()] | nil,
          :recipientSuppliesTabs => String.t() | nil,
          :recipientType => String.t() | nil,
          :recipientTypeMetadata => DocuSign.Model.PropertyMetadata.t() | nil,
          :requireIdLookup => String.t() | nil,
          :requireIdLookupMetadata => DocuSign.Model.PropertyMetadata.t() | nil,
          :requireSignerCertificate => String.t() | nil,
          :requireSignOnPaper => String.t() | nil,
          :requireUploadSignature => String.t() | nil,
          :roleName => String.t() | nil,
          :routingOrder => String.t() | nil,
          :routingOrderMetadata => DocuSign.Model.PropertyMetadata.t() | nil,
          :sentDateTime => String.t() | nil,
          :signatureInfo => DocuSign.Model.RecipientSignatureInformation.t() | nil,
          :signedDateTime => String.t() | nil,
          :signerEmail => String.t() | nil,
          :signerEmailMetadata => DocuSign.Model.PropertyMetadata.t() | nil,
          :signerFirstName => String.t() | nil,
          :signerFirstNameMetadata => DocuSign.Model.PropertyMetadata.t() | nil,
          :signerLastName => String.t() | nil,
          :signerLastNameMetadata => DocuSign.Model.PropertyMetadata.t() | nil,
          :signerName => String.t() | nil,
          :signerNameMetadata => DocuSign.Model.PropertyMetadata.t() | nil,
          :signInEachLocation => String.t() | nil,
          :signInEachLocationMetadata => DocuSign.Model.PropertyMetadata.t() | nil,
          :signingGroupId => String.t() | nil,
          :signingGroupIdMetadata => DocuSign.Model.PropertyMetadata.t() | nil,
          :signingGroupName => String.t() | nil,
          :signingGroupUsers => [DocuSign.Model.UserInfo.t()] | nil,
          :smsAuthentication => DocuSign.Model.RecipientSmsAuthentication.t() | nil,
          :socialAuthentications => [DocuSign.Model.SocialAuthentication.t()] | nil,
          :status => String.t() | nil,
          :statusCode => String.t() | nil,
          :suppressEmails => String.t() | nil,
          :tabs => DocuSign.Model.EnvelopeRecipientTabs.t() | nil,
          :templateLocked => String.t() | nil,
          :templateRequired => String.t() | nil,
          :totalTabCount => String.t() | nil,
          :userId => String.t() | nil
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.InPersonSigner do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:accessCodeMetadata, :struct, DocuSign.Model.PropertyMetadata, options)
    |> deserialize(:deliveryMethodMetadata, :struct, DocuSign.Model.PropertyMetadata, options)
    |> deserialize(:documentVisibility, :list, DocuSign.Model.DocumentVisibility, options)
    |> deserialize(:emailMetadata, :struct, DocuSign.Model.PropertyMetadata, options)
    |> deserialize(
      :emailNotification,
      :struct,
      DocuSign.Model.RecipientEmailNotification,
      options
    )
    |> deserialize(:errorDetails, :struct, DocuSign.Model.ErrorDetails, options)
    |> deserialize(:faxNumberMetadata, :struct, DocuSign.Model.PropertyMetadata, options)
    |> deserialize(:hostEmailMetadata, :struct, DocuSign.Model.PropertyMetadata, options)
    |> deserialize(:hostNameMetadata, :struct, DocuSign.Model.PropertyMetadata, options)
    |> deserialize(
      :idCheckConfigurationNameMetadata,
      :struct,
      DocuSign.Model.PropertyMetadata,
      options
    )
    |> deserialize(
      :idCheckInformationInput,
      :struct,
      DocuSign.Model.IdCheckInformationInput,
      options
    )
    |> deserialize(
      :identityVerification,
      :struct,
      DocuSign.Model.RecipientIdentityVerification,
      options
    )
    |> deserialize(
      :inPersonSigningTypeMetadata,
      :struct,
      DocuSign.Model.PropertyMetadata,
      options
    )
    |> deserialize(:nameMetadata, :struct, DocuSign.Model.PropertyMetadata, options)
    |> deserialize(:notaryHost, :struct, DocuSign.Model.NotaryHost, options)
    |> deserialize(:noteMetadata, :struct, DocuSign.Model.PropertyMetadata, options)
    |> deserialize(
      :phoneAuthentication,
      :struct,
      DocuSign.Model.RecipientPhoneAuthentication,
      options
    )
    |> deserialize(:recipientAttachments, :list, DocuSign.Model.RecipientAttachment, options)
    |> deserialize(
      :recipientAuthenticationStatus,
      :struct,
      DocuSign.Model.AuthenticationStatus,
      options
    )
    |> deserialize(
      :recipientFeatureMetadata,
      :list,
      DocuSign.Model.FeatureAvailableMetadata,
      options
    )
    |> deserialize(
      :recipientSignatureProviders,
      :list,
      DocuSign.Model.RecipientSignatureProvider,
      options
    )
    |> deserialize(:recipientTypeMetadata, :struct, DocuSign.Model.PropertyMetadata, options)
    |> deserialize(:requireIdLookupMetadata, :struct, DocuSign.Model.PropertyMetadata, options)
    |> deserialize(:routingOrderMetadata, :struct, DocuSign.Model.PropertyMetadata, options)
    |> deserialize(:signatureInfo, :struct, DocuSign.Model.RecipientSignatureInformation, options)
    |> deserialize(:signerEmailMetadata, :struct, DocuSign.Model.PropertyMetadata, options)
    |> deserialize(:signerFirstNameMetadata, :struct, DocuSign.Model.PropertyMetadata, options)
    |> deserialize(:signerLastNameMetadata, :struct, DocuSign.Model.PropertyMetadata, options)
    |> deserialize(:signerNameMetadata, :struct, DocuSign.Model.PropertyMetadata, options)
    |> deserialize(:signInEachLocationMetadata, :struct, DocuSign.Model.PropertyMetadata, options)
    |> deserialize(:signingGroupIdMetadata, :struct, DocuSign.Model.PropertyMetadata, options)
    |> deserialize(:signingGroupUsers, :list, DocuSign.Model.UserInfo, options)
    |> deserialize(
      :smsAuthentication,
      :struct,
      DocuSign.Model.RecipientSmsAuthentication,
      options
    )
    |> deserialize(:socialAuthentications, :list, DocuSign.Model.SocialAuthentication, options)
    |> deserialize(:tabs, :struct, DocuSign.Model.EnvelopeRecipientTabs, options)
  end
end
