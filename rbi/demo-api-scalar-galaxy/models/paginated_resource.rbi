# typed: strong

module DemoApiScalarGalaxy
  module Models
    class PaginatedResource < DemoApiScalarGalaxy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            DemoApiScalarGalaxy::PaginatedResource,
            DemoApiScalarGalaxy::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(DemoApiScalarGalaxy::PaginatedResource::Meta)) }
      attr_reader :meta

      sig do
        params(meta: DemoApiScalarGalaxy::PaginatedResource::Meta::OrHash).void
      end
      attr_writer :meta

      # A paginated resource
      sig do
        params(
          meta: DemoApiScalarGalaxy::PaginatedResource::Meta::OrHash
        ).returns(T.attached_class)
      end
      def self.new(meta: nil)
      end

      sig do
        override.returns({ meta: DemoApiScalarGalaxy::PaginatedResource::Meta })
      end
      def to_hash
      end

      class Meta < DemoApiScalarGalaxy::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              DemoApiScalarGalaxy::PaginatedResource::Meta,
              DemoApiScalarGalaxy::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        sig { returns(T.nilable(String)) }
        attr_accessor :next_

        sig { returns(T.nilable(Integer)) }
        attr_reader :offset

        sig { params(offset: Integer).void }
        attr_writer :offset

        sig { returns(T.nilable(Integer)) }
        attr_reader :total

        sig { params(total: Integer).void }
        attr_writer :total

        sig do
          params(
            limit: Integer,
            next_: T.nilable(String),
            offset: Integer,
            total: Integer
          ).returns(T.attached_class)
        end
        def self.new(limit: nil, next_: nil, offset: nil, total: nil)
        end

        sig do
          override.returns(
            {
              limit: Integer,
              next_: T.nilable(String),
              offset: Integer,
              total: Integer
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
