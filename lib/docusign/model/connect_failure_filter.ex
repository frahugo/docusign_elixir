# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.ConnectFailureFilter do
  @moduledoc """
  A list of failed envelope IDs to retry.
  """

  @derive [Poison.Encoder]
  defstruct [
    :envelopeIds,
    :synchronous
  ]

  @type t :: %__MODULE__{
          :envelopeIds => [String.t()],
          :synchronous => String.t()
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.ConnectFailureFilter do
  def decode(value, _options) do
    value
  end
end
