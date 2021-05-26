# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Api.EnvelopeTransferRules do
  @moduledoc """
  API calls for all endpoints tagged `EnvelopeTransferRules`.
  """

  alias DocuSign.Connection
  import DocuSign.RequestBuilder

  @doc """
  Deletes an envelope transfer rule.
  This method deletes an envelope transfer rule.  **Note**: Only Administrators can delete envelope transfer rules. In addition, to use envelope transfer rules, the **Transfer Custody** feature must be enabled for your account.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID GUID.
  - envelope_transfer_rule_id (String.t): The id of the envelope transfer rule. The system generates this id when the rule is first created.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec envelope_transfer_rules_delete_envelope_transfer_rules(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, nil} | {:error, Tesla.Env.t()}
  def envelope_transfer_rules_delete_envelope_transfer_rules(
        connection,
        account_id,
        envelope_transfer_rule_id,
        _opts \\ []
      ) do
    %{}
    |> method(:delete)
    |> url("/v2.1/accounts/#{account_id}/envelopes/transfer_rules/#{envelope_transfer_rule_id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Gets envelope transfer rules.
  This method retrieves a list of envelope transfer rules associated with an account.  **Note**: Only Administrators can create and use envelope transfer rules. In addition, to use envelope transfer rules, the **Transfer Custody** feature must be enabled for your account.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID GUID.
  - opts (KeywordList): [optional] Optional parameters
    - :count (String.t): (Optional) The maximum number of results to return.
    - :start_position (String.t): (Optional) The position within the total result set from which to start returning values. The value **thumbnail** may be used to return the page image.

  ## Returns

  {:ok, %DocuSign.Model.EnvelopeTransferRuleInformation{}} on success
  {:error, info} on failure
  """
  @spec envelope_transfer_rules_get_envelope_transfer_rules(
          Tesla.Env.client(),
          String.t(),
          keyword()
        ) ::
          {:ok, DocuSign.Model.EnvelopeTransferRuleInformation.t()}
          | {:error, Tesla.Env.t()}
  def envelope_transfer_rules_get_envelope_transfer_rules(connection, account_id, opts \\ []) do
    optional_params = %{
      :count => :query,
      :start_position => :query
    }

    %{}
    |> method(:get)
    |> url("/v2.1/accounts/#{account_id}/envelopes/transfer_rules")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.EnvelopeTransferRuleInformation{})
  end

  @doc """
  Creates an envelope transfer rule.
  This method creates an envelope transfer rule.  When you create an envelope transfer rule, you specify the following properties:   - &#x60;eventType&#x60; - &#x60;fromGroups&#x60; - &#x60;toUser&#x60; - &#x60;toFolder&#x60; - &#x60;carbonCopyOriginalOwner&#x60; - &#x60;enabled&#x60;  **Note**: Only Administrators can create envelope transfer rules. In addition, to use envelope transfer rules, the **Transfer Custody** feature must be enabled for your account.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID GUID.
  - opts (KeywordList): [optional] Optional parameters
    - :envelope_transfer_rule_request (EnvelopeTransferRuleRequest):

  ## Returns

  {:ok, %DocuSign.Model.EnvelopeTransferRuleInformation{}} on success
  {:error, info} on failure
  """
  @spec envelope_transfer_rules_post_envelope_transfer_rules(
          Tesla.Env.client(),
          String.t(),
          keyword()
        ) ::
          {:ok, DocuSign.Model.EnvelopeTransferRuleInformation.t()}
          | {:error, Tesla.Env.t()}
  def envelope_transfer_rules_post_envelope_transfer_rules(connection, account_id, opts \\ []) do
    optional_params = %{
      :envelopeTransferRuleRequest => :body
    }

    %{}
    |> method(:post)
    |> url("/v2.1/accounts/#{account_id}/envelopes/transfer_rules")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.EnvelopeTransferRuleInformation{})
  end

  @doc """
  Changes the status of an envelope transfer rule.
  This method changes the status of an envelope transfer rule. You use this method to change whether or not the rule is enabled.  You must include the &#x60;envelopeTransferRuleId&#x60; both as a query parameter, and in the request body.  **Note**: You cannot change any other information about the envelope transfer rule. Only Administrators can update an envelope transfer rule. In addition, to use envelope transfer rules, the **Transfer Custody** feature must be enabled for your account.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID GUID.
  - envelope_transfer_rule_id (String.t): The id of the envelope transfer rule. The system generates this id when the rule is first created.
  - opts (KeywordList): [optional] Optional parameters
    - :envelope_transfer_rule (EnvelopeTransferRule):

  ## Returns

  {:ok, %DocuSign.Model.EnvelopeTransferRule{}} on success
  {:error, info} on failure
  """
  @spec envelope_transfer_rules_put_envelope_transfer_rule(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, DocuSign.Model.EnvelopeTransferRule.t()} | {:error, Tesla.Env.t()}
  def envelope_transfer_rules_put_envelope_transfer_rule(
        connection,
        account_id,
        envelope_transfer_rule_id,
        opts \\ []
      ) do
    optional_params = %{
      :envelopeTransferRule => :body
    }

    %{}
    |> method(:put)
    |> url("/v2.1/accounts/#{account_id}/envelopes/transfer_rules/#{envelope_transfer_rule_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.EnvelopeTransferRule{})
  end

  @doc """
  Changes the status of multiple envelope transfer rules.
  This method changes the status for one or more envelope transfer rules based on the &#x60;envelopeTransferRuleId&#x60;s in the request body. You use this method to change whether or not the rules are enabled.  **Note**: You cannot change any other information about the envelope transfer rule. Only Administrators can update envelope transfer rules. In addition, to use envelope transfer rules, the **Transfer Custody** feature must be enabled for your account.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID GUID.
  - opts (KeywordList): [optional] Optional parameters
    - :envelope_transfer_rule_information (EnvelopeTransferRuleInformation):

  ## Returns

  {:ok, %DocuSign.Model.EnvelopeTransferRuleInformation{}} on success
  {:error, info} on failure
  """
  @spec envelope_transfer_rules_put_envelope_transfer_rules(
          Tesla.Env.client(),
          String.t(),
          keyword()
        ) ::
          {:ok, DocuSign.Model.EnvelopeTransferRuleInformation.t()}
          | {:error, Tesla.Env.t()}
  def envelope_transfer_rules_put_envelope_transfer_rules(connection, account_id, opts \\ []) do
    optional_params = %{
      :envelopeTransferRuleInformation => :body
    }

    %{}
    |> method(:put)
    |> url("/v2.1/accounts/#{account_id}/envelopes/transfer_rules")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.EnvelopeTransferRuleInformation{})
  end
end
