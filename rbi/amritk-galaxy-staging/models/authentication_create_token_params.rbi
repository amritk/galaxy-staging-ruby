# typed: strong

module DemoApiScalarGalaxy
  module Models
    class AuthenticationCreateTokenParams < DemoApiScalarGalaxy::Internal::Type::BaseModel
      extend DemoApiScalarGalaxy::Internal::Type::RequestParameters::Converter
      include DemoApiScalarGalaxy::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            DemoApiScalarGalaxy::AuthenticationCreateTokenParams,
            DemoApiScalarGalaxy::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :email

      sig { returns(String) }
      attr_accessor :password

      sig do
        params(
          email: String,
          password: String,
          request_options: DemoApiScalarGalaxy::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(email:, password:, request_options: {})
      end

      sig do
        override.returns(
          {
            email: String,
            password: String,
            request_options: DemoApiScalarGalaxy::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
