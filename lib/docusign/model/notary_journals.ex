# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DocuSign.Model.NotaryJournals do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :createdDate,
    :documentName,
    :jurisdiction,
    :notaryJournalId,
    :notaryJournalMetaData,
    :signerName
  ]

  @type t :: %__MODULE__{
          :createdDate => String.t() | nil,
          :documentName => String.t() | nil,
          :jurisdiction => DocuSign.Model.Jurisdiction.t() | nil,
          :notaryJournalId => String.t() | nil,
          :notaryJournalMetaData => DocuSign.Model.NotaryJournalMetaData.t() | nil,
          :signerName => String.t() | nil
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.NotaryJournals do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:jurisdiction, :struct, DocuSign.Model.Jurisdiction, options)
    |> deserialize(:notaryJournalMetaData, :struct, DocuSign.Model.NotaryJournalMetaData, options)
  end
end
