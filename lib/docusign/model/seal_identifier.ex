# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DocuSign.Model.SealIdentifier do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :sealDisplayName,
    :sealName
  ]

  @type t :: %__MODULE__{
          :sealDisplayName => String.t() | nil,
          :sealName => String.t() | nil
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.SealIdentifier do
  def decode(value, _options) do
    value
  end
end
