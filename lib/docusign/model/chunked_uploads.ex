# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.ChunkedUploads do
  @moduledoc """
  The ChunkedUploads resource provides methods to complete integrity checks, and to add, commit, retrieve, initiate and delete chunked uploads.
  """

  @derive [Poison.Encoder]
  defstruct [
    :checksum,
    :chunkedUploadId,
    :chunkedUploadParts,
    :chunkedUploadUri,
    :committed,
    :expirationDateTime,
    :maxChunkedUploadParts,
    :maxTotalSize,
    :totalSize
  ]

  @type t :: %__MODULE__{
          :checksum => String.t(),
          :chunkedUploadId => String.t(),
          :chunkedUploadParts => [ChunkedUploadPart],
          :chunkedUploadUri => String.t(),
          :committed => String.t(),
          :expirationDateTime => String.t(),
          :maxChunkedUploadParts => String.t(),
          :maxTotalSize => String.t(),
          :totalSize => String.t()
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.ChunkedUploads do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:chunkedUploadParts, :list, DocuSign.Model.ChunkedUploadPart, options)
  end
end
