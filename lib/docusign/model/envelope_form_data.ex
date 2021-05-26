# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.EnvelopeFormData do
  @moduledoc """
  This object contains the data that recipients have entered into the form fields associated with an envelope.
  """

  @derive [Poison.Encoder]
  defstruct [
    :emailSubject,
    :envelopeId,
    :formData,
    :prefillFormData,
    :recipientFormData,
    :sentDateTime,
    :status
  ]

  @type t :: %__MODULE__{
          :emailSubject => String.t(),
          :envelopeId => String.t(),
          :formData => [FormDataItem],
          :prefillFormData => [FormDataItem],
          :recipientFormData => [RecipientFormData],
          :sentDateTime => String.t(),
          :status => String.t()
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.EnvelopeFormData do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:formData, :list, DocuSign.Model.FormDataItem, options)
    |> deserialize(:prefillFormData, :list, DocuSign.Model.FormDataItem, options)
    |> deserialize(:recipientFormData, :list, DocuSign.Model.RecipientFormData, options)
  end
end
