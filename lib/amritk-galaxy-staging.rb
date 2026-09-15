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
require_relative "amritk-galaxy-staging/version"
require_relative "amritk-galaxy-staging/internal/util"
require_relative "amritk-galaxy-staging/internal/type/converter"
require_relative "amritk-galaxy-staging/internal/type/unknown"
require_relative "amritk-galaxy-staging/internal/type/boolean"
require_relative "amritk-galaxy-staging/internal/type/file_input"
require_relative "amritk-galaxy-staging/internal/type/enum"
require_relative "amritk-galaxy-staging/internal/type/union"
require_relative "amritk-galaxy-staging/internal/type/array_of"
require_relative "amritk-galaxy-staging/internal/type/hash_of"
require_relative "amritk-galaxy-staging/internal/type/base_model"
require_relative "amritk-galaxy-staging/internal/type/base_page"
require_relative "amritk-galaxy-staging/internal/type/request_parameters"
require_relative "amritk-galaxy-staging/internal"
require_relative "amritk-galaxy-staging/request_options"
require_relative "amritk-galaxy-staging/file_part"
require_relative "amritk-galaxy-staging/errors"
require_relative "amritk-galaxy-staging/internal/transport/base_client"
require_relative "amritk-galaxy-staging/internal/transport/pooled_net_requester"
require_relative "amritk-galaxy-staging/client"
require_relative "amritk-galaxy-staging/models/planet"
require_relative "amritk-galaxy-staging/models/paginated_resource"
require_relative "amritk-galaxy-staging/models/authentication_create_token_params"
require_relative "amritk-galaxy-staging/models/authentication_create_user_params"
require_relative "amritk-galaxy-staging/models/authentication_list_me_params"
require_relative "amritk-galaxy-staging/models/celestial_body"
require_relative "amritk-galaxy-staging/models/celestial_body_create_params"
require_relative "amritk-galaxy-staging/models/new_planet_webhook_event"
require_relative "amritk-galaxy-staging/models/planet_create_params"
require_relative "amritk-galaxy-staging/models/planet_delete_params"
require_relative "amritk-galaxy-staging/models/planet_list_params"
require_relative "amritk-galaxy-staging/models/planet_list_response"
require_relative "amritk-galaxy-staging/models/planet_retrieve_params"
require_relative "amritk-galaxy-staging/models/planet_update_params"
require_relative "amritk-galaxy-staging/models/planet_upload_image_params"
require_relative "amritk-galaxy-staging/models/planet_upload_image_response"
require_relative "amritk-galaxy-staging/models/satellite"
require_relative "amritk-galaxy-staging/models/token"
require_relative "amritk-galaxy-staging/models/unwrap_webhook_event"
require_relative "amritk-galaxy-staging/models/user"
require_relative "amritk-galaxy-staging/models/webhook_unwrap_params"
require_relative "amritk-galaxy-staging/models"
require_relative "amritk-galaxy-staging/resources/planets"
require_relative "amritk-galaxy-staging/resources/celestial_bodies"
require_relative "amritk-galaxy-staging/resources/authentication"
require_relative "amritk-galaxy-staging/resources/webhooks"
