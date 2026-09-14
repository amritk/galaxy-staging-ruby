# frozen_string_literal: true

module DemoApiScalarGalaxy
  module Models
    # @see DemoApiScalarGalaxy::Resources::Authentication#create_token
    class Token < DemoApiScalarGalaxy::Internal::Type::BaseModel
      # @!attribute token
      #
      #   @return [String, nil]
      optional :token, String

      # @!method initialize(token: nil)
      #   A token to authenticate a user
      #
      #   @param token [String]
    end
  end
end
