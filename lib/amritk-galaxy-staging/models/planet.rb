# frozen_string_literal: true

module DemoApiScalarGalaxy
  module Models
    # @see DemoApiScalarGalaxy::Resources::Planets#create
    class Planet < DemoApiScalarGalaxy::Internal::Type::BaseModel
      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!attribute type
      #
      #   @return [Symbol, DemoApiScalarGalaxy::Models::Planet::Type]
      required :type, enum: -> { DemoApiScalarGalaxy::Planet::Type }

      # @!attribute atmosphere
      #   Atmospheric composition
      #
      #   @return [Array<DemoApiScalarGalaxy::Models::Planet::Atmosphere>, nil]
      optional :atmosphere,
               -> { DemoApiScalarGalaxy::Internal::Type::ArrayOf[DemoApiScalarGalaxy::Planet::Atmosphere] }

      # @!attribute creator
      #   A user
      #
      #   @return [DemoApiScalarGalaxy::Models::User, nil]
      optional :creator, -> { DemoApiScalarGalaxy::User }

      # @!attribute description
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute discovered_at
      #
      #   @return [Time, nil]
      optional :discovered_at, Time, api_name: :discoveredAt

      # @!attribute failure_callback_url
      #   URL which gets invoked upon a failed operation
      #
      #   @return [String, nil]
      optional :failure_callback_url, String, api_name: :failureCallbackUrl

      # @!attribute habitability_index
      #   A score from 0 to 1 indicating potential habitability
      #
      #   @return [Float, nil]
      optional :habitability_index, Float, api_name: :habitabilityIndex

      # @!attribute image
      #
      #   @return [String, nil]
      optional :image, String, nil?: true

      # @!attribute physical_properties
      #
      #   @return [DemoApiScalarGalaxy::Models::Planet::PhysicalProperties, nil]
      optional :physical_properties,
               -> { DemoApiScalarGalaxy::Planet::PhysicalProperties },
               api_name: :physicalProperties

      # @!attribute satellites
      #
      #   @return [Array<DemoApiScalarGalaxy::Models::Satellite>, nil]
      optional :satellites,
               -> { DemoApiScalarGalaxy::Internal::Type::ArrayOf[DemoApiScalarGalaxy::Satellite] }

      # @!attribute success_callback_url
      #   URL which gets invoked upon a successful operation
      #
      #   @return [String, nil]
      optional :success_callback_url, String, api_name: :successCallbackUrl

      # @!attribute tags
      #
      #   @return [Array<String>, nil]
      optional :tags, DemoApiScalarGalaxy::Internal::Type::ArrayOf[String]

      response_only do
        # @!attribute id
        #
        #   @return [Integer]
        required :id, Integer

        # @!attribute last_updated
        #
        #   @return [Time, nil]
        optional :last_updated, Time, api_name: :lastUpdated
      end

      # @!method initialize(id:, name:, type:, atmosphere: nil, creator: nil, description: nil, discovered_at: nil, failure_callback_url: nil, habitability_index: nil, image: nil, last_updated: nil, physical_properties: nil, satellites: nil, success_callback_url: nil, tags: nil)
      #   A planet in the Scalar Galaxy
      #
      #   @param id [Integer]
      #
      #   @param name [String]
      #
      #   @param type [Symbol, DemoApiScalarGalaxy::Models::Planet::Type]
      #
      #   @param atmosphere [Array<DemoApiScalarGalaxy::Models::Planet::Atmosphere>] Atmospheric composition
      #
      #   @param creator [DemoApiScalarGalaxy::Models::User] A user
      #
      #   @param description [String, nil]
      #
      #   @param discovered_at [Time]
      #
      #   @param failure_callback_url [String] URL which gets invoked upon a failed operation
      #
      #   @param habitability_index [Float] A score from 0 to 1 indicating potential habitability
      #
      #   @param image [String, nil]
      #
      #   @param last_updated [Time]
      #
      #   @param physical_properties [DemoApiScalarGalaxy::Models::Planet::PhysicalProperties]
      #
      #   @param satellites [Array<DemoApiScalarGalaxy::Models::Satellite>]
      #
      #   @param success_callback_url [String] URL which gets invoked upon a successful operation
      #
      #   @param tags [Array<String>]

      # @see DemoApiScalarGalaxy::Models::Planet#type
      module Type
        extend DemoApiScalarGalaxy::Internal::Type::Enum

        PLANET = :planet
        TERRESTRIAL = :terrestrial
        GAS_GIANT = :gas_giant
        ICE_GIANT = :ice_giant
        DWARF = :dwarf
        SUPER_EARTH = :super_earth

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class Atmosphere < DemoApiScalarGalaxy::Internal::Type::BaseModel
        # @!attribute compound
        #
        #   @return [String, nil]
        optional :compound, String

        # @!attribute percentage
        #
        #   @return [Float, nil]
        optional :percentage, Float

        # @!method initialize(compound: nil, percentage: nil)
        #   @param compound [String]
        #   @param percentage [Float]
      end

      # @see DemoApiScalarGalaxy::Models::Planet#physical_properties
      class PhysicalProperties < DemoApiScalarGalaxy::Internal::Type::BaseModel
        # @!attribute gravity
        #   Surface gravity in Earth g
        #
        #   @return [Float, nil]
        optional :gravity, Float

        # @!attribute mass
        #   Mass in Earth masses (must be greater than 0)
        #
        #   @return [Float, nil]
        optional :mass, Float

        # @!attribute radius
        #   Radius in Earth radii (must be greater than 0)
        #
        #   @return [Float, nil]
        optional :radius, Float

        # @!attribute temperature
        #
        #   @return [DemoApiScalarGalaxy::Models::Planet::PhysicalProperties::Temperature, nil]
        optional :temperature, -> { DemoApiScalarGalaxy::Planet::PhysicalProperties::Temperature }

        # @!method initialize(gravity: nil, mass: nil, radius: nil, temperature: nil)
        #   @param gravity [Float] Surface gravity in Earth g
        #
        #   @param mass [Float] Mass in Earth masses (must be greater than 0)
        #
        #   @param radius [Float] Radius in Earth radii (must be greater than 0)
        #
        #   @param temperature [DemoApiScalarGalaxy::Models::Planet::PhysicalProperties::Temperature]

        # @see DemoApiScalarGalaxy::Models::Planet::PhysicalProperties#temperature
        class Temperature < DemoApiScalarGalaxy::Internal::Type::BaseModel
          # @!attribute average
          #   Average temperature in Kelvin
          #
          #   @return [Float, nil]
          optional :average, Float

          # @!attribute max
          #   Maximum temperature in Kelvin
          #
          #   @return [Float, nil]
          optional :max, Float

          # @!attribute min
          #   Minimum temperature in Kelvin
          #
          #   @return [Float, nil]
          optional :min, Float

          # @!method initialize(average: nil, max: nil, min: nil)
          #   @param average [Float] Average temperature in Kelvin
          #
          #   @param max [Float] Maximum temperature in Kelvin
          #
          #   @param min [Float] Minimum temperature in Kelvin
        end
      end
    end
  end
end
