# frozen_string_literal: true

module DemoApiScalarGalaxy
  module Models
    # @see DemoApiScalarGalaxy::Resources::Planets#list
    class PlanetListResponse < DemoApiScalarGalaxy::Models::PaginatedResource
      # @!attribute data
      #
      #   @return [Array<DemoApiScalarGalaxy::Models::Planet>, nil]
      optional :data, -> { DemoApiScalarGalaxy::Internal::Type::ArrayOf[DemoApiScalarGalaxy::Planet] }

      # @!method initialize(data: nil)
      #   @param data [Array<DemoApiScalarGalaxy::Models::Planet>]
    end
  end
end
