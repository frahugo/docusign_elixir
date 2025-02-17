# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DocuSign.Model.UserInfo do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :accountId,
    :accountName,
    :activationAccessCode,
    :email,
    :errorDetails,
    :loginStatus,
    :membershipId,
    :sendActivationEmail,
    :uri,
    :userId,
    :userName,
    :userStatus,
    :userType
  ]

  @type t :: %__MODULE__{
          :accountId => String.t() | nil,
          :accountName => String.t() | nil,
          :activationAccessCode => String.t() | nil,
          :email => String.t() | nil,
          :errorDetails => DocuSign.Model.ErrorDetails.t() | nil,
          :loginStatus => String.t() | nil,
          :membershipId => String.t() | nil,
          :sendActivationEmail => String.t() | nil,
          :uri => String.t() | nil,
          :userId => String.t() | nil,
          :userName => String.t() | nil,
          :userStatus => String.t() | nil,
          :userType => String.t() | nil
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.UserInfo do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:errorDetails, :struct, DocuSign.Model.ErrorDetails, options)
  end
end
