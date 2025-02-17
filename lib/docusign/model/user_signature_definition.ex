# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DocuSign.Model.UserSignatureDefinition do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :dateStampProperties,
    :disallowUserResizeStamp,
    :externalID,
    :imageType,
    :isDefault,
    :nrdsId,
    :nrdsLastName,
    :phoneticName,
    :signatureFont,
    :signatureId,
    :signatureInitials,
    :signatureName,
    :signatureType,
    :stampFormat,
    :stampSizeMM
  ]

  @type t :: %__MODULE__{
          :dateStampProperties => DocuSign.Model.DateStampProperties.t() | nil,
          :disallowUserResizeStamp => String.t() | nil,
          :externalID => String.t() | nil,
          :imageType => String.t() | nil,
          :isDefault => String.t() | nil,
          :nrdsId => String.t() | nil,
          :nrdsLastName => String.t() | nil,
          :phoneticName => String.t() | nil,
          :signatureFont => String.t() | nil,
          :signatureId => String.t() | nil,
          :signatureInitials => String.t() | nil,
          :signatureName => String.t() | nil,
          :signatureType => String.t() | nil,
          :stampFormat => String.t() | nil,
          :stampSizeMM => String.t() | nil
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.UserSignatureDefinition do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:dateStampProperties, :struct, DocuSign.Model.DateStampProperties, options)
  end
end
