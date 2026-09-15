# typed: strong

module DemoApiScalarGalaxy
  module Models
    class PlanetCreateParams < DemoApiScalarGalaxy::Models::Planet
      extend DemoApiScalarGalaxy::Internal::Type::RequestParameters::Converter
      include DemoApiScalarGalaxy::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            DemoApiScalarGalaxy::PlanetCreateParams,
            DemoApiScalarGalaxy::Internal::AnyHash
          )
        end

      sig do
        params(
          request_options: DemoApiScalarGalaxy::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(request_options: {})
      end

      sig do
        override.returns(
          { request_options: DemoApiScalarGalaxy::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
