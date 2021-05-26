# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.BulkSendingListSummaries do
  @moduledoc """
  This complex type contains summaries that provide basic information about the bulk send lists that belong to the current user.
  """

  @derive [Poison.Encoder]
  defstruct [
    :bulkListSummaries
  ]

  @type t :: %__MODULE__{
          :bulkListSummaries => [BulkSendingListSummary]
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.BulkSendingListSummaries do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(
      :bulkListSummaries,
      :list,
      DocuSign.Model.BulkSendingListSummary,
      options
    )
  end
end
