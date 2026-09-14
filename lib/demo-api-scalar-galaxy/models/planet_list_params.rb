# frozen_string_literal: true

module DemoApiScalarGalaxy
  module Models
    # @see DemoApiScalarGalaxy::Resources::Planets#list
    class PlanetListParams < DemoApiScalarGalaxy::Internal::Type::BaseModel
      extend DemoApiScalarGalaxy::Internal::Type::RequestParameters::Converter
      include DemoApiScalarGalaxy::Internal::Type::RequestParameters

      # @!attribute limit
      #   The number of items to return
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!attribute offset
      #   The number of items to skip before starting to collect the result set
      #
      #   @return [Integer, nil]
      optional :offset, Integer

      # @!method initialize(limit: nil, offset: nil, request_options: {})
      #   @param limit [Integer] The number of items to return
      #
      #   @param offset [Integer] The number of items to skip before starting to collect the result set
      #
      #   @param request_options [DemoApiScalarGalaxy::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
