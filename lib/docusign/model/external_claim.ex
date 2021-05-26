# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.ExternalClaim do
  @moduledoc """
   Claims about the user from an external provider. This object is reserved for DocuSign internal use.
  """

  @derive [Poison.Encoder]
  defstruct [
    :acquiredTime,
    :claimName,
    :provider,
    :value
  ]

  @type t :: %__MODULE__{
          :acquiredTime => String.t(),
          :claimName => String.t(),
          :provider => String.t(),
          :value => String.t()
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.ExternalClaim do
  def decode(value, _options) do
    value
  end
end
