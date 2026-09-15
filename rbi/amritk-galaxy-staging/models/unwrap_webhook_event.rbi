# typed: strong

module DemoApiScalarGalaxy
  module Models
    module UnwrapWebhookEvent
      extend DemoApiScalarGalaxy::Internal::Type::Union

      Variants =
        T.type_alias { T.any(DemoApiScalarGalaxy::NewPlanetWebhookEvent) }

      sig do
        override.returns(
          T::Array[DemoApiScalarGalaxy::UnwrapWebhookEvent::Variants]
        )
      end
      def self.variants
      end
    end
  end
end
