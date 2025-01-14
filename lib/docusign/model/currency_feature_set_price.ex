# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DocuSign.Model.CurrencyFeatureSetPrice do
  @moduledoc """
  Information about the price and currency associated with the feature set. Reserved for internal DocuSign use only.
  """

  @derive [Poison.Encoder]
  defstruct [
    :currencyCode,
    :currencySymbol,
    :envelopeFee,
    :fixedFee,
    :seatFee
  ]

  @type t :: %__MODULE__{
          :currencyCode => String.t() | nil,
          :currencySymbol => String.t() | nil,
          :envelopeFee => String.t() | nil,
          :fixedFee => String.t() | nil,
          :seatFee => String.t() | nil
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.CurrencyFeatureSetPrice do
  def decode(value, _options) do
    value
  end
end
