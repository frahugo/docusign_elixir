# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.TemplateDocumentTabs do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :approveTabs,
    :checkboxTabs,
    :commentThreadTabs,
    :commissionCountyTabs,
    :commissionExpirationTabs,
    :commissionNumberTabs,
    :commissionStateTabs,
    :companyTabs,
    :currencyTabs,
    :dateSignedTabs,
    :dateTabs,
    :declineTabs,
    :drawTabs,
    :emailAddressTabs,
    :emailTabs,
    :envelopeIdTabs,
    :firstNameTabs,
    :formulaTabs,
    :fullNameTabs,
    :initialHereTabs,
    :lastNameTabs,
    :listTabs,
    :notarizeTabs,
    :notarySealTabs,
    :noteTabs,
    :numberTabs,
    :phoneNumberTabs,
    :polyLineOverlayTabs,
    :prefillTabs,
    :radioGroupTabs,
    :signerAttachmentTabs,
    :signHereTabs,
    :smartSectionTabs,
    :ssnTabs,
    :tabGroups,
    :textTabs,
    :titleTabs,
    :viewTabs,
    :zipTabs
  ]

  @type t :: %__MODULE__{
          :approveTabs => [Approve],
          :checkboxTabs => [Checkbox],
          :commentThreadTabs => [CommentThread],
          :commissionCountyTabs => [CommissionCounty],
          :commissionExpirationTabs => [CommissionExpiration],
          :commissionNumberTabs => [CommissionNumber],
          :commissionStateTabs => [CommissionState],
          :companyTabs => [Company],
          :currencyTabs => [Currency],
          :dateSignedTabs => [DateSigned],
          :dateTabs => [DateTime],
          :declineTabs => [Decline],
          :drawTabs => [Draw],
          :emailAddressTabs => [EmailAddress],
          :emailTabs => [Email],
          :envelopeIdTabs => [EnvelopeId],
          :firstNameTabs => [FirstName],
          :formulaTabs => [FormulaTab],
          :fullNameTabs => [FullName],
          :initialHereTabs => [InitialHere],
          :lastNameTabs => [LastName],
          :listTabs => [List],
          :notarizeTabs => [Notarize],
          :notarySealTabs => [NotarySeal],
          :noteTabs => [Note],
          :numberTabs => [Float],
          :phoneNumberTabs => [PhoneNumber],
          :polyLineOverlayTabs => [PolyLineOverlay],
          :prefillTabs => PrefillTabs,
          :radioGroupTabs => [RadioGroup],
          :signerAttachmentTabs => [SignerAttachment],
          :signHereTabs => [SignHere],
          :smartSectionTabs => [SmartSection],
          :ssnTabs => [Ssn],
          :tabGroups => [TabGroup],
          :textTabs => [Text],
          :titleTabs => [Title],
          :viewTabs => [View],
          :zipTabs => [Zip]
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.TemplateDocumentTabs do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:approveTabs, :list, DocuSign.Model.Approve, options)
    |> deserialize(:checkboxTabs, :list, DocuSign.Model.Checkbox, options)
    |> deserialize(:commentThreadTabs, :list, DocuSign.Model.CommentThread, options)
    |> deserialize(:commissionCountyTabs, :list, DocuSign.Model.CommissionCounty, options)
    |> deserialize(
      :commissionExpirationTabs,
      :list,
      DocuSign.Model.CommissionExpiration,
      options
    )
    |> deserialize(:commissionNumberTabs, :list, DocuSign.Model.CommissionNumber, options)
    |> deserialize(:commissionStateTabs, :list, DocuSign.Model.CommissionState, options)
    |> deserialize(:companyTabs, :list, DocuSign.Model.Company, options)
    |> deserialize(:currencyTabs, :list, DocuSign.Model.Currency, options)
    |> deserialize(:dateSignedTabs, :list, DocuSign.Model.DateSigned, options)
    |> deserialize(:dateTabs, :list, DocuSign.Model.Date, options)
    |> deserialize(:declineTabs, :list, DocuSign.Model.Decline, options)
    |> deserialize(:drawTabs, :list, DocuSign.Model.Draw, options)
    |> deserialize(:emailAddressTabs, :list, DocuSign.Model.EmailAddress, options)
    |> deserialize(:emailTabs, :list, DocuSign.Model.Email, options)
    |> deserialize(:envelopeIdTabs, :list, DocuSign.Model.EnvelopeId, options)
    |> deserialize(:firstNameTabs, :list, DocuSign.Model.FirstName, options)
    |> deserialize(:formulaTabs, :list, DocuSign.Model.FormulaTab, options)
    |> deserialize(:fullNameTabs, :list, DocuSign.Model.FullName, options)
    |> deserialize(:initialHereTabs, :list, DocuSign.Model.InitialHere, options)
    |> deserialize(:lastNameTabs, :list, DocuSign.Model.LastName, options)
    |> deserialize(:notarizeTabs, :list, DocuSign.Model.Notarize, options)
    |> deserialize(:notarySealTabs, :list, DocuSign.Model.NotarySeal, options)
    |> deserialize(:noteTabs, :list, DocuSign.Model.Note, options)
    |> deserialize(:phoneNumberTabs, :list, DocuSign.Model.PhoneNumber, options)
    |> deserialize(:polyLineOverlayTabs, :list, DocuSign.Model.PolyLineOverlay, options)
    |> deserialize(:prefillTabs, :struct, DocuSign.Model.PrefillTabs, options)
    |> deserialize(:radioGroupTabs, :list, DocuSign.Model.RadioGroup, options)
    |> deserialize(:signerAttachmentTabs, :list, DocuSign.Model.SignerAttachment, options)
    |> deserialize(:signHereTabs, :list, DocuSign.Model.SignHere, options)
    |> deserialize(:smartSectionTabs, :list, DocuSign.Model.SmartSection, options)
    |> deserialize(:ssnTabs, :list, DocuSign.Model.Ssn, options)
    |> deserialize(:tabGroups, :list, DocuSign.Model.TabGroup, options)
    |> deserialize(:textTabs, :list, DocuSign.Model.Text, options)
    |> deserialize(:titleTabs, :list, DocuSign.Model.Title, options)
    |> deserialize(:viewTabs, :list, DocuSign.Model.View, options)
    |> deserialize(:zipTabs, :list, DocuSign.Model.Zip, options)
  end
end
