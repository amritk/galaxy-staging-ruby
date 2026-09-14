# frozen_string_literal: true

# Standard libraries.
# rubocop:disable Lint/RedundantRequireStatement
require "English"
require "cgi"
require "date"
require "erb"
require "etc"
require "json"
require "net/http"
require "openssl"
require "pathname"
require "rbconfig"
require "securerandom"
require "set"
require "stringio"
require "time"
require "uri"
# rubocop:enable Lint/RedundantRequireStatement

# We already ship the preferred sorbet manifests in the package itself.
# `tapioca` currently does not offer us a way to opt out of unnecessary compilation.
if Object.const_defined?(:Tapioca) && caller.chain([$PROGRAM_NAME]).chain(ARGV).any?(/tapioca/) &&
   ARGV.none?(/dsl/)
  return
end

# Gems.
require "connection_pool"
require "standardwebhooks"

# Package files.
require_relative "demo-api-scalar-galaxy/version"
require_relative "demo-api-scalar-galaxy/internal/util"
require_relative "demo-api-scalar-galaxy/internal/type/converter"
require_relative "demo-api-scalar-galaxy/internal/type/unknown"
require_relative "demo-api-scalar-galaxy/internal/type/boolean"
require_relative "demo-api-scalar-galaxy/internal/type/file_input"
require_relative "demo-api-scalar-galaxy/internal/type/enum"
require_relative "demo-api-scalar-galaxy/internal/type/union"
require_relative "demo-api-scalar-galaxy/internal/type/array_of"
require_relative "demo-api-scalar-galaxy/internal/type/hash_of"
require_relative "demo-api-scalar-galaxy/internal/type/base_model"
require_relative "demo-api-scalar-galaxy/internal/type/base_page"
require_relative "demo-api-scalar-galaxy/internal/type/request_parameters"
require_relative "demo-api-scalar-galaxy/internal"
require_relative "demo-api-scalar-galaxy/request_options"
require_relative "demo-api-scalar-galaxy/file_part"
require_relative "demo-api-scalar-galaxy/errors"
require_relative "demo-api-scalar-galaxy/internal/transport/base_client"
require_relative "demo-api-scalar-galaxy/internal/transport/pooled_net_requester"
require_relative "demo-api-scalar-galaxy/client"
require_relative "demo-api-scalar-galaxy/models/planet"
require_relative "demo-api-scalar-galaxy/models/paginated_resource"
require_relative "demo-api-scalar-galaxy/models/authentication_create_token_params"
require_relative "demo-api-scalar-galaxy/models/authentication_create_user_params"
require_relative "demo-api-scalar-galaxy/models/authentication_list_me_params"
require_relative "demo-api-scalar-galaxy/models/celestial_body"
require_relative "demo-api-scalar-galaxy/models/celestial_body_create_params"
require_relative "demo-api-scalar-galaxy/models/new_planet_webhook_event"
require_relative "demo-api-scalar-galaxy/models/planet_create_params"
require_relative "demo-api-scalar-galaxy/models/planet_delete_params"
require_relative "demo-api-scalar-galaxy/models/planet_list_params"
require_relative "demo-api-scalar-galaxy/models/planet_list_response"
require_relative "demo-api-scalar-galaxy/models/planet_retrieve_params"
require_relative "demo-api-scalar-galaxy/models/planet_update_params"
require_relative "demo-api-scalar-galaxy/models/planet_upload_image_params"
require_relative "demo-api-scalar-galaxy/models/planet_upload_image_response"
require_relative "demo-api-scalar-galaxy/models/satellite"
require_relative "demo-api-scalar-galaxy/models/token"
require_relative "demo-api-scalar-galaxy/models/unwrap_webhook_event"
require_relative "demo-api-scalar-galaxy/models/user"
require_relative "demo-api-scalar-galaxy/models/webhook_unwrap_params"
require_relative "demo-api-scalar-galaxy/models"
require_relative "demo-api-scalar-galaxy/resources/planets"
require_relative "demo-api-scalar-galaxy/resources/celestial_bodies"
require_relative "demo-api-scalar-galaxy/resources/authentication"
require_relative "demo-api-scalar-galaxy/resources/webhooks"
