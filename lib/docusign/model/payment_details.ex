# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.PaymentDetails do
  @moduledoc """
  When a formula tab has a &#x60;paymentDetails&#x60; property, the formula tab is a payment item. See [Requesting Payments Along with Signatures][paymentguide] in the DocuSign Support Center to learn more about payments.  [paymentguide]:     https://support.docusign.com/en/guides/requesting-payments-along-with-signatures
  """

  @derive [Poison.Encoder]
  defstruct [
    :allowedPaymentMethods,
    :chargeId,
    :currencyCode,
    :currencyCodeMetadata,
    :customerId,
    :customMetadata,
    :customMetadataRequired,
    :gatewayAccountId,
    :gatewayAccountIdMetadata,
    :gatewayDisplayName,
    :gatewayName,
    :lineItems,
    :paymentOption,
    :paymentSourceId,
    :signerValues,
    :status,
    :total
  ]

  @type t :: %__MODULE__{
          :allowedPaymentMethods => [String.t()],
          :chargeId => String.t(),
          :currencyCode => String.t(),
          :currencyCodeMetadata => PropertyMetadata,
          :customerId => String.t(),
          :customMetadata => String.t(),
          :customMetadataRequired => boolean(),
          :gatewayAccountId => String.t(),
          :gatewayAccountIdMetadata => PropertyMetadata,
          :gatewayDisplayName => String.t(),
          :gatewayName => String.t(),
          :lineItems => [PaymentLineItem],
          :paymentOption => String.t(),
          :paymentSourceId => String.t(),
          :signerValues => PaymentSignerValues,
          :status => String.t(),
          :total => Money
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.PaymentDetails do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(
      :currencyCodeMetadata,
      :struct,
      DocuSign.Model.PropertyMetadata,
      options
    )
    |> deserialize(
      :gatewayAccountIdMetadata,
      :struct,
      DocuSign.Model.PropertyMetadata,
      options
    )
    |> deserialize(:lineItems, :list, DocuSign.Model.PaymentLineItem, options)
    |> deserialize(:signerValues, :struct, DocuSign.Model.PaymentSignerValues, options)
    |> deserialize(:total, :struct, DocuSign.Model.Money, options)
  end
end
