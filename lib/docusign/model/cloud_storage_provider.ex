# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DocuSign.Model.CloudStorageProvider do
  @moduledoc """
  Contains details about a specific cloud storage provider.
  """

  @derive [Poison.Encoder]
  defstruct [
    :authenticationUrl,
    :errorDetails,
    :redirectUrl,
    :service,
    :serviceId
  ]

  @type t :: %__MODULE__{
          :authenticationUrl => String.t() | nil,
          :errorDetails => DocuSign.Model.ErrorDetails.t() | nil,
          :redirectUrl => String.t() | nil,
          :service => String.t() | nil,
          :serviceId => String.t() | nil
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.CloudStorageProvider do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:errorDetails, :struct, DocuSign.Model.ErrorDetails, options)
  end
end
