# frozen_string_literal: true

module DemoApiScalarGalaxy
  module Models
    class PaginatedResource < DemoApiScalarGalaxy::Internal::Type::BaseModel
      # @!attribute meta
      #
      #   @return [DemoApiScalarGalaxy::Models::PaginatedResource::Meta, nil]
      optional :meta, -> { DemoApiScalarGalaxy::PaginatedResource::Meta }

      # @!method initialize(meta: nil)
      #   A paginated resource
      #
      #   @param meta [DemoApiScalarGalaxy::Models::PaginatedResource::Meta]

      # @see DemoApiScalarGalaxy::Models::PaginatedResource#meta
      class Meta < DemoApiScalarGalaxy::Internal::Type::BaseModel
        # @!attribute limit
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!attribute next_
        #
        #   @return [String, nil]
        optional :next_, String, api_name: :next, nil?: true

        # @!attribute offset
        #
        #   @return [Integer, nil]
        optional :offset, Integer

        # @!attribute total
        #
        #   @return [Integer, nil]
        optional :total, Integer

        # @!method initialize(limit: nil, next_: nil, offset: nil, total: nil)
        #   @param limit [Integer]
        #   @param next_ [String, nil]
        #   @param offset [Integer]
        #   @param total [Integer]
      end
    end
  end
end
