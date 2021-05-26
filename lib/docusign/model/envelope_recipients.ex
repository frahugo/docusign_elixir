# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.EnvelopeRecipients do
  @moduledoc """
  Envelope recipients
  """

  @derive [Poison.Encoder]
  defstruct [
    :agents,
    :carbonCopies,
    :certifiedDeliveries,
    :currentRoutingOrder,
    :editors,
    :errorDetails,
    :inPersonSigners,
    :intermediaries,
    :notaries,
    :recipientCount,
    :seals,
    :signers,
    :witnesses
  ]

  @type t :: %__MODULE__{
          :agents => [Agent],
          :carbonCopies => [CarbonCopy],
          :certifiedDeliveries => [CertifiedDelivery],
          :currentRoutingOrder => String.t(),
          :editors => [Editor],
          :errorDetails => ErrorDetails,
          :inPersonSigners => [InPersonSigner],
          :intermediaries => [Intermediary],
          :notaries => [NotaryRecipient],
          :recipientCount => String.t(),
          :seals => [SealSign],
          :signers => [Signer],
          :witnesses => [Witness]
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.EnvelopeRecipients do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:agents, :list, DocuSign.Model.Agent, options)
    |> deserialize(:carbonCopies, :list, DocuSign.Model.CarbonCopy, options)
    |> deserialize(:certifiedDeliveries, :list, DocuSign.Model.CertifiedDelivery, options)
    |> deserialize(:editors, :list, DocuSign.Model.Editor, options)
    |> deserialize(:errorDetails, :struct, DocuSign.Model.ErrorDetails, options)
    |> deserialize(:inPersonSigners, :list, DocuSign.Model.InPersonSigner, options)
    |> deserialize(:intermediaries, :list, DocuSign.Model.Intermediary, options)
    |> deserialize(:notaries, :list, DocuSign.Model.NotaryRecipient, options)
    |> deserialize(:seals, :list, DocuSign.Model.SealSign, options)
    |> deserialize(:signers, :list, DocuSign.Model.Signer, options)
    |> deserialize(:witnesses, :list, DocuSign.Model.Witness, options)
  end
end
