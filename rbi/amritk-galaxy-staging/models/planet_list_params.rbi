# typed: strong

module DemoApiScalarGalaxy
  module Models
    class PlanetListParams < DemoApiScalarGalaxy::Internal::Type::BaseModel
      extend DemoApiScalarGalaxy::Internal::Type::RequestParameters::Converter
      include DemoApiScalarGalaxy::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            DemoApiScalarGalaxy::PlanetListParams,
            DemoApiScalarGalaxy::Internal::AnyHash
          )
        end

      # The number of items to return
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      # The number of items to skip before starting to collect the result set
      sig { returns(T.nilable(Integer)) }
      attr_reader :offset

      sig { params(offset: Integer).void }
      attr_writer :offset

      sig do
        params(
          limit: Integer,
          offset: Integer,
          request_options: DemoApiScalarGalaxy::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The number of items to return
        limit: nil,
        # The number of items to skip before starting to collect the result set
        offset: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            limit: Integer,
            offset: Integer,
            request_options: DemoApiScalarGalaxy::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
