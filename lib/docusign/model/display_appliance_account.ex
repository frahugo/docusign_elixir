# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.DisplayApplianceAccount do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :accountId,
    :optOutAutoNavTextAndTabColorUpdates,
    :showInitialConditionalFields,
    :signingVersion,
    :tagHasSigBlock
  ]

  @type t :: %__MODULE__{
          :accountId => String.t(),
          :optOutAutoNavTextAndTabColorUpdates => boolean(),
          :showInitialConditionalFields => boolean(),
          :signingVersion => String.t(),
          :tagHasSigBlock => boolean()
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.DisplayApplianceAccount do
  def decode(value, _options) do
    value
  end
end
