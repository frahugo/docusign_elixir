# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DocuSign.Model.ExternalFile do
  @moduledoc """
  This object contains information about a file or folder in cloud storage.
  """

  @derive [Poison.Encoder]
  defstruct [
    :date,
    :hasCompositeTemplate,
    :id,
    :img,
    :name,
    :ownerName,
    :size,
    :supported,
    :type,
    :uri
  ]

  @type t :: %__MODULE__{
          :date => String.t() | nil,
          :hasCompositeTemplate => String.t() | nil,
          :id => String.t() | nil,
          :img => String.t() | nil,
          :name => String.t() | nil,
          :ownerName => String.t() | nil,
          :size => String.t() | nil,
          :supported => String.t() | nil,
          :type => String.t() | nil,
          :uri => String.t() | nil
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.ExternalFile do
  def decode(value, _options) do
    value
  end
end
