# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.CompleteSignHashResponse do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :documents,
    :redirectionUrl,
    :remainingSignatureRequests
  ]

  @type t :: %__MODULE__{
          :documents => [SignHashDocument],
          :redirectionUrl => String.t(),
          :remainingSignatureRequests => String.t()
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.CompleteSignHashResponse do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:documents, :list, DocuSign.Model.SignHashDocument, options)
  end
end
