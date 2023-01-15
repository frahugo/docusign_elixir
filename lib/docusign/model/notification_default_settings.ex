# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DocuSign.Model.NotificationDefaultSettings do
  @moduledoc """
  Contains details about the default notification settings for the envelope notifications that senders and signers receive.
  """

  @derive [Poison.Encoder]
  defstruct [
    :senderEmailNotifications,
    :signerEmailNotifications
  ]

  @type t :: %__MODULE__{
          :senderEmailNotifications => DocuSign.Model.SenderEmailNotifications.t() | nil,
          :signerEmailNotifications => DocuSign.Model.SignerEmailNotifications.t() | nil
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.NotificationDefaultSettings do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(
      :senderEmailNotifications,
      :struct,
      DocuSign.Model.SenderEmailNotifications,
      options
    )
    |> deserialize(
      :signerEmailNotifications,
      :struct,
      DocuSign.Model.SignerEmailNotifications,
      options
    )
  end
end