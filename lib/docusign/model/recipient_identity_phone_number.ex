# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.RecipientIdentityPhoneNumber do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :extension,
    :number
  ]

  @type t :: %__MODULE__{
          :extension => String.t(),
          :number => String.t()
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.RecipientIdentityPhoneNumber do
  def decode(value, _options) do
    value
  end
end
