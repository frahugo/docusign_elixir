# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.Folder do
  @moduledoc """
  This object contains details about a folder.
  """

  @derive [Poison.Encoder]
  defstruct [
    :errorDetails,
    :filter,
    :folderId,
    :folderItems,
    :folders,
    :hasAccess,
    :hasSubFolders,
    :itemCount,
    :name,
    :owner,
    :parentFolderId,
    :parentFolderUri,
    :subFolderCount,
    :type,
    :uri
  ]

  @type t :: %__MODULE__{
          :errorDetails => ErrorDetails,
          :filter => Filter,
          :folderId => String.t(),
          :folderItems => [FolderItemV2],
          :folders => [Folder],
          :hasAccess => String.t(),
          :hasSubFolders => String.t(),
          :itemCount => String.t(),
          :name => String.t(),
          :owner => UserInfo,
          :parentFolderId => String.t(),
          :parentFolderUri => String.t(),
          :subFolderCount => String.t(),
          :type => String.t(),
          :uri => String.t()
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.Folder do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:errorDetails, :struct, DocuSign.Model.ErrorDetails, options)
    |> deserialize(:filter, :struct, DocuSign.Model.Filter, options)
    |> deserialize(:folderItems, :list, DocuSign.Model.FolderItemV2, options)
    |> deserialize(:folders, :list, DocuSign.Model.Folder, options)
    |> deserialize(:owner, :struct, DocuSign.Model.UserInfo, options)
  end
end
