# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.Reports do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :reports
  ]

  @type t :: %__MODULE__{
          :reports => [ReportInProductListItem]
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.Reports do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:reports, :list, DocuSign.Model.ReportInProductListItem, options)
  end
end
