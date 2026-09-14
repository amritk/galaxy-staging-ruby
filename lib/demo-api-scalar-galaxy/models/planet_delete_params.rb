# frozen_string_literal: true

module DemoApiScalarGalaxy
  module Models
    # @see DemoApiScalarGalaxy::Resources::Planets#delete
    class PlanetDeleteParams < DemoApiScalarGalaxy::Internal::Type::BaseModel
      extend DemoApiScalarGalaxy::Internal::Type::RequestParameters::Converter
      include DemoApiScalarGalaxy::Internal::Type::RequestParameters

      # @!attribute planet_id
      #
      #   @return [Integer]
      required :planet_id, Integer

      # @!method initialize(planet_id:, request_options: {})
      #   @param planet_id [Integer]
      #   @param request_options [DemoApiScalarGalaxy::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
