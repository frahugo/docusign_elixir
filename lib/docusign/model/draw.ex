# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.Draw do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :allowSignerUpload,
    :anchorAllowWhiteSpaceInCharacters,
    :anchorAllowWhiteSpaceInCharactersMetadata,
    :anchorCaseSensitive,
    :anchorCaseSensitiveMetadata,
    :anchorHorizontalAlignment,
    :anchorHorizontalAlignmentMetadata,
    :anchorIgnoreIfNotPresent,
    :anchorIgnoreIfNotPresentMetadata,
    :anchorMatchWholeWord,
    :anchorMatchWholeWordMetadata,
    :anchorString,
    :anchorStringMetadata,
    :anchorTabProcessorVersion,
    :anchorTabProcessorVersionMetadata,
    :anchorUnits,
    :anchorUnitsMetadata,
    :anchorXOffset,
    :anchorXOffsetMetadata,
    :anchorYOffset,
    :anchorYOffsetMetadata,
    :conditionalParentLabel,
    :conditionalParentLabelMetadata,
    :conditionalParentValue,
    :conditionalParentValueMetadata,
    :customTabId,
    :customTabIdMetadata,
    :documentId,
    :documentIdMetadata,
    :errorDetails,
    :formOrder,
    :formOrderMetadata,
    :formPageLabel,
    :formPageLabelMetadata,
    :formPageNumber,
    :formPageNumberMetadata,
    :height,
    :heightMetadata,
    :locked,
    :lockedMetadata,
    :mergeField,
    :mergeFieldXml,
    :pageNumber,
    :pageNumberMetadata,
    :recipientId,
    :recipientIdGuid,
    :recipientIdGuidMetadata,
    :recipientIdMetadata,
    :required,
    :requiredMetadata,
    :shared,
    :sharedMetadata,
    :smartContractInformation,
    :status,
    :statusMetadata,
    :tabGroupLabels,
    :tabGroupLabelsMetadata,
    :tabId,
    :tabIdMetadata,
    :tabLabelMetadata,
    :tabOrder,
    :tabOrderMetadata,
    :tabType,
    :tabTypeMetadata,
    :templateLocked,
    :templateLockedMetadata,
    :templateRequired,
    :templateRequiredMetadata,
    :tooltip,
    :toolTipMetadata,
    :useBackgroundAsCanvas,
    :width,
    :widthMetadata,
    :xPosition,
    :xPositionMetadata,
    :yPosition,
    :yPositionMetadata
  ]

  @type t :: %__MODULE__{
          :allowSignerUpload => String.t(),
          :anchorAllowWhiteSpaceInCharacters => String.t(),
          :anchorAllowWhiteSpaceInCharactersMetadata => PropertyMetadata,
          :anchorCaseSensitive => String.t(),
          :anchorCaseSensitiveMetadata => PropertyMetadata,
          :anchorHorizontalAlignment => String.t(),
          :anchorHorizontalAlignmentMetadata => PropertyMetadata,
          :anchorIgnoreIfNotPresent => String.t(),
          :anchorIgnoreIfNotPresentMetadata => PropertyMetadata,
          :anchorMatchWholeWord => String.t(),
          :anchorMatchWholeWordMetadata => PropertyMetadata,
          :anchorString => String.t(),
          :anchorStringMetadata => PropertyMetadata,
          :anchorTabProcessorVersion => String.t(),
          :anchorTabProcessorVersionMetadata => PropertyMetadata,
          :anchorUnits => String.t(),
          :anchorUnitsMetadata => PropertyMetadata,
          :anchorXOffset => String.t(),
          :anchorXOffsetMetadata => PropertyMetadata,
          :anchorYOffset => String.t(),
          :anchorYOffsetMetadata => PropertyMetadata,
          :conditionalParentLabel => String.t(),
          :conditionalParentLabelMetadata => PropertyMetadata,
          :conditionalParentValue => String.t(),
          :conditionalParentValueMetadata => PropertyMetadata,
          :customTabId => String.t(),
          :customTabIdMetadata => PropertyMetadata,
          :documentId => String.t(),
          :documentIdMetadata => PropertyMetadata,
          :errorDetails => ErrorDetails,
          :formOrder => String.t(),
          :formOrderMetadata => PropertyMetadata,
          :formPageLabel => String.t(),
          :formPageLabelMetadata => PropertyMetadata,
          :formPageNumber => String.t(),
          :formPageNumberMetadata => PropertyMetadata,
          :height => String.t(),
          :heightMetadata => PropertyMetadata,
          :locked => String.t(),
          :lockedMetadata => PropertyMetadata,
          :mergeField => MergeField,
          :mergeFieldXml => String.t(),
          :pageNumber => String.t(),
          :pageNumberMetadata => PropertyMetadata,
          :recipientId => String.t(),
          :recipientIdGuid => String.t(),
          :recipientIdGuidMetadata => PropertyMetadata,
          :recipientIdMetadata => PropertyMetadata,
          :required => String.t(),
          :requiredMetadata => PropertyMetadata,
          :shared => String.t(),
          :sharedMetadata => PropertyMetadata,
          :smartContractInformation => SmartContractInformation,
          :status => String.t(),
          :statusMetadata => PropertyMetadata,
          :tabGroupLabels => [String.t()],
          :tabGroupLabelsMetadata => PropertyMetadata,
          :tabId => String.t(),
          :tabIdMetadata => PropertyMetadata,
          :tabLabelMetadata => PropertyMetadata,
          :tabOrder => String.t(),
          :tabOrderMetadata => PropertyMetadata,
          :tabType => String.t(),
          :tabTypeMetadata => PropertyMetadata,
          :templateLocked => String.t(),
          :templateLockedMetadata => PropertyMetadata,
          :templateRequired => String.t(),
          :templateRequiredMetadata => PropertyMetadata,
          :tooltip => String.t(),
          :toolTipMetadata => PropertyMetadata,
          :useBackgroundAsCanvas => String.t(),
          :width => String.t(),
          :widthMetadata => PropertyMetadata,
          :xPosition => String.t(),
          :xPositionMetadata => PropertyMetadata,
          :yPosition => String.t(),
          :yPositionMetadata => PropertyMetadata
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.Draw do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(
      :anchorAllowWhiteSpaceInCharactersMetadata,
      :struct,
      DocuSign.Model.PropertyMetadata,
      options
    )
    |> deserialize(
      :anchorCaseSensitiveMetadata,
      :struct,
      DocuSign.Model.PropertyMetadata,
      options
    )
    |> deserialize(
      :anchorHorizontalAlignmentMetadata,
      :struct,
      DocuSign.Model.PropertyMetadata,
      options
    )
    |> deserialize(
      :anchorIgnoreIfNotPresentMetadata,
      :struct,
      DocuSign.Model.PropertyMetadata,
      options
    )
    |> deserialize(
      :anchorMatchWholeWordMetadata,
      :struct,
      DocuSign.Model.PropertyMetadata,
      options
    )
    |> deserialize(
      :anchorStringMetadata,
      :struct,
      DocuSign.Model.PropertyMetadata,
      options
    )
    |> deserialize(
      :anchorTabProcessorVersionMetadata,
      :struct,
      DocuSign.Model.PropertyMetadata,
      options
    )
    |> deserialize(:anchorUnitsMetadata, :struct, DocuSign.Model.PropertyMetadata, options)
    |> deserialize(
      :anchorXOffsetMetadata,
      :struct,
      DocuSign.Model.PropertyMetadata,
      options
    )
    |> deserialize(
      :anchorYOffsetMetadata,
      :struct,
      DocuSign.Model.PropertyMetadata,
      options
    )
    |> deserialize(
      :conditionalParentLabelMetadata,
      :struct,
      DocuSign.Model.PropertyMetadata,
      options
    )
    |> deserialize(
      :conditionalParentValueMetadata,
      :struct,
      DocuSign.Model.PropertyMetadata,
      options
    )
    |> deserialize(:customTabIdMetadata, :struct, DocuSign.Model.PropertyMetadata, options)
    |> deserialize(:documentIdMetadata, :struct, DocuSign.Model.PropertyMetadata, options)
    |> deserialize(:errorDetails, :struct, DocuSign.Model.ErrorDetails, options)
    |> deserialize(:formOrderMetadata, :struct, DocuSign.Model.PropertyMetadata, options)
    |> deserialize(
      :formPageLabelMetadata,
      :struct,
      DocuSign.Model.PropertyMetadata,
      options
    )
    |> deserialize(
      :formPageNumberMetadata,
      :struct,
      DocuSign.Model.PropertyMetadata,
      options
    )
    |> deserialize(:heightMetadata, :struct, DocuSign.Model.PropertyMetadata, options)
    |> deserialize(:lockedMetadata, :struct, DocuSign.Model.PropertyMetadata, options)
    |> deserialize(:mergeField, :struct, DocuSign.Model.MergeField, options)
    |> deserialize(:pageNumberMetadata, :struct, DocuSign.Model.PropertyMetadata, options)
    |> deserialize(
      :recipientIdGuidMetadata,
      :struct,
      DocuSign.Model.PropertyMetadata,
      options
    )
    |> deserialize(:recipientIdMetadata, :struct, DocuSign.Model.PropertyMetadata, options)
    |> deserialize(:requiredMetadata, :struct, DocuSign.Model.PropertyMetadata, options)
    |> deserialize(:sharedMetadata, :struct, DocuSign.Model.PropertyMetadata, options)
    |> deserialize(
      :smartContractInformation,
      :struct,
      DocuSign.Model.SmartContractInformation,
      options
    )
    |> deserialize(:statusMetadata, :struct, DocuSign.Model.PropertyMetadata, options)
    |> deserialize(
      :tabGroupLabelsMetadata,
      :struct,
      DocuSign.Model.PropertyMetadata,
      options
    )
    |> deserialize(:tabIdMetadata, :struct, DocuSign.Model.PropertyMetadata, options)
    |> deserialize(:tabLabelMetadata, :struct, DocuSign.Model.PropertyMetadata, options)
    |> deserialize(:tabOrderMetadata, :struct, DocuSign.Model.PropertyMetadata, options)
    |> deserialize(:tabTypeMetadata, :struct, DocuSign.Model.PropertyMetadata, options)
    |> deserialize(
      :templateLockedMetadata,
      :struct,
      DocuSign.Model.PropertyMetadata,
      options
    )
    |> deserialize(
      :templateRequiredMetadata,
      :struct,
      DocuSign.Model.PropertyMetadata,
      options
    )
    |> deserialize(:toolTipMetadata, :struct, DocuSign.Model.PropertyMetadata, options)
    |> deserialize(:widthMetadata, :struct, DocuSign.Model.PropertyMetadata, options)
    |> deserialize(:xPositionMetadata, :struct, DocuSign.Model.PropertyMetadata, options)
    |> deserialize(:yPositionMetadata, :struct, DocuSign.Model.PropertyMetadata, options)
  end
end
