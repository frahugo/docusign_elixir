# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.ENoteConfiguration do
  @moduledoc """
  This object contains information used to configure [eNote](https://www.docusign.com/products/enote) functionality. To use eNote, the Allow eNote for eOriginal account plan item must be on, and the Connect configuration for eOriginal must be set correctly.
  """

  @derive [Poison.Encoder]
  defstruct [
    :apiKey,
    :connectConfigured,
    :eNoteConfigured,
    :organization,
    :password,
    :userName
  ]

  @type t :: %__MODULE__{
          :apiKey => String.t(),
          :connectConfigured => String.t(),
          :eNoteConfigured => String.t(),
          :organization => String.t(),
          :password => String.t(),
          :userName => String.t()
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.ENoteConfiguration do
  def decode(value, _options) do
    value
  end
end
