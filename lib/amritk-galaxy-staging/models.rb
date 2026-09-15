# frozen_string_literal: true

module DemoApiScalarGalaxy
  [
    DemoApiScalarGalaxy::Internal::Type::BaseModel,
    *DemoApiScalarGalaxy::Internal::Type::BaseModel.subclasses
  ].each do |cls|
    cls.define_sorbet_constant!(:OrHash) do
      T.type_alias { T.any(cls, DemoApiScalarGalaxy::Internal::AnyHash) }
    end
  end

  DemoApiScalarGalaxy::Internal::Util
    .walk_namespaces(DemoApiScalarGalaxy::Models)
    .each do |mod|
      case mod
      in DemoApiScalarGalaxy::Internal::Type::Enum | DemoApiScalarGalaxy::Internal::Type::Union
        mod.constants.each do |name|
          case mod.const_get(name)
          in true | false
            mod.define_sorbet_constant!(:TaggedBoolean) { T.type_alias { T::Boolean } }
            mod.define_sorbet_constant!(:OrBoolean) { T.type_alias { T::Boolean } }
          in Integer
            mod.define_sorbet_constant!(:TaggedInteger) { T.type_alias { Integer } }
            mod.define_sorbet_constant!(:OrInteger) { T.type_alias { Integer } }
          in Float
            mod.define_sorbet_constant!(:TaggedFloat) { T.type_alias { Float } }
            mod.define_sorbet_constant!(:OrFloat) { T.type_alias { Float } }
          in Symbol
            mod.define_sorbet_constant!(:TaggedSymbol) { T.type_alias { Symbol } }
            mod.define_sorbet_constant!(:OrSymbol) { T.type_alias { T.any(Symbol, String) } }
          else
          end
        end
      else
      end
    end

  DemoApiScalarGalaxy::Internal::Util
    .walk_namespaces(DemoApiScalarGalaxy::Models)
    .lazy
    .grep(DemoApiScalarGalaxy::Internal::Type::Union)
    .each do |mod|
      const = :Variants
      next if mod.sorbet_constant_defined?(const)

      mod.define_sorbet_constant!(const) { T.type_alias { mod.to_sorbet_type } }
    end

  AuthenticationCreateTokenParams = DemoApiScalarGalaxy::Models::AuthenticationCreateTokenParams

  AuthenticationCreateUserParams = DemoApiScalarGalaxy::Models::AuthenticationCreateUserParams

  AuthenticationListMeParams = DemoApiScalarGalaxy::Models::AuthenticationListMeParams

  CelestialBody = DemoApiScalarGalaxy::Models::CelestialBody

  CelestialBodyCreateParams = DemoApiScalarGalaxy::Models::CelestialBodyCreateParams

  NewPlanetWebhookEvent = DemoApiScalarGalaxy::Models::NewPlanetWebhookEvent

  PaginatedResource = DemoApiScalarGalaxy::Models::PaginatedResource

  Planet = DemoApiScalarGalaxy::Models::Planet

  PlanetCreateParams = DemoApiScalarGalaxy::Models::PlanetCreateParams

  PlanetDeleteParams = DemoApiScalarGalaxy::Models::PlanetDeleteParams

  PlanetListParams = DemoApiScalarGalaxy::Models::PlanetListParams

  PlanetRetrieveParams = DemoApiScalarGalaxy::Models::PlanetRetrieveParams

  PlanetUpdateParams = DemoApiScalarGalaxy::Models::PlanetUpdateParams

  PlanetUploadImageParams = DemoApiScalarGalaxy::Models::PlanetUploadImageParams

  Satellite = DemoApiScalarGalaxy::Models::Satellite

  Token = DemoApiScalarGalaxy::Models::Token

  UnwrapWebhookEvent = DemoApiScalarGalaxy::Models::UnwrapWebhookEvent

  User = DemoApiScalarGalaxy::Models::User

  WebhookUnwrapParams = DemoApiScalarGalaxy::Models::WebhookUnwrapParams
end
