# typed: strong

module DemoApiScalarGalaxy
  module Models
    class PlanetUpdateParams < DemoApiScalarGalaxy::Models::Planet
      extend DemoApiScalarGalaxy::Internal::Type::RequestParameters::Converter
      include DemoApiScalarGalaxy::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            DemoApiScalarGalaxy::PlanetUpdateParams,
            DemoApiScalarGalaxy::Internal::AnyHash
          )
        end

      sig { returns(Integer) }
      attr_accessor :planet_id

      sig do
        params(
          planet_id: Integer,
          request_options: DemoApiScalarGalaxy::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(planet_id:, request_options: {})
      end

      sig do
        override.returns(
          {
            planet_id: Integer,
            request_options: DemoApiScalarGalaxy::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
