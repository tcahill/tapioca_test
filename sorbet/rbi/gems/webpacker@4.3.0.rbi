# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `webpacker` gem.
# Please instead update this file by running `bin/tapioca sync`.

# typed: true

module Webpacker
  extend(::Webpacker)

  def bootstrap(*args, &block); end
  def clean(*args, &block); end
  def clobber(*args, &block); end
  def commands(*args, &block); end
  def compile(*args, &block); end
  def compiler(*args, &block); end
  def config(*args, &block); end
  def dev_server(*args, &block); end
  def ensure_log_goes_to_stdout; end
  def env(*args, &block); end
  def instance; end
  def instance=(instance); end
  def logger(*args, &block); end
  def logger=(arg); end
  def manifest(*args, &block); end
  def with_node_env(env); end
end

class Webpacker::Commands
  def initialize(webpacker); end

  def bootstrap; end
  def clean(count = T.unsafe(nil)); end
  def clobber; end
  def compile; end
  def compiler(*args, &block); end
  def config(*args, &block); end
  def logger(*args, &block); end
  def manifest(*args, &block); end

  private

  def current_version; end
  def versions; end
end

class Webpacker::Compiler
  def initialize(webpacker); end

  def compile; end
  def config(*args, &block); end
  def env; end
  def env=(obj); end
  def fresh?; end
  def logger(*args, &block); end
  def stale?; end
  def watched_paths; end
  def watched_paths=(obj); end

  private

  def compilation_digest_path; end
  def default_watched_paths; end
  def last_compilation_digest; end
  def record_compilation_digest; end
  def run_webpack; end
  def watched_files_digest; end
  def webpack_env; end
  def webpacker; end

  class << self
    def env; end
    def env=(obj); end
    def watched_paths; end
    def watched_paths=(obj); end
  end
end

class Webpacker::Configuration
  def initialize(root_path:, config_path:, env:); end

  def cache_manifest?; end
  def cache_path; end
  def check_yarn_integrity=(value); end
  def check_yarn_integrity?; end
  def compile?; end
  def config_path; end
  def dev_server; end
  def env; end
  def extensions; end
  def extract_css?; end
  def public_manifest_path; end
  def public_output_path; end
  def public_path; end
  def resolved_paths; end
  def resolved_paths_globbed; end
  def root_path; end
  def source_entry_path; end
  def source_path; end
  def source_path_globbed; end
  def webpack_compile_output?; end

  private

  def data; end
  def defaults; end
  def fetch(key); end
  def globbed_path_with_extensions(path); end
  def load; end
end

class Webpacker::DevServer
  def initialize(config); end

  def config; end
  def connect_timeout; end
  def connect_timeout=(obj); end
  def env_prefix; end
  def host; end
  def host_with_port; end
  def https?; end
  def port; end
  def pretty?; end
  def protocol; end
  def running?; end

  private

  def defaults; end
  def fetch(key); end

  class << self
    def connect_timeout; end
    def connect_timeout=(obj); end
  end
end

Webpacker::DevServer::DEFAULT_ENV_PREFIX = T.let(T.unsafe(nil), String)

class Webpacker::DevServerProxy < ::Rack::Proxy
  def initialize(app = T.unsafe(nil), opts = T.unsafe(nil)); end

  def config(*args, &block); end
  def dev_server(*args, &block); end
  def perform_request(env); end

  private

  def public_output_uri_path; end
end

class Webpacker::Engine < ::Rails::Engine
end

class Webpacker::Env
  def initialize(webpacker); end

  def config_path(*args, &block); end
  def inquire; end
  def logger(*args, &block); end

  private

  def available_environments; end
  def current; end
  def fallback_env_warning; end

  class << self
    def inquire(webpacker); end
  end
end

Webpacker::Env::DEFAULT = T.let(T.unsafe(nil), String)

module Webpacker::Helper
  def asset_pack_path(name, **options); end
  def asset_pack_url(name, **options); end
  def current_webpacker_instance; end
  def favicon_pack_tag(name, **options); end
  def image_pack_tag(name, **options); end
  def javascript_pack_tag(*names, **options); end
  def javascript_packs_with_chunks_tag(*names, **options); end
  def preload_pack_asset(name, **options); end
  def stylesheet_pack_tag(*names, **options); end
  def stylesheet_packs_with_chunks_tag(*names, **options); end

  private

  def resolve_path_to_image(name); end
  def sources_from_manifest_entries(names, type:); end
  def sources_from_manifest_entrypoints(names, type:); end
  def stylesheet?(name); end
end

class Webpacker::Instance
  def initialize(root_path: T.unsafe(nil), config_path: T.unsafe(nil)); end

  def commands; end
  def compiler; end
  def config; end
  def config_path; end
  def dev_server; end
  def env; end
  def logger; end
  def logger=(obj); end
  def manifest; end
  def root_path; end

  class << self
    def logger; end
    def logger=(obj); end
  end
end

class Webpacker::Manifest
  def initialize(webpacker); end

  def compiler(*args, &block); end
  def config(*args, &block); end
  def dev_server(*args, &block); end
  def lookup(name, pack_type = T.unsafe(nil)); end
  def lookup!(name, pack_type = T.unsafe(nil)); end
  def lookup_pack_with_chunks(name, pack_type = T.unsafe(nil)); end
  def lookup_pack_with_chunks!(name, pack_type = T.unsafe(nil)); end
  def refresh; end

  private

  def compile; end
  def compiling?; end
  def data; end
  def find(name); end
  def full_pack_name(name, pack_type); end
  def handle_missing_entry(name); end
  def load; end
  def manifest_name(name, pack_type); end
  def manifest_type(pack_type); end
  def missing_file_from_manifest_error(bundle_name); end
end

class Webpacker::Manifest::MissingEntryError < ::StandardError
end
