# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DocuSign.Model.PaymentSignerValues do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :paymentOption
  ]

  @type t :: %__MODULE__{
          :paymentOption => String.t() | nil
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.PaymentSignerValues do
  def decode(value, _options) do
    value
  end
end