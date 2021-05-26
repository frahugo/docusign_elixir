# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.ListItem do
  @moduledoc """
  One of the selectable items in the &#x60;listItems&#x60; property of a [&#x60;list&#x60;](https://developers.docusign.com/docs/esign-rest-api/reference/Envelopes/EnvelopeRecipientTabs/create/) tab.
  """

  @derive [Poison.Encoder]
  defstruct [
    :selected,
    :selectedMetadata,
    :text,
    :textMetadata,
    :value,
    :valueMetadata
  ]

  @type t :: %__MODULE__{
          :selected => String.t(),
          :selectedMetadata => PropertyMetadata,
          :text => String.t(),
          :textMetadata => PropertyMetadata,
          :value => String.t(),
          :valueMetadata => PropertyMetadata
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.ListItem do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:selectedMetadata, :struct, DocuSign.Model.PropertyMetadata, options)
    |> deserialize(:textMetadata, :struct, DocuSign.Model.PropertyMetadata, options)
    |> deserialize(:valueMetadata, :struct, DocuSign.Model.PropertyMetadata, options)
  end
end
