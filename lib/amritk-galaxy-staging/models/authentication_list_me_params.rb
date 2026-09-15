# frozen_string_literal: true

module DemoApiScalarGalaxy
  module Models
    # @see DemoApiScalarGalaxy::Resources::Authentication#list_me
    class AuthenticationListMeParams < DemoApiScalarGalaxy::Internal::Type::BaseModel
      extend DemoApiScalarGalaxy::Internal::Type::RequestParameters::Converter
      include DemoApiScalarGalaxy::Internal::Type::RequestParameters

      # @!method initialize(request_options: {})
      #   @param request_options [DemoApiScalarGalaxy::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
