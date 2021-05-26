# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.BccEmailArchiveHistory do
  @moduledoc """
  Contains details about the history of the BCC email archive configuration.
  """

  @derive [Poison.Encoder]
  defstruct [
    :accountId,
    :action,
    :email,
    :modified,
    :modifiedBy,
    :status
  ]

  @type t :: %__MODULE__{
          :accountId => String.t(),
          :action => String.t(),
          :email => String.t(),
          :modified => String.t(),
          :modifiedBy => UserInfo,
          :status => String.t()
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.BccEmailArchiveHistory do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:modifiedBy, :struct, DocuSign.Model.UserInfo, options)
  end
end
