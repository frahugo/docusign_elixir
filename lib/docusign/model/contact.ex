# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.Contact do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :cloudProvider,
    :cloudProviderContainerId,
    :contactId,
    :contactPhoneNumbers,
    :contactUri,
    :emails,
    :errorDetails,
    :isOwner,
    :name,
    :organization,
    :shared,
    :signingGroup,
    :signingGroupName
  ]

  @type t :: %__MODULE__{
          :cloudProvider => String.t(),
          :cloudProviderContainerId => String.t(),
          :contactId => String.t(),
          :contactPhoneNumbers => [ContactPhoneNumber],
          :contactUri => String.t(),
          :emails => [String.t()],
          :errorDetails => ErrorDetails,
          :isOwner => boolean(),
          :name => String.t(),
          :organization => String.t(),
          :shared => String.t(),
          :signingGroup => String.t(),
          :signingGroupName => String.t()
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.Contact do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:contactPhoneNumbers, :list, DocuSign.Model.ContactPhoneNumber, options)
    |> deserialize(:errorDetails, :struct, DocuSign.Model.ErrorDetails, options)
  end
end
