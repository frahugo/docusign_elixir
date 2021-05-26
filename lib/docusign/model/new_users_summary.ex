# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.NewUsersSummary do
  @moduledoc """
  Object representing a summary of data for new users.
  """

  @derive [Poison.Encoder]
  defstruct [
    :newUsers
  ]

  @type t :: %__MODULE__{
          :newUsers => [NewUser]
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.NewUsersSummary do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:newUsers, :list, DocuSign.Model.NewUser, options)
  end
end
