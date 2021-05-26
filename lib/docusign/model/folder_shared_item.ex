# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.FolderSharedItem do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :errorDetails,
    :folderId,
    :name,
    :owner,
    :parentFolderId,
    :parentFolderUri,
    :shared,
    :sharedGroups,
    :sharedUsers,
    :uri,
    :user
  ]

  @type t :: %__MODULE__{
          :errorDetails => ErrorDetails,
          :folderId => String.t(),
          :name => String.t(),
          :owner => UserInfo,
          :parentFolderId => String.t(),
          :parentFolderUri => String.t(),
          :shared => String.t(),
          :sharedGroups => [MemberGroupSharedItem],
          :sharedUsers => [UserSharedItem],
          :uri => String.t(),
          :user => UserInfo
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.FolderSharedItem do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:errorDetails, :struct, DocuSign.Model.ErrorDetails, options)
    |> deserialize(:owner, :struct, DocuSign.Model.UserInfo, options)
    |> deserialize(:sharedGroups, :list, DocuSign.Model.MemberGroupSharedItem, options)
    |> deserialize(:sharedUsers, :list, DocuSign.Model.UserSharedItem, options)
    |> deserialize(:user, :struct, DocuSign.Model.UserInfo, options)
  end
end
