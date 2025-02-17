# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DocuSign.Model.EnvelopeUpdateSummary do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :bulkEnvelopeStatus,
    :envelopeId,
    :errorDetails,
    :listCustomFieldUpdateResults,
    :lockInformation,
    :purgeState,
    :recipientUpdateResults,
    :tabUpdateResults,
    :textCustomFieldUpdateResults
  ]

  @type t :: %__MODULE__{
          :bulkEnvelopeStatus => DocuSign.Model.BulkEnvelopeStatus.t() | nil,
          :envelopeId => String.t() | nil,
          :errorDetails => DocuSign.Model.ErrorDetails.t() | nil,
          :listCustomFieldUpdateResults => [DocuSign.Model.ListCustomField.t()] | nil,
          :lockInformation => DocuSign.Model.EnvelopeLocks.t() | nil,
          :purgeState => String.t() | nil,
          :recipientUpdateResults => [DocuSign.Model.RecipientUpdateResponse.t()] | nil,
          :tabUpdateResults => DocuSign.Model.EnvelopeRecipientTabs.t() | nil,
          :textCustomFieldUpdateResults => [DocuSign.Model.TextCustomField.t()] | nil
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.EnvelopeUpdateSummary do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:bulkEnvelopeStatus, :struct, DocuSign.Model.BulkEnvelopeStatus, options)
    |> deserialize(:errorDetails, :struct, DocuSign.Model.ErrorDetails, options)
    |> deserialize(:listCustomFieldUpdateResults, :list, DocuSign.Model.ListCustomField, options)
    |> deserialize(:lockInformation, :struct, DocuSign.Model.EnvelopeLocks, options)
    |> deserialize(
      :recipientUpdateResults,
      :list,
      DocuSign.Model.RecipientUpdateResponse,
      options
    )
    |> deserialize(:tabUpdateResults, :struct, DocuSign.Model.EnvelopeRecipientTabs, options)
    |> deserialize(:textCustomFieldUpdateResults, :list, DocuSign.Model.TextCustomField, options)
  end
end
