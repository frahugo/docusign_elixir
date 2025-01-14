# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DocuSign.Model.Attachment do
  @moduledoc """
  Contains information about an attachment.
  """

  @derive [Poison.Encoder]
  defstruct [
    :accessControl,
    :attachmentId,
    :attachmentType,
    :data,
    :label,
    :name,
    :remoteUrl
  ]

  @type t :: %__MODULE__{
          :accessControl => String.t() | nil,
          :attachmentId => String.t() | nil,
          :attachmentType => String.t() | nil,
          :data => String.t() | nil,
          :label => String.t() | nil,
          :name => String.t() | nil,
          :remoteUrl => String.t() | nil
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.Attachment do
  def decode(value, _options) do
    value
  end
end
