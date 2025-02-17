# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DocuSign.Model.Reminders do
  @moduledoc """
  A complex element that specifies reminder settings for the envelope.
  """

  @derive [Poison.Encoder]
  defstruct [
    :reminderDelay,
    :reminderEnabled,
    :reminderFrequency
  ]

  @type t :: %__MODULE__{
          :reminderDelay => String.t() | nil,
          :reminderEnabled => String.t() | nil,
          :reminderFrequency => String.t() | nil
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.Reminders do
  def decode(value, _options) do
    value
  end
end
