# typed: strong

module DemoApiScalarGalaxy
  module Models
    class Satellite < DemoApiScalarGalaxy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            DemoApiScalarGalaxy::Satellite,
            DemoApiScalarGalaxy::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :name

      sig { returns(DemoApiScalarGalaxy::Satellite::Type::OrSymbol) }
      attr_accessor :type

      sig { returns(T.nilable(Integer)) }
      attr_reader :id

      sig { params(id: Integer).void }
      attr_writer :id

      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # Diameter in kilometers
      sig { returns(T.nilable(Float)) }
      attr_reader :diameter

      sig { params(diameter: Float).void }
      attr_writer :diameter

      sig { returns(T.nilable(DemoApiScalarGalaxy::Satellite::Orbit)) }
      attr_reader :orbit

      sig { params(orbit: DemoApiScalarGalaxy::Satellite::Orbit::OrHash).void }
      attr_writer :orbit

      # Every satellite in the Scalar Galaxy
      sig do
        params(
          name: String,
          type: DemoApiScalarGalaxy::Satellite::Type::OrSymbol,
          id: Integer,
          description: T.nilable(String),
          diameter: Float,
          orbit: DemoApiScalarGalaxy::Satellite::Orbit::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        name:,
        type:,
        id: nil,
        description: nil,
        # Diameter in kilometers
        diameter: nil,
        orbit: nil
      )
      end

      sig do
        override.returns(
          {
            name: String,
            type: DemoApiScalarGalaxy::Satellite::Type::OrSymbol,
            id: Integer,
            description: T.nilable(String),
            diameter: Float,
            orbit: DemoApiScalarGalaxy::Satellite::Orbit
          }
        )
      end
      def to_hash
      end

      module Type
        extend DemoApiScalarGalaxy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, DemoApiScalarGalaxy::Satellite::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SATELLITE =
          T.let(:satellite, DemoApiScalarGalaxy::Satellite::Type::TaggedSymbol)
        MOON = T.let(:moon, DemoApiScalarGalaxy::Satellite::Type::TaggedSymbol)
        ASTEROID =
          T.let(:asteroid, DemoApiScalarGalaxy::Satellite::Type::TaggedSymbol)
        COMET =
          T.let(:comet, DemoApiScalarGalaxy::Satellite::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[DemoApiScalarGalaxy::Satellite::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class Orbit < DemoApiScalarGalaxy::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              DemoApiScalarGalaxy::Satellite::Orbit,
              DemoApiScalarGalaxy::Internal::AnyHash
            )
          end

        # Average distance from the planet in kilometers
        sig { returns(T.nilable(Float)) }
        attr_reader :distance

        sig { params(distance: Float).void }
        attr_writer :distance

        # Orbital period in Earth days
        sig { returns(T.nilable(Float)) }
        attr_reader :orbital_period

        sig { params(orbital_period: Float).void }
        attr_writer :orbital_period

        # The ID of the planet this satellite orbits
        sig { returns(T.nilable(Integer)) }
        attr_reader :planet_id

        sig { params(planet_id: Integer).void }
        attr_writer :planet_id

        sig do
          params(
            distance: Float,
            orbital_period: Float,
            planet_id: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # Average distance from the planet in kilometers
          distance: nil,
          # Orbital period in Earth days
          orbital_period: nil,
          # The ID of the planet this satellite orbits
          planet_id: nil
        )
        end

        sig do
          override.returns(
            { distance: Float, orbital_period: Float, planet_id: Integer }
          )
        end
        def to_hash
        end
      end
    end
  end
end
