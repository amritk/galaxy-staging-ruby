# frozen_string_literal: true

module DemoApiScalarGalaxy
  module Models
    # @see DemoApiScalarGalaxy::Resources::Authentication#create_user
    class User < DemoApiScalarGalaxy::Internal::Type::BaseModel
      # @!attribute name
      #
      #   @return [String, nil]
      optional :name, String

      response_only do
        # @!attribute id
        #
        #   @return [Integer, nil]
        optional :id, Integer
      end

      # @!method initialize(id: nil, name: nil)
      #   A user
      #
      #   @param id [Integer]
      #   @param name [String]
    end
  end
end
