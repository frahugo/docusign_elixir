# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DocuSign.Model.ConsoleViewRequest do
  @moduledoc """
  The request object for the [EnvelopeViews: createConsole](/docs/esign-rest-api/reference/envelopes/envelopeviews/createconsole/) method.
  """

  @derive [Poison.Encoder]
  defstruct [
    :envelopeId,
    :returnUrl
  ]

  @type t :: %__MODULE__{
          :envelopeId => String.t() | nil,
          :returnUrl => String.t() | nil
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.ConsoleViewRequest do
  def decode(value, _options) do
    value
  end
end
