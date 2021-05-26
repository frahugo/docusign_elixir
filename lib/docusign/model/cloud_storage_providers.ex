# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.CloudStorageProviders do
  @moduledoc """
  The CloudStorageProviders resource provides methods that allow you to manage the cloud storage providers associate with an account.
  """

  @derive [Poison.Encoder]
  defstruct [
    :storageProviders
  ]

  @type t :: %__MODULE__{
          :storageProviders => [CloudStorageProvider]
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.CloudStorageProviders do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:storageProviders, :list, DocuSign.Model.CloudStorageProvider, options)
  end
end
