# typed: strong

module DemoApiScalarGalaxy
  module Resources
    # Everything about planets
    class Planets
      # Time to play god and create a new planet. What do you think? Ah, don't think too
      # much. What could go wrong anyway?
      sig do
        params(
          id: Integer,
          name: String,
          type: DemoApiScalarGalaxy::Planet::Type::OrSymbol,
          atmosphere: T::Array[DemoApiScalarGalaxy::Planet::Atmosphere::OrHash],
          creator: DemoApiScalarGalaxy::User::OrHash,
          description: T.nilable(String),
          discovered_at: Time,
          failure_callback_url: String,
          habitability_index: Float,
          image: T.nilable(String),
          last_updated: Time,
          physical_properties:
            DemoApiScalarGalaxy::Planet::PhysicalProperties::OrHash,
          satellites: T::Array[DemoApiScalarGalaxy::Satellite::OrHash],
          success_callback_url: String,
          tags: T::Array[String],
          request_options: DemoApiScalarGalaxy::RequestOptions::OrHash
        ).returns(DemoApiScalarGalaxy::Planet)
      end
      def create(
        id:,
        name:,
        type:,
        # Atmospheric composition
        atmosphere: nil,
        # A user
        creator: nil,
        description: nil,
        discovered_at: nil,
        # URL which gets invoked upon a failed operation
        failure_callback_url: nil,
        # A score from 0 to 1 indicating potential habitability
        habitability_index: nil,
        image: nil,
        last_updated: nil,
        physical_properties: nil,
        satellites: nil,
        # URL which gets invoked upon a successful operation
        success_callback_url: nil,
        tags: nil,
        request_options: {}
      )
      end

      # You'll better learn a little bit more about the planets. It might come in handy
      # once space travel is available for everyone.
      sig do
        params(
          planet_id: Integer,
          request_options: DemoApiScalarGalaxy::RequestOptions::OrHash
        ).returns(DemoApiScalarGalaxy::Planet)
      end
      def retrieve(
        # The ID of the planet to get
        planet_id,
        request_options: {}
      )
      end

      # Sometimes you make mistakes, that's fine. No worries, you can update all
      # planets.
      sig do
        params(
          planet_id: Integer,
          id: Integer,
          name: String,
          type: DemoApiScalarGalaxy::Planet::Type::OrSymbol,
          atmosphere: T::Array[DemoApiScalarGalaxy::Planet::Atmosphere::OrHash],
          creator: DemoApiScalarGalaxy::User::OrHash,
          description: T.nilable(String),
          discovered_at: Time,
          failure_callback_url: String,
          habitability_index: Float,
          image: T.nilable(String),
          last_updated: Time,
          physical_properties:
            DemoApiScalarGalaxy::Planet::PhysicalProperties::OrHash,
          satellites: T::Array[DemoApiScalarGalaxy::Satellite::OrHash],
          success_callback_url: String,
          tags: T::Array[String],
          request_options: DemoApiScalarGalaxy::RequestOptions::OrHash
        ).returns(DemoApiScalarGalaxy::Planet)
      end
      def update(
        # The ID of the planet to get
        planet_id,
        id:,
        name:,
        type:,
        # Atmospheric composition
        atmosphere: nil,
        # A user
        creator: nil,
        description: nil,
        discovered_at: nil,
        # URL which gets invoked upon a failed operation
        failure_callback_url: nil,
        # A score from 0 to 1 indicating potential habitability
        habitability_index: nil,
        image: nil,
        last_updated: nil,
        physical_properties: nil,
        satellites: nil,
        # URL which gets invoked upon a successful operation
        success_callback_url: nil,
        tags: nil,
        request_options: {}
      )
      end

      # It's easy to say you know them all, but do you really? Retrieve all the planets
      # and check whether you missed one.
      sig do
        params(
          limit: Integer,
          offset: Integer,
          request_options: DemoApiScalarGalaxy::RequestOptions::OrHash
        ).returns(DemoApiScalarGalaxy::Models::PlanetListResponse)
      end
      def list(
        # The number of items to return
        limit: nil,
        # The number of items to skip before starting to collect the result set
        offset: nil,
        request_options: {}
      )
      end

      # This endpoint was used to delete planets. Unfortunately, that caused a lot of
      # trouble for planets with life. So, this endpoint is now deprecated and should
      # not be used anymore.
      sig do
        params(
          planet_id: Integer,
          request_options: DemoApiScalarGalaxy::RequestOptions::OrHash
        ).void
      end
      def delete(
        # The ID of the planet to get
        planet_id,
        request_options: {}
      )
      end

      # Got a crazy good photo of a planet? Share it with the world!
      sig do
        params(
          planet_id: Integer,
          image: DemoApiScalarGalaxy::Internal::FileInput,
          request_options: DemoApiScalarGalaxy::RequestOptions::OrHash
        ).returns(DemoApiScalarGalaxy::Models::PlanetUploadImageResponse)
      end
      def upload_image(
        # The ID of the planet to get
        planet_id,
        # The image file to upload
        image: nil,
        request_options: {}
      )
      end

      # @api private
      sig do
        params(client: DemoApiScalarGalaxy::Client).returns(T.attached_class)
      end
      def self.new(client:)
      end
    end
  end
end
