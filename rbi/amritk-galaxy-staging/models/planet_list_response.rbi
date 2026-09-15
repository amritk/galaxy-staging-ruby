# typed: strong

module DemoApiScalarGalaxy
  module Models
    class PlanetListResponse < DemoApiScalarGalaxy::Models::PaginatedResource
      OrHash =
        T.type_alias do
          T.any(
            DemoApiScalarGalaxy::Models::PlanetListResponse,
            DemoApiScalarGalaxy::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(T::Array[DemoApiScalarGalaxy::Planet])) }
      attr_reader :data

      sig { params(data: T::Array[DemoApiScalarGalaxy::Planet::OrHash]).void }
      attr_writer :data

      sig do
        params(data: T::Array[DemoApiScalarGalaxy::Planet::OrHash]).returns(
          T.attached_class
        )
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: T::Array[DemoApiScalarGalaxy::Planet] }) }
      def to_hash
      end
    end
  end
end
