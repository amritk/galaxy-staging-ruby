# frozen_string_literal: true

module DemoApiScalarGalaxy
  module Resources
    # Everything about planets
    class Planets
      # Time to play god and create a new planet. What do you think? Ah, don't think too
      # much. What could go wrong anyway?
      #
      # @overload create(id:, name:, type:, atmosphere: nil, creator: nil, description: nil, discovered_at: nil, failure_callback_url: nil, habitability_index: nil, image: nil, last_updated: nil, physical_properties: nil, satellites: nil, success_callback_url: nil, tags: nil, request_options: {})
      #
      # @param id [Integer]
      #
      # @param name [String]
      #
      # @param type [Symbol, DemoApiScalarGalaxy::Models::Planet::Type]
      #
      # @param atmosphere [Array<DemoApiScalarGalaxy::Models::Planet::Atmosphere>] Atmospheric composition
      #
      # @param creator [DemoApiScalarGalaxy::Models::User] A user
      #
      # @param description [String, nil]
      #
      # @param discovered_at [Time]
      #
      # @param failure_callback_url [String] URL which gets invoked upon a failed operation
      #
      # @param habitability_index [Float] A score from 0 to 1 indicating potential habitability
      #
      # @param image [String, nil]
      #
      # @param last_updated [Time]
      #
      # @param physical_properties [DemoApiScalarGalaxy::Models::Planet::PhysicalProperties]
      #
      # @param satellites [Array<DemoApiScalarGalaxy::Models::Satellite>]
      #
      # @param success_callback_url [String] URL which gets invoked upon a successful operation
      #
      # @param tags [Array<String>]
      #
      # @param request_options [DemoApiScalarGalaxy::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [DemoApiScalarGalaxy::Models::Planet]
      #
      # @see DemoApiScalarGalaxy::Models::PlanetCreateParams
      def create(params)
        parsed, options = DemoApiScalarGalaxy::PlanetCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "planets",
          body: parsed,
          model: DemoApiScalarGalaxy::Planet,
          options: options
        )
      end

      # You'll better learn a little bit more about the planets. It might come in handy
      # once space travel is available for everyone.
      #
      # @overload retrieve(planet_id, request_options: {})
      #
      # @param planet_id [Integer] The ID of the planet to get
      #
      # @param request_options [DemoApiScalarGalaxy::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [DemoApiScalarGalaxy::Models::Planet]
      #
      # @see DemoApiScalarGalaxy::Models::PlanetRetrieveParams
      def retrieve(planet_id, params = {})
        @client.request(
          method: :get,
          path: ["planets/%1$s", planet_id],
          model: DemoApiScalarGalaxy::Planet,
          options: params[:request_options]
        )
      end

      # Sometimes you make mistakes, that's fine. No worries, you can update all
      # planets.
      #
      # @overload update(planet_id, id:, name:, type:, atmosphere: nil, creator: nil, description: nil, discovered_at: nil, failure_callback_url: nil, habitability_index: nil, image: nil, last_updated: nil, physical_properties: nil, satellites: nil, success_callback_url: nil, tags: nil, request_options: {})
      #
      # @param planet_id [Integer] The ID of the planet to get
      #
      # @param id [Integer]
      #
      # @param name [String]
      #
      # @param type [Symbol, DemoApiScalarGalaxy::Models::Planet::Type]
      #
      # @param atmosphere [Array<DemoApiScalarGalaxy::Models::Planet::Atmosphere>] Atmospheric composition
      #
      # @param creator [DemoApiScalarGalaxy::Models::User] A user
      #
      # @param description [String, nil]
      #
      # @param discovered_at [Time]
      #
      # @param failure_callback_url [String] URL which gets invoked upon a failed operation
      #
      # @param habitability_index [Float] A score from 0 to 1 indicating potential habitability
      #
      # @param image [String, nil]
      #
      # @param last_updated [Time]
      #
      # @param physical_properties [DemoApiScalarGalaxy::Models::Planet::PhysicalProperties]
      #
      # @param satellites [Array<DemoApiScalarGalaxy::Models::Satellite>]
      #
      # @param success_callback_url [String] URL which gets invoked upon a successful operation
      #
      # @param tags [Array<String>]
      #
      # @param request_options [DemoApiScalarGalaxy::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [DemoApiScalarGalaxy::Models::Planet]
      #
      # @see DemoApiScalarGalaxy::Models::PlanetUpdateParams
      def update(planet_id, params)
        parsed, options = DemoApiScalarGalaxy::PlanetUpdateParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["planets/%1$s", planet_id],
          body: parsed,
          model: DemoApiScalarGalaxy::Planet,
          options: options
        )
      end

      # It's easy to say you know them all, but do you really? Retrieve all the planets
      # and check whether you missed one.
      #
      # @overload list(limit: nil, offset: nil, request_options: {})
      #
      # @param limit [Integer] The number of items to return
      #
      # @param offset [Integer] The number of items to skip before starting to collect the result set
      #
      # @param request_options [DemoApiScalarGalaxy::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [DemoApiScalarGalaxy::Models::PlanetListResponse]
      #
      # @see DemoApiScalarGalaxy::Models::PlanetListParams
      def list(params = {})
        parsed, options = DemoApiScalarGalaxy::PlanetListParams.dump_request(params)
        query = DemoApiScalarGalaxy::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "planets",
          query: query,
          model: DemoApiScalarGalaxy::Models::PlanetListResponse,
          options: options
        )
      end

      # This endpoint was used to delete planets. Unfortunately, that caused a lot of
      # trouble for planets with life. So, this endpoint is now deprecated and should
      # not be used anymore.
      #
      # @overload delete(planet_id, request_options: {})
      #
      # @param planet_id [Integer] The ID of the planet to get
      #
      # @param request_options [DemoApiScalarGalaxy::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see DemoApiScalarGalaxy::Models::PlanetDeleteParams
      def delete(planet_id, params = {})
        @client.request(
          method: :delete,
          path: ["planets/%1$s", planet_id],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # Got a crazy good photo of a planet? Share it with the world!
      #
      # @overload upload_image(planet_id, image: nil, request_options: {})
      #
      # @param planet_id [Integer] The ID of the planet to get
      #
      # @param image [Pathname, StringIO, IO, String, DemoApiScalarGalaxy::FilePart] The image file to upload
      #
      # @param request_options [DemoApiScalarGalaxy::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [DemoApiScalarGalaxy::Models::PlanetUploadImageResponse]
      #
      # @see DemoApiScalarGalaxy::Models::PlanetUploadImageParams
      def upload_image(planet_id, params = {})
        parsed, options = DemoApiScalarGalaxy::PlanetUploadImageParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["planets/%1$s/image", planet_id],
          headers: {
            "content-type" => "multipart/form-data"
          },
          body: parsed,
          model: DemoApiScalarGalaxy::Models::PlanetUploadImageResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [DemoApiScalarGalaxy::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
