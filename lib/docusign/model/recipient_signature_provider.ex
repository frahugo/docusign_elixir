# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.RecipientSignatureProvider do
  @moduledoc """
  An Electronic or Standards Based Signature (digital signature) provider for the signer to use. [More information](https://developers.docusign.com/esign-rest-api/guides/standards-based-signatures).
  """

  @derive [Poison.Encoder]
  defstruct [
    :sealDocumentsWithTabsOnly,
    :sealName,
    :signatureProviderName,
    :signatureProviderNameMetadata,
    :signatureProviderOptions
  ]

  @type t :: %__MODULE__{
          :sealDocumentsWithTabsOnly => String.t(),
          :sealName => String.t(),
          :signatureProviderName => String.t(),
          :signatureProviderNameMetadata => PropertyMetadata,
          :signatureProviderOptions => RecipientSignatureProviderOptions
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.RecipientSignatureProvider do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(
      :signatureProviderNameMetadata,
      :struct,
      DocuSign.Model.PropertyMetadata,
      options
    )
    |> deserialize(
      :signatureProviderOptions,
      :struct,
      DocuSign.Model.RecipientSignatureProviderOptions,
      options
    )
  end
end
