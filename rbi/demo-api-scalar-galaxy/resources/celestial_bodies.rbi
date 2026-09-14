# typed: strong

module DemoApiScalarGalaxy
  module Resources
    # Celestial bodies are the planets and satellites in the Scalar Galaxy.
    class CelestialBodies
      # Create a celestial body
      sig do
        params(
          celestial_body:
            T.any(
              DemoApiScalarGalaxy::Planet::OrHash,
              DemoApiScalarGalaxy::Satellite::OrHash
            ),
          request_options: DemoApiScalarGalaxy::RequestOptions::OrHash
        ).returns(DemoApiScalarGalaxy::CelestialBody::Variants)
      end
      def create(celestial_body:, request_options: {})
      end

      # @api private
      sig do
        params(client: DemoApiScalarGalaxy::Client).returns(T.attached_class)
      end
      def self.new(client:)
      end
    end
  end
end
