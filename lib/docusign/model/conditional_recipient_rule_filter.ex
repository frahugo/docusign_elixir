# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.ConditionalRecipientRuleFilter do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :operator,
    :recipientId,
    :scope,
    :tabId,
    :tabLabel,
    :value
  ]

  @type t :: %__MODULE__{
          :operator => String.t(),
          :recipientId => String.t(),
          :scope => String.t(),
          :tabId => String.t(),
          :tabLabel => String.t(),
          :value => String.t()
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.ConditionalRecipientRuleFilter do
  def decode(value, _options) do
    value
  end
end
