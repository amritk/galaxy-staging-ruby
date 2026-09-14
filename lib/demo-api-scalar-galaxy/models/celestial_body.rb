# frozen_string_literal: true

module DemoApiScalarGalaxy
  module Models
    # A celestial body which can be either a planet or a satellite
    #
    # @see DemoApiScalarGalaxy::Resources::CelestialBodies#create
    module CelestialBody
      extend DemoApiScalarGalaxy::Internal::Type::Union

      discriminator :type

      variant :planet, -> { DemoApiScalarGalaxy::Planet }

      variant :satellite, -> { DemoApiScalarGalaxy::Satellite }

      # @!method self.variants
      #   @return [Array(DemoApiScalarGalaxy::Models::Planet, DemoApiScalarGalaxy::Models::Satellite)]
    end
  end
end
