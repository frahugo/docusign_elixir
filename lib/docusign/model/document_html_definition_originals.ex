# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.DocumentHtmlDefinitionOriginals do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :htmlDefinitions
  ]

  @type t :: %__MODULE__{
          :htmlDefinitions => [DocumentHtmlDefinitionOriginal]
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.DocumentHtmlDefinitionOriginals do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(
      :htmlDefinitions,
      :list,
      DocuSign.Model.DocumentHtmlDefinitionOriginal,
      options
    )
  end
end
