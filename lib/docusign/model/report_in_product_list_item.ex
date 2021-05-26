# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.ReportInProductListItem do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :getUri,
    :lastScheduledExecutionDate,
    :lastScheduledExecutionSuccessDate,
    :reportCustomizedId,
    :reportDescription,
    :reportId,
    :reportName,
    :reportType,
    :runUri,
    :saveUri,
    :scheduleCreateDate,
    :scheduleEndDate,
    :scheduleId,
    :scheduleRenewDurationDays
  ]

  @type t :: %__MODULE__{
          :getUri => String.t(),
          :lastScheduledExecutionDate => String.t(),
          :lastScheduledExecutionSuccessDate => String.t(),
          :reportCustomizedId => String.t(),
          :reportDescription => String.t(),
          :reportId => String.t(),
          :reportName => String.t(),
          :reportType => String.t(),
          :runUri => String.t(),
          :saveUri => String.t(),
          :scheduleCreateDate => String.t(),
          :scheduleEndDate => String.t(),
          :scheduleId => String.t(),
          :scheduleRenewDurationDays => String.t()
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.ReportInProductListItem do
  def decode(value, _options) do
    value
  end
end
