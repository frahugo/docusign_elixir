# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Api.UserCustomSettings do
  @moduledoc """
  API calls for all endpoints tagged `UserCustomSettings`.
  """

  alias DocuSign.Connection
  import DocuSign.RequestBuilder

  @doc """
  Deletes custom user settings for a specified user.
  Deletes the specified custom user settings for a single user.  ###Deleting Grouped Custom User Settings###  If the custom user settings you want to delete are grouped, you must include the following information in the header, after Content-Type, in the request:  &#x60;X-DocuSign-User-Settings-Key:group_name&#x60;  Where the &#x60;group_name&#x60; is your designated name for the group of customer user settings.  If the extra header information is not included, only the custom user settings that were added without a group are deleted.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID GUID.
  - user_id (String.t): The ID of the user to access. Generally this is the ID of the current authenticated user, but if the authenticated user is an Administrator on the account, &#x60;userId&#x60; can represent another user whom the Administrator is accessing.
  - opts (KeywordList): [optional] Optional parameters
    - :custom_settings_information (CustomSettingsInformation):

  ## Returns

  {:ok, %DocuSign.Model.CustomSettingsInformation{}} on success
  {:error, info} on failure
  """
  @spec user_custom_settings_delete_custom_settings(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, DocuSign.Model.CustomSettingsInformation.t()} | {:error, Tesla.Env.t()}
  def user_custom_settings_delete_custom_settings(connection, account_id, user_id, opts \\ []) do
    optional_params = %{
      :customSettingsInformation => :body
    }

    %{}
    |> method(:delete)
    |> url("/v2.1/accounts/#{account_id}/users/#{user_id}/custom_settings")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.CustomSettingsInformation{})
  end

  @doc """
  Retrieves the custom user settings for a specified user.
  Retrieves a list of custom user settings for a single user.  Custom settings provide a flexible way to store and retrieve custom user information that can be used in your own system.  **Note**: Custom user settings are not the same as user account settings.  ###Getting Grouped Custom User Settings###  If the custom user settings you want to retrieve are grouped, you must include the following information in the header, after Content-Type, in the request:  &#x60;X-DocuSign-User-Settings-Key:group_name&#x60;  Where the &#x60;group_name&#x60; is your designated name for the group of customer user settings.  If the extra header information is not included, only the custom user settings that were added without a group are retrieved.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID GUID.
  - user_id (String.t): The ID of the user to access. Generally this is the ID of the current authenticated user, but if the authenticated user is an Administrator on the account, &#x60;userId&#x60; can represent another user whom the Administrator is accessing.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %DocuSign.Model.CustomSettingsInformation{}} on success
  {:error, info} on failure
  """
  @spec user_custom_settings_get_custom_settings(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, DocuSign.Model.CustomSettingsInformation.t()} | {:error, Tesla.Env.t()}
  def user_custom_settings_get_custom_settings(connection, account_id, user_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/v2.1/accounts/#{account_id}/users/#{user_id}/custom_settings")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.CustomSettingsInformation{})
  end

  @doc """
  Adds or updates custom user settings for the specified user.
  Adds or updates custom user settings for the specified user.  ***Note**: Custom user settings are not the same as user account settings.  Custom settings provide a flexible way to store and retrieve custom user information that you can use in your own system.  **Important**: There is a limit on the size for all the custom user settings for a single user. The limit is 4,000 characters, which includes the XML and JSON structure for the settings.  ### Grouping Custom User Settings ###  You can group custom user settings when adding them. Grouping allows you to retrieve settings that are in a specific group, instead of retrieving all the user custom settings.  To group custom user settings, add the following information in the header, after Content-Type:  &#x60;X-DocuSign-User-Settings-Key:group_name&#x60;  Where the &#x60;group_name&#x60; is your designated name for the group of customer user settings. Grouping is shown in the Example Request Body below.  When getting or deleting grouped custom user settings, you must include the extra header information.  Grouping custom user settings is not required and if the extra header information is not included, the custom user settings are added normally and can be retrieved or deleted without including the additional header.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID GUID.
  - user_id (String.t): The ID of the user to access. Generally this is the ID of the current authenticated user, but if the authenticated user is an Administrator on the account, &#x60;userId&#x60; can represent another user whom the Administrator is accessing.
  - opts (KeywordList): [optional] Optional parameters
    - :custom_settings_information (CustomSettingsInformation):

  ## Returns

  {:ok, %DocuSign.Model.CustomSettingsInformation{}} on success
  {:error, info} on failure
  """
  @spec user_custom_settings_put_custom_settings(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, DocuSign.Model.CustomSettingsInformation.t()} | {:error, Tesla.Env.t()}
  def user_custom_settings_put_custom_settings(connection, account_id, user_id, opts \\ []) do
    optional_params = %{
      :customSettingsInformation => :body
    }

    %{}
    |> method(:put)
    |> url("/v2.1/accounts/#{account_id}/users/#{user_id}/custom_settings")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.CustomSettingsInformation{})
  end
end
