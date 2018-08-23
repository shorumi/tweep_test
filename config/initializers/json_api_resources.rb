# frozen_string_literal: true

JSONAPI.configure do |config|
  config.resource_cache = Rails.cache
  config.json_key_format = :underscored_key
  config.route_format = :underscored_route

  config.allow_include = true
  config.allow_sort = true
  config.allow_filter = true

  config.raise_if_parameters_not_allowed = true

  config.default_paginator = :paged

  config.top_level_links_include_pagination = true

  config.default_page_size = 10
  config.maximum_page_size = 20

  config.top_level_meta_include_record_count = true
  config.top_level_meta_record_count_key = :record_count

  config.use_text_errors = false

  config.exception_class_whitelist = []
  config.always_include_to_one_linkage_data = false

  # Default resource cache field
  # On Resources with caching enabled, this field will be used to check for out-of-date
  # cache entries, unless overridden on a specific Resource. Defaults to "updated_at".
  config.default_resource_cache_field = :updated_at

  # Resource cache digest function
  # Provide a callable that returns a unique value for string inputs with
  # low chance of collision. The default is SHA256 base64.
  config.resource_cache_digest_function = Digest::SHA2.new.method(:base64digest)

  # Resource cache usage reporting
  # Optionally provide a callable which JSONAPI will call with information about cache
  # performance. Should accept three arguments: resource name, hits count, misses count.
  config.resource_cache_usage_report_function = nil
end
