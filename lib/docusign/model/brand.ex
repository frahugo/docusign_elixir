# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.Brand do
  @moduledoc """
  Information about a brand that is associated with an account. A brand applies custom styles and text to an envelope.
  """

  @derive [Poison.Encoder]
  defstruct [
    :brandCompany,
    :brandId,
    :brandLanguages,
    :brandName,
    :colors,
    :defaultBrandLanguage,
    :emailContent,
    :errorDetails,
    :isOverridingCompanyName,
    :isSendingDefault,
    :isSigningDefault,
    :landingPages,
    :links,
    :logos,
    :resources
  ]

  @type t :: %__MODULE__{
          :brandCompany => String.t(),
          :brandId => String.t(),
          :brandLanguages => [String.t()],
          :brandName => String.t(),
          :colors => [NameValue],
          :defaultBrandLanguage => String.t(),
          :emailContent => [BrandEmailContent],
          :errorDetails => ErrorDetails,
          :isOverridingCompanyName => boolean(),
          :isSendingDefault => boolean(),
          :isSigningDefault => boolean(),
          :landingPages => [NameValue],
          :links => [BrandLink],
          :logos => BrandLogos,
          :resources => BrandResourceUrls
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.Brand do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:colors, :list, DocuSign.Model.NameValue, options)
    |> deserialize(:emailContent, :list, DocuSign.Model.BrandEmailContent, options)
    |> deserialize(:errorDetails, :struct, DocuSign.Model.ErrorDetails, options)
    |> deserialize(:landingPages, :list, DocuSign.Model.NameValue, options)
    |> deserialize(:links, :list, DocuSign.Model.BrandLink, options)
    |> deserialize(:logos, :struct, DocuSign.Model.BrandLogos, options)
    |> deserialize(:resources, :struct, DocuSign.Model.BrandResourceUrls, options)
  end
end
