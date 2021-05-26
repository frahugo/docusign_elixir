# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.EnvelopePurgeConfiguration do
  @moduledoc """
  Contains information about the current envelope purge configuration for an account, which enables account administrators to purge documents from completed and voided envelopes after a set number of days (&#x60;retentionDays&#x60;).
  """

  @derive [Poison.Encoder]
  defstruct [
    :purgeEnvelopes,
    :redactPII,
    :removeTabsAndEnvelopeAttachments,
    :retentionDays
  ]

  @type t :: %__MODULE__{
          :purgeEnvelopes => String.t(),
          :redactPII => String.t(),
          :removeTabsAndEnvelopeAttachments => String.t(),
          :retentionDays => String.t()
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.EnvelopePurgeConfiguration do
  def decode(value, _options) do
    value
  end
end
