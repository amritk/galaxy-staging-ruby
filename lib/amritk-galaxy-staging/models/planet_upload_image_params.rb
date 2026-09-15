# frozen_string_literal: true

module DemoApiScalarGalaxy
  module Models
    # @see DemoApiScalarGalaxy::Resources::Planets#upload_image
    class PlanetUploadImageParams < DemoApiScalarGalaxy::Internal::Type::BaseModel
      extend DemoApiScalarGalaxy::Internal::Type::RequestParameters::Converter
      include DemoApiScalarGalaxy::Internal::Type::RequestParameters

      # @!attribute planet_id
      #
      #   @return [Integer]
      required :planet_id, Integer

      # @!attribute image
      #   The image file to upload
      #
      #   @return [Pathname, StringIO, IO, String, DemoApiScalarGalaxy::FilePart, nil]
      optional :image, DemoApiScalarGalaxy::Internal::Type::FileInput

      # @!method initialize(planet_id:, image: nil, request_options: {})
      #   @param planet_id [Integer]
      #
      #   @param image [Pathname, StringIO, IO, String, DemoApiScalarGalaxy::FilePart] The image file to upload
      #
      #   @param request_options [DemoApiScalarGalaxy::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
