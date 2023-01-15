# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DocuSign.Model.UsersResponse do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :endPosition,
    :nextUri,
    :previousUri,
    :resultSetSize,
    :startPosition,
    :totalSetSize,
    :users
  ]

  @type t :: %__MODULE__{
          :endPosition => String.t() | nil,
          :nextUri => String.t() | nil,
          :previousUri => String.t() | nil,
          :resultSetSize => String.t() | nil,
          :startPosition => String.t() | nil,
          :totalSetSize => String.t() | nil,
          :users => [DocuSign.Model.UserInfo.t()] | nil
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.UsersResponse do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:users, :list, DocuSign.Model.UserInfo, options)
  end
end