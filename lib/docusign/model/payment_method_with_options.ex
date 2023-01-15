# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DocuSign.Model.PaymentMethodWithOptions do
  @moduledoc """
  This object contains information about a payment method that the gateway accepts and the payment options that are compatible with it.
  """

  @derive [Poison.Encoder]
  defstruct [
    :supportedCurrencies,
    :supportedOptions,
    :type
  ]

  @type t :: %__MODULE__{
          :supportedCurrencies => [String.t()] | nil,
          :supportedOptions => [String.t()] | nil,
          :type => String.t() | nil
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.PaymentMethodWithOptions do
  def decode(value, _options) do
    value
  end
end