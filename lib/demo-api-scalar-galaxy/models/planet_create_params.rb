# frozen_string_literal: true

module DemoApiScalarGalaxy
  module Models
    # @see DemoApiScalarGalaxy::Resources::Planets#create
    class PlanetCreateParams < DemoApiScalarGalaxy::Models::Planet
      extend DemoApiScalarGalaxy::Internal::Type::RequestParameters::Converter
      include DemoApiScalarGalaxy::Internal::Type::RequestParameters

      # @!method initialize(request_options: {})
      #   @param request_options [DemoApiScalarGalaxy::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
