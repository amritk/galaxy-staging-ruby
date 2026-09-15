# typed: strong

module DemoApiScalarGalaxy
  module Models
    class AuthenticationCreateUserParams < DemoApiScalarGalaxy::Internal::Type::BaseModel
      extend DemoApiScalarGalaxy::Internal::Type::RequestParameters::Converter
      include DemoApiScalarGalaxy::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            DemoApiScalarGalaxy::AuthenticationCreateUserParams,
            DemoApiScalarGalaxy::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :email

      sig { returns(String) }
      attr_accessor :password

      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      sig do
        params(
          email: String,
          password: String,
          name: String,
          request_options: DemoApiScalarGalaxy::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(email:, password:, name: nil, request_options: {})
      end

      sig do
        override.returns(
          {
            email: String,
            password: String,
            name: String,
            request_options: DemoApiScalarGalaxy::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
