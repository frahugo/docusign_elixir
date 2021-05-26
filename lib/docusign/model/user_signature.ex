# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.UserSignature do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :adoptedDateTime,
    :createdDateTime,
    :customField,
    :dateStampProperties,
    :disallowUserResizeStamp,
    :errorDetails,
    :externalID,
    :imageBase64,
    :imageType,
    :initials150ImageId,
    :initialsImageUri,
    :isDefault,
    :lastModifiedDateTime,
    :nrdsId,
    :nrdsLastName,
    :nrdsStatus,
    :phoneticName,
    :signature150ImageId,
    :signatureFont,
    :signatureId,
    :signatureImageUri,
    :signatureInitials,
    :signatureName,
    :signatureRights,
    :signatureType,
    :stampFormat,
    :stampImageUri,
    :stampSizeMM,
    :stampType,
    :status
  ]

  @type t :: %__MODULE__{
          :adoptedDateTime => String.t(),
          :createdDateTime => String.t(),
          :customField => String.t(),
          :dateStampProperties => DateStampProperties,
          :disallowUserResizeStamp => String.t(),
          :errorDetails => ErrorDetails,
          :externalID => String.t(),
          :imageBase64 => String.t(),
          :imageType => String.t(),
          :initials150ImageId => String.t(),
          :initialsImageUri => String.t(),
          :isDefault => String.t(),
          :lastModifiedDateTime => String.t(),
          :nrdsId => String.t(),
          :nrdsLastName => String.t(),
          :nrdsStatus => String.t(),
          :phoneticName => String.t(),
          :signature150ImageId => String.t(),
          :signatureFont => String.t(),
          :signatureId => String.t(),
          :signatureImageUri => String.t(),
          :signatureInitials => String.t(),
          :signatureName => String.t(),
          :signatureRights => String.t(),
          :signatureType => String.t(),
          :stampFormat => String.t(),
          :stampImageUri => String.t(),
          :stampSizeMM => String.t(),
          :stampType => String.t(),
          :status => String.t()
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.UserSignature do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(
      :dateStampProperties,
      :struct,
      DocuSign.Model.DateStampProperties,
      options
    )
    |> deserialize(:errorDetails, :struct, DocuSign.Model.ErrorDetails, options)
  end
end
