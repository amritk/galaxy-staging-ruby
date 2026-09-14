# typed: strong

module DemoApiScalarGalaxy
  module Models
    class CelestialBodyCreateParams < DemoApiScalarGalaxy::Internal::Type::BaseModel
      extend DemoApiScalarGalaxy::Internal::Type::RequestParameters::Converter
      include DemoApiScalarGalaxy::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            DemoApiScalarGalaxy::CelestialBodyCreateParams,
            DemoApiScalarGalaxy::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.any(DemoApiScalarGalaxy::Planet, DemoApiScalarGalaxy::Satellite)
        )
      end
      attr_accessor :celestial_body

      sig do
        params(
          celestial_body:
            T.any(
              DemoApiScalarGalaxy::Planet::OrHash,
              DemoApiScalarGalaxy::Satellite::OrHash
            ),
          request_options: DemoApiScalarGalaxy::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(celestial_body:, request_options: {})
      end

      sig do
        override.returns(
          {
            celestial_body:
              T.any(
                DemoApiScalarGalaxy::Planet,
                DemoApiScalarGalaxy::Satellite
              ),
            request_options: DemoApiScalarGalaxy::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
