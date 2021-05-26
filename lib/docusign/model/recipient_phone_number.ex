# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.RecipientPhoneNumber do
  @moduledoc """
  Describes the recipient phone number.
  """

  @derive [Poison.Encoder]
  defstruct [
    :countryCode,
    :countryCodeMetadata,
    :number,
    :numberMetadata
  ]

  @type t :: %__MODULE__{
          :countryCode => String.t(),
          :countryCodeMetadata => PropertyMetadata,
          :number => String.t(),
          :numberMetadata => PropertyMetadata
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.RecipientPhoneNumber do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:countryCodeMetadata, :struct, DocuSign.Model.PropertyMetadata, options)
    |> deserialize(:numberMetadata, :struct, DocuSign.Model.PropertyMetadata, options)
  end
end
