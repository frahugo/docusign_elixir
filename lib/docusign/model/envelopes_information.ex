# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.EnvelopesInformation do
  @moduledoc """
  Result set for the Envelopes: listStatusChanges method
  """

  @derive [Poison.Encoder]
  defstruct [
    :continuationToken,
    :endPosition,
    :envelopes,
    :envelopeTransactionStatuses,
    :folders,
    :lastQueriedDateTime,
    :resultSetSize,
    :startPosition,
    :totalSetSize
  ]

  @type t :: %__MODULE__{
          :continuationToken => String.t(),
          :endPosition => String.t(),
          :envelopes => [Envelope],
          :envelopeTransactionStatuses => [EnvelopeTransactionStatus],
          :folders => [Folder],
          :lastQueriedDateTime => String.t(),
          :resultSetSize => String.t(),
          :startPosition => String.t(),
          :totalSetSize => String.t()
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.EnvelopesInformation do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:envelopes, :list, DocuSign.Model.Envelope, options)
    |> deserialize(
      :envelopeTransactionStatuses,
      :list,
      DocuSign.Model.EnvelopeTransactionStatus,
      options
    )
    |> deserialize(:folders, :list, DocuSign.Model.Folder, options)
  end
end
