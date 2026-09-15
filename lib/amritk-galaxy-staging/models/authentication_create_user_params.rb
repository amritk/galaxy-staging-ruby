# frozen_string_literal: true

module DemoApiScalarGalaxy
  module Models
    # @see DemoApiScalarGalaxy::Resources::Authentication#create_user
    class AuthenticationCreateUserParams < DemoApiScalarGalaxy::Internal::Type::BaseModel
      extend DemoApiScalarGalaxy::Internal::Type::RequestParameters::Converter
      include DemoApiScalarGalaxy::Internal::Type::RequestParameters

      # @!attribute email
      #
      #   @return [String]
      required :email, String

      # @!attribute password
      #
      #   @return [String]
      required :password, String

      # @!attribute name
      #
      #   @return [String, nil]
      optional :name, String

      # @!method initialize(email:, password:, name: nil, request_options: {})
      #   @param email [String]
      #   @param password [String]
      #   @param name [String]
      #   @param request_options [DemoApiScalarGalaxy::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
