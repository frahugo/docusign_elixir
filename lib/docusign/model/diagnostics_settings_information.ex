# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.DiagnosticsSettingsInformation do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :apiRequestLogging,
    :apiRequestLogMaxEntries,
    :apiRequestLogRemainingEntries
  ]

  @type t :: %__MODULE__{
          :apiRequestLogging => String.t(),
          :apiRequestLogMaxEntries => String.t(),
          :apiRequestLogRemainingEntries => String.t()
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.DiagnosticsSettingsInformation do
  def decode(value, _options) do
    value
  end
end
