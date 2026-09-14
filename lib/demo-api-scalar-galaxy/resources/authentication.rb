# frozen_string_literal: true

module DemoApiScalarGalaxy
  module Resources
    # Some endpoints are public, but some require authentication. We provide all the
    # required endpoints to create an account and authorize yourself.
    class Authentication
      # Yeah, this is the boring security stuff. Just get your super secret token and
      # move on.
      #
      # @overload create_token(email:, password:, request_options: {})
      #
      # @param email [String]
      # @param password [String]
      # @param request_options [DemoApiScalarGalaxy::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [DemoApiScalarGalaxy::Models::Token]
      #
      # @see DemoApiScalarGalaxy::Models::AuthenticationCreateTokenParams
      def create_token(params)
        parsed, options = DemoApiScalarGalaxy::AuthenticationCreateTokenParams.dump_request(params)
        @client.request(
          method: :post,
          path: "auth/token",
          body: parsed,
          model: DemoApiScalarGalaxy::Token,
          options: options
        )
      end

      # Time to create a user account, eh?
      #
      # @overload create_user(email:, password:, name: nil, request_options: {})
      #
      # @param email [String]
      # @param password [String]
      # @param name [String]
      # @param request_options [DemoApiScalarGalaxy::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [DemoApiScalarGalaxy::Models::User]
      #
      # @see DemoApiScalarGalaxy::Models::AuthenticationCreateUserParams
      def create_user(params)
        parsed, options = DemoApiScalarGalaxy::AuthenticationCreateUserParams.dump_request(params)
        @client.request(
          method: :post,
          path: "user/signup",
          body: parsed,
          model: DemoApiScalarGalaxy::User,
          options: options
        )
      end

      # Find yourself they say. That's what you can do here.
      #
      # @overload list_me(request_options: {})
      #
      # @param request_options [DemoApiScalarGalaxy::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [DemoApiScalarGalaxy::Models::User]
      #
      # @see DemoApiScalarGalaxy::Models::AuthenticationListMeParams
      def list_me(params = {})
        @client.request(
          method: :get,
          path: "me",
          model: DemoApiScalarGalaxy::User,
          options: params[:request_options]
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
