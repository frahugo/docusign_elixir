# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.RecipientGroup do
  @moduledoc """
  Describes a group of recipients.
  """

  @derive [Poison.Encoder]
  defstruct [
    :groupMessage,
    :groupName,
    :recipients
  ]

  @type t :: %__MODULE__{
          :groupMessage => String.t(),
          :groupName => String.t(),
          :recipients => [RecipientOption]
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.RecipientGroup do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:recipients, :list, DocuSign.Model.RecipientOption, options)
  end
end
