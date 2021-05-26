# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.PayPalLegacySettings do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :currency,
    :partner,
    :password,
    :userName,
    :vendor
  ]

  @type t :: %__MODULE__{
          :currency => String.t(),
          :partner => String.t(),
          :password => String.t(),
          :userName => String.t(),
          :vendor => String.t()
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.PayPalLegacySettings do
  def decode(value, _options) do
    value
  end
end
