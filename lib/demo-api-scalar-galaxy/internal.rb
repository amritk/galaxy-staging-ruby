# frozen_string_literal: true

module DemoApiScalarGalaxy
  module Internal
    extend DemoApiScalarGalaxy::Internal::Util::SorbetRuntimeSupport

    OMIT =
      Object
      .new
      .tap { _1.define_singleton_method(:inspect) { "#<#{DemoApiScalarGalaxy::Internal}::OMIT>" } }
      .freeze

    define_sorbet_constant!(:AnyHash) { T.type_alias { T::Hash[Symbol, T.anything] } }
    define_sorbet_constant!(:FileInput) do
      T.type_alias { T.any(Pathname, StringIO, IO, String, DemoApiScalarGalaxy::FilePart) }
    end
  end
end
