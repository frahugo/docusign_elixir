# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

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
          :apiKey => String.t() | nil,
          :connectConfigured => String.t() | nil,
          :eNoteConfigured => String.t() | nil,
          :organization => String.t() | nil,
          :password => String.t() | nil,
          :userName => String.t() | nil
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.ENoteConfiguration do
  def decode(value, _options) do
    value
  end
end
