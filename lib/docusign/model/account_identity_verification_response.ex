# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.AccountIdentityVerificationResponse do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :identityVerification
  ]

  @type t :: %__MODULE__{
          :identityVerification => [AccountIdentityVerificationWorkflow]
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.AccountIdentityVerificationResponse do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(
      :identityVerification,
      :list,
      DocuSign.Model.AccountIdentityVerificationWorkflow,
      options
    )
  end
end
