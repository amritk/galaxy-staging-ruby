# typed: strong

module DemoApiScalarGalaxy
  module Models
    class NewPlanetWebhookEvent < DemoApiScalarGalaxy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            DemoApiScalarGalaxy::NewPlanetWebhookEvent,
            DemoApiScalarGalaxy::Internal::AnyHash
          )
        end

      sig { returns(T.attached_class) }
      def self.new
      end

      sig { override.returns({}) }
      def to_hash
      end
    end
  end
end
