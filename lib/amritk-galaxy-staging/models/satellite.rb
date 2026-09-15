# frozen_string_literal: true

module DemoApiScalarGalaxy
  module Models
    class Satellite < DemoApiScalarGalaxy::Internal::Type::BaseModel
      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!attribute type
      #
      #   @return [Symbol, DemoApiScalarGalaxy::Models::Satellite::Type]
      required :type, enum: -> { DemoApiScalarGalaxy::Satellite::Type }

      # @!attribute description
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute diameter
      #   Diameter in kilometers
      #
      #   @return [Float, nil]
      optional :diameter, Float

      # @!attribute orbit
      #
      #   @return [DemoApiScalarGalaxy::Models::Satellite::Orbit, nil]
      optional :orbit, -> { DemoApiScalarGalaxy::Satellite::Orbit }

      response_only do
        # @!attribute id
        #
        #   @return [Integer, nil]
        optional :id, Integer
      end

      # @!method initialize(name:, type:, id: nil, description: nil, diameter: nil, orbit: nil)
      #   Every satellite in the Scalar Galaxy
      #
      #   @param name [String]
      #
      #   @param type [Symbol, DemoApiScalarGalaxy::Models::Satellite::Type]
      #
      #   @param id [Integer]
      #
      #   @param description [String, nil]
      #
      #   @param diameter [Float] Diameter in kilometers
      #
      #   @param orbit [DemoApiScalarGalaxy::Models::Satellite::Orbit]

      # @see DemoApiScalarGalaxy::Models::Satellite#type
      module Type
        extend DemoApiScalarGalaxy::Internal::Type::Enum

        SATELLITE = :satellite
        MOON = :moon
        ASTEROID = :asteroid
        COMET = :comet

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see DemoApiScalarGalaxy::Models::Satellite#orbit
      class Orbit < DemoApiScalarGalaxy::Internal::Type::BaseModel
        # @!attribute distance
        #   Average distance from the planet in kilometers
        #
        #   @return [Float, nil]
        optional :distance, Float

        # @!attribute orbital_period
        #   Orbital period in Earth days
        #
        #   @return [Float, nil]
        optional :orbital_period, Float, api_name: :orbitalPeriod

        # @!attribute planet_id
        #   The ID of the planet this satellite orbits
        #
        #   @return [Integer, nil]
        optional :planet_id, Integer, api_name: :planetId

        # @!method initialize(distance: nil, orbital_period: nil, planet_id: nil)
        #   @param distance [Float] Average distance from the planet in kilometers
        #
        #   @param orbital_period [Float] Orbital period in Earth days
        #
        #   @param planet_id [Integer] The ID of the planet this satellite orbits
      end
    end
  end
end
