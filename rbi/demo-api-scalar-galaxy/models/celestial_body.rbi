# typed: strong

module DemoApiScalarGalaxy
  module Models
    # A celestial body which can be either a planet or a satellite
    module CelestialBody
      extend DemoApiScalarGalaxy::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(DemoApiScalarGalaxy::Planet, DemoApiScalarGalaxy::Satellite)
        end

      sig do
        override.returns(T::Array[DemoApiScalarGalaxy::CelestialBody::Variants])
      end
      def self.variants
      end
    end
  end
end
