# frozen_string_literal: true

module DemoApiScalarGalaxy
  module Models
    module UnwrapWebhookEvent
      extend DemoApiScalarGalaxy::Internal::Type::Union

      variant -> { DemoApiScalarGalaxy::NewPlanetWebhookEvent }

      # @!method self.variants
      #   @return [Array(DemoApiScalarGalaxy::Models::NewPlanetWebhookEvent)]
    end
  end
end
