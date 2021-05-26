# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.FolderItemV2 do
  @moduledoc """
  Information about folder item results.
  """

  @derive [Poison.Encoder]
  defstruct [
    :completedDateTime,
    :createdDateTime,
    :envelopeId,
    :envelopeUri,
    :expireDateTime,
    :folderId,
    :folderUri,
    :is21CFRPart11,
    :ownerName,
    :recipients,
    :recipientsUri,
    :senderCompany,
    :senderEmail,
    :senderName,
    :senderUserId,
    :sentDateTime,
    :status,
    :subject,
    :templateId,
    :templateUri
  ]

  @type t :: %__MODULE__{
          :completedDateTime => String.t(),
          :createdDateTime => String.t(),
          :envelopeId => String.t(),
          :envelopeUri => String.t(),
          :expireDateTime => String.t(),
          :folderId => String.t(),
          :folderUri => String.t(),
          :is21CFRPart11 => String.t(),
          :ownerName => String.t(),
          :recipients => EnvelopeRecipients,
          :recipientsUri => String.t(),
          :senderCompany => String.t(),
          :senderEmail => String.t(),
          :senderName => String.t(),
          :senderUserId => String.t(),
          :sentDateTime => String.t(),
          :status => String.t(),
          :subject => String.t(),
          :templateId => String.t(),
          :templateUri => String.t()
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.FolderItemV2 do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:recipients, :struct, DocuSign.Model.EnvelopeRecipients, options)
  end
end
