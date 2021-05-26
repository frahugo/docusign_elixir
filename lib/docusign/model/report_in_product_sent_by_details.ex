# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.ReportInProductSentByDetails do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :groups,
    :users
  ]

  @type t :: %__MODULE__{
          :groups => [Group],
          :users => [UserInfo]
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.ReportInProductSentByDetails do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:groups, :list, DocuSign.Model.Group, options)
    |> deserialize(:users, :list, DocuSign.Model.UserInfo, options)
  end
end
