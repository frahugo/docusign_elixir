# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.Title do
  @moduledoc """
  A tab that displays the recipient&#39;s title.
  """

  @derive [Poison.Encoder]
  defstruct [
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
    :bold,
    :boldMetadata,
    :concealValueOnDocument,
    :concealValueOnDocumentMetadata,
    :conditionalParentLabel,
    :conditionalParentLabelMetadata,
    :conditionalParentValue,
    :conditionalParentValueMetadata,
    :customTabId,
    :customTabIdMetadata,
    :disableAutoSize,
    :disableAutoSizeMetadata,
    :documentId,
    :documentIdMetadata,
    :errorDetails,
    :font,
    :fontColor,
    :fontColorMetadata,
    :fontMetadata,
    :fontSize,
    :fontSizeMetadata,
    :formOrder,
    :formOrderMetadata,
    :formPageLabel,
    :formPageLabelMetadata,
    :formPageNumber,
    :formPageNumberMetadata,
    :height,
    :heightMetadata,
    :italic,
    :italicMetadata,
    :localePolicy,
    :locked,
    :lockedMetadata,
    :maxLength,
    :maxLengthMetadata,
    :mergeField,
    :mergeFieldXml,
    :name,
    :nameMetadata,
    :originalValue,
    :originalValueMetadata,
    :pageNumber,
    :pageNumberMetadata,
    :recipientId,
    :recipientIdGuid,
    :recipientIdGuidMetadata,
    :recipientIdMetadata,
    :required,
    :requiredMetadata,
    :smartContractInformation,
    :status,
    :statusMetadata,
    :tabGroupLabels,
    :tabGroupLabelsMetadata,
    :tabId,
    :tabIdMetadata,
    :tabLabel,
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
    :underline,
    :underlineMetadata,
    :value,
    :valueMetadata,
    :width,
    :widthMetadata,
    :xPosition,
    :xPositionMetadata,
    :yPosition,
    :yPositionMetadata
  ]

  @type t :: %__MODULE__{
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
          :bold => String.t(),
          :boldMetadata => PropertyMetadata,
          :concealValueOnDocument => String.t(),
          :concealValueOnDocumentMetadata => PropertyMetadata,
          :conditionalParentLabel => String.t(),
          :conditionalParentLabelMetadata => PropertyMetadata,
          :conditionalParentValue => String.t(),
          :conditionalParentValueMetadata => PropertyMetadata,
          :customTabId => String.t(),
          :customTabIdMetadata => PropertyMetadata,
          :disableAutoSize => String.t(),
          :disableAutoSizeMetadata => PropertyMetadata,
          :documentId => String.t(),
          :documentIdMetadata => PropertyMetadata,
          :errorDetails => ErrorDetails,
          :font => String.t(),
          :fontColor => String.t(),
          :fontColorMetadata => PropertyMetadata,
          :fontMetadata => PropertyMetadata,
          :fontSize => String.t(),
          :fontSizeMetadata => PropertyMetadata,
          :formOrder => String.t(),
          :formOrderMetadata => PropertyMetadata,
          :formPageLabel => String.t(),
          :formPageLabelMetadata => PropertyMetadata,
          :formPageNumber => String.t(),
          :formPageNumberMetadata => PropertyMetadata,
          :height => String.t(),
          :heightMetadata => PropertyMetadata,
          :italic => String.t(),
          :italicMetadata => PropertyMetadata,
          :localePolicy => LocalePolicyTab,
          :locked => String.t(),
          :lockedMetadata => PropertyMetadata,
          :maxLength => String.t(),
          :maxLengthMetadata => PropertyMetadata,
          :mergeField => MergeField,
          :mergeFieldXml => String.t(),
          :name => String.t(),
          :nameMetadata => PropertyMetadata,
          :originalValue => String.t(),
          :originalValueMetadata => PropertyMetadata,
          :pageNumber => String.t(),
          :pageNumberMetadata => PropertyMetadata,
          :recipientId => String.t(),
          :recipientIdGuid => String.t(),
          :recipientIdGuidMetadata => PropertyMetadata,
          :recipientIdMetadata => PropertyMetadata,
          :required => String.t(),
          :requiredMetadata => PropertyMetadata,
          :smartContractInformation => SmartContractInformation,
          :status => String.t(),
          :statusMetadata => PropertyMetadata,
          :tabGroupLabels => [String.t()],
          :tabGroupLabelsMetadata => PropertyMetadata,
          :tabId => String.t(),
          :tabIdMetadata => PropertyMetadata,
          :tabLabel => String.t(),
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
          :underline => String.t(),
          :underlineMetadata => PropertyMetadata,
          :value => String.t(),
          :valueMetadata => PropertyMetadata,
          :width => String.t(),
          :widthMetadata => PropertyMetadata,
          :xPosition => String.t(),
          :xPositionMetadata => PropertyMetadata,
          :yPosition => String.t(),
          :yPositionMetadata => PropertyMetadata
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.Title do
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
    |> deserialize(:boldMetadata, :struct, DocuSign.Model.PropertyMetadata, options)
    |> deserialize(
      :concealValueOnDocumentMetadata,
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
    |> deserialize(
      :disableAutoSizeMetadata,
      :struct,
      DocuSign.Model.PropertyMetadata,
      options
    )
    |> deserialize(:documentIdMetadata, :struct, DocuSign.Model.PropertyMetadata, options)
    |> deserialize(:errorDetails, :struct, DocuSign.Model.ErrorDetails, options)
    |> deserialize(:fontColorMetadata, :struct, DocuSign.Model.PropertyMetadata, options)
    |> deserialize(:fontMetadata, :struct, DocuSign.Model.PropertyMetadata, options)
    |> deserialize(:fontSizeMetadata, :struct, DocuSign.Model.PropertyMetadata, options)
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
    |> deserialize(:italicMetadata, :struct, DocuSign.Model.PropertyMetadata, options)
    |> deserialize(:localePolicy, :struct, DocuSign.Model.LocalePolicyTab, options)
    |> deserialize(:lockedMetadata, :struct, DocuSign.Model.PropertyMetadata, options)
    |> deserialize(:maxLengthMetadata, :struct, DocuSign.Model.PropertyMetadata, options)
    |> deserialize(:mergeField, :struct, DocuSign.Model.MergeField, options)
    |> deserialize(:nameMetadata, :struct, DocuSign.Model.PropertyMetadata, options)
    |> deserialize(
      :originalValueMetadata,
      :struct,
      DocuSign.Model.PropertyMetadata,
      options
    )
    |> deserialize(:pageNumberMetadata, :struct, DocuSign.Model.PropertyMetadata, options)
    |> deserialize(
      :recipientIdGuidMetadata,
      :struct,
      DocuSign.Model.PropertyMetadata,
      options
    )
    |> deserialize(:recipientIdMetadata, :struct, DocuSign.Model.PropertyMetadata, options)
    |> deserialize(:requiredMetadata, :struct, DocuSign.Model.PropertyMetadata, options)
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
    |> deserialize(:underlineMetadata, :struct, DocuSign.Model.PropertyMetadata, options)
    |> deserialize(:valueMetadata, :struct, DocuSign.Model.PropertyMetadata, options)
    |> deserialize(:widthMetadata, :struct, DocuSign.Model.PropertyMetadata, options)
    |> deserialize(:xPositionMetadata, :struct, DocuSign.Model.PropertyMetadata, options)
    |> deserialize(:yPositionMetadata, :struct, DocuSign.Model.PropertyMetadata, options)
  end
end
