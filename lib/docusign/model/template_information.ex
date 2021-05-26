# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.TemplateInformation do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :templates
  ]

  @type t :: %__MODULE__{
          :templates => [TemplateSummary]
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.TemplateInformation do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:templates, :list, DocuSign.Model.TemplateSummary, options)
  end
end
