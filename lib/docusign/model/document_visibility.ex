# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DocuSign.Model.DocumentVisibility do
  @moduledoc """
  This object configures a recipient's read/write access to a document.
  """

  @derive [Poison.Encoder]
  defstruct [
    :documentId,
    :errorDetails,
    :recipientId,
    :rights,
    :visible
  ]

  @type t :: %__MODULE__{
          :documentId => String.t() | nil,
          :errorDetails => DocuSign.Model.ErrorDetails.t() | nil,
          :recipientId => String.t() | nil,
          :rights => String.t() | nil,
          :visible => String.t() | nil
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.DocumentVisibility do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:errorDetails, :struct, DocuSign.Model.ErrorDetails, options)
  end
end
