# frozen_string_literal: true

module DemoApiScalarGalaxy
  module Resources
    # Celestial bodies are the planets and satellites in the Scalar Galaxy.
    class CelestialBodies
      # Create a celestial body
      #
      # @overload create(celestial_body:, request_options: {})
      #
      # @param celestial_body [DemoApiScalarGalaxy::Models::Planet, DemoApiScalarGalaxy::Models::Satellite]
      # @param request_options [DemoApiScalarGalaxy::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [DemoApiScalarGalaxy::Models::Planet, DemoApiScalarGalaxy::Models::Satellite]
      #
      # @see DemoApiScalarGalaxy::Models::CelestialBodyCreateParams
      def create(params)
        parsed, options = DemoApiScalarGalaxy::CelestialBodyCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "celestial-bodies",
          body: parsed[:celestial_body],
          model: DemoApiScalarGalaxy::CelestialBody,
          options: options
        )
      end

      # @api private
      #
      # @param client [DemoApiScalarGalaxy::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
