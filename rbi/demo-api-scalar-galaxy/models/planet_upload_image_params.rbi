# typed: strong

module DemoApiScalarGalaxy
  module Models
    class PlanetUploadImageParams < DemoApiScalarGalaxy::Internal::Type::BaseModel
      extend DemoApiScalarGalaxy::Internal::Type::RequestParameters::Converter
      include DemoApiScalarGalaxy::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            DemoApiScalarGalaxy::PlanetUploadImageParams,
            DemoApiScalarGalaxy::Internal::AnyHash
          )
        end

      sig { returns(Integer) }
      attr_accessor :planet_id

      # The image file to upload
      sig { returns(T.nilable(DemoApiScalarGalaxy::Internal::FileInput)) }
      attr_reader :image

      sig { params(image: DemoApiScalarGalaxy::Internal::FileInput).void }
      attr_writer :image

      sig do
        params(
          planet_id: Integer,
          image: DemoApiScalarGalaxy::Internal::FileInput,
          request_options: DemoApiScalarGalaxy::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        planet_id:,
        # The image file to upload
        image: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            planet_id: Integer,
            image: DemoApiScalarGalaxy::Internal::FileInput,
            request_options: DemoApiScalarGalaxy::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
