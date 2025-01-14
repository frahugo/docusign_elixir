# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DocuSign.Model.CaptiveRecipient do
  @moduledoc """
  This object contains details about a captive (embedded) recipient.
  """

  @derive [Poison.Encoder]
  defstruct [
    :clientUserId,
    :email,
    :errorDetails,
    :userName
  ]

  @type t :: %__MODULE__{
          :clientUserId => String.t() | nil,
          :email => String.t() | nil,
          :errorDetails => DocuSign.Model.ErrorDetails.t() | nil,
          :userName => String.t() | nil
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.CaptiveRecipient do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:errorDetails, :struct, DocuSign.Model.ErrorDetails, options)
  end
end
