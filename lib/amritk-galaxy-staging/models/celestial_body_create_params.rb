# frozen_string_literal: true

module DemoApiScalarGalaxy
  module Models
    # @see DemoApiScalarGalaxy::Resources::CelestialBodies#create
    class CelestialBodyCreateParams < DemoApiScalarGalaxy::Internal::Type::BaseModel
      extend DemoApiScalarGalaxy::Internal::Type::RequestParameters::Converter
      include DemoApiScalarGalaxy::Internal::Type::RequestParameters

      # @!attribute celestial_body
      #
      #   @return [DemoApiScalarGalaxy::Models::Planet, DemoApiScalarGalaxy::Models::Satellite]
      required :celestial_body, union: -> { DemoApiScalarGalaxy::CelestialBody }

      # @!method initialize(celestial_body:, request_options: {})
      #   @param celestial_body [DemoApiScalarGalaxy::Models::Planet, DemoApiScalarGalaxy::Models::Satellite]
      #   @param request_options [DemoApiScalarGalaxy::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
