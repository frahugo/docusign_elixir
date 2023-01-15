# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DocuSign.Model.DocGenSyntaxError do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :errorCode,
    :message,
    :tagIdentifier
  ]

  @type t :: %__MODULE__{
          :errorCode => String.t() | nil,
          :message => String.t() | nil,
          :tagIdentifier => String.t() | nil
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.DocGenSyntaxError do
  def decode(value, _options) do
    value
  end
end