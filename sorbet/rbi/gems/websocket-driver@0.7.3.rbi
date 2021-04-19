# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `websocket-driver` gem.
# Please instead update this file by running `bin/tapioca sync`.

# typed: true

module WebSocket
end

class WebSocket::Driver
  include(::WebSocket::Driver::EventEmitter)

  def initialize(socket, options = T.unsafe(nil)); end

  def add_extension(extension); end
  def binary(message); end
  def close(reason = T.unsafe(nil), code = T.unsafe(nil)); end
  def ping(*args); end
  def pong(*args); end
  def protocol; end
  def ready_state; end
  def set_header(name, value); end
  def start; end
  def state; end
  def text(message); end

  private

  def fail(type, message); end
  def fail_handshake(error); end
  def open; end
  def queue(message); end

  class << self
    def client(socket, options = T.unsafe(nil)); end
    def encode(string, encoding = T.unsafe(nil)); end
    def rack(socket, options = T.unsafe(nil)); end
    def server(socket, options = T.unsafe(nil)); end
    def validate_options(options, valid_keys); end
    def websocket?(env); end
  end
end

WebSocket::Driver::BINARY = T.let(T.unsafe(nil), String)

class WebSocket::Driver::Client < ::WebSocket::Driver::Hybi
  def initialize(socket, options = T.unsafe(nil)); end

  def headers; end
  def parse(chunk); end
  def proxy(origin, options = T.unsafe(nil)); end
  def start; end
  def status; end
  def version; end

  private

  def fail_handshake(message); end
  def handshake_request; end
  def validate_handshake; end

  class << self
    def generate_key; end
  end
end

WebSocket::Driver::Client::VALID_SCHEMES = T.let(T.unsafe(nil), Array)

class WebSocket::Driver::CloseEvent < ::Struct
  def code; end
  def code=(_); end
  def reason; end
  def reason=(_); end

  class << self
    def [](*_arg0); end
    def inspect; end
    def members; end
    def new(*_arg0); end
  end
end

class WebSocket::Driver::ConfigurationError < ::ArgumentError
end

class WebSocket::Driver::ConnectEvent < ::Struct
  class << self
    def [](*_arg0); end
    def inspect; end
    def members; end
    def new(*_arg0); end
  end
end

class WebSocket::Driver::Draft75 < ::WebSocket::Driver
  def initialize(socket, options = T.unsafe(nil)); end

  def close(reason = T.unsafe(nil), code = T.unsafe(nil)); end
  def frame(buffer, type = T.unsafe(nil), error_type = T.unsafe(nil)); end
  def parse(chunk); end
  def version; end

  private

  def handshake_response; end
  def parse_leading_byte(octet); end
end

class WebSocket::Driver::Draft76 < ::WebSocket::Driver::Draft75
  def initialize(socket, options = T.unsafe(nil)); end

  def close(reason = T.unsafe(nil), code = T.unsafe(nil)); end
  def start; end
  def version; end

  private

  def handshake_response; end
  def handshake_signature; end
  def number_from_key(key); end
  def parse_leading_byte(octet); end
  def send_handshake_body; end
  def spaces_in_key(key); end
end

WebSocket::Driver::Draft76::BODY_SIZE = T.let(T.unsafe(nil), Integer)

module WebSocket::Driver::EventEmitter
  def initialize; end

  def add_listener(event, callable = T.unsafe(nil), &block); end
  def emit(event, *args); end
  def listener_count(event); end
  def listeners(event); end
  def on(event, callable = T.unsafe(nil), &block); end
  def remove_all_listeners(event = T.unsafe(nil)); end
  def remove_listener(event, callable = T.unsafe(nil), &block); end
end

class WebSocket::Driver::Headers
  def initialize(received = T.unsafe(nil)); end

  def [](name); end
  def []=(name, value); end
  def clear; end
  def inspect; end
  def to_h; end
  def to_s; end
end

WebSocket::Driver::Headers::ALLOWED_DUPLICATES = T.let(T.unsafe(nil), Array)

class WebSocket::Driver::Hybi < ::WebSocket::Driver
  def initialize(socket, options = T.unsafe(nil)); end

  def add_extension(extension); end
  def binary(message); end
  def close(reason = T.unsafe(nil), code = T.unsafe(nil)); end
  def frame(buffer, type = T.unsafe(nil), code = T.unsafe(nil)); end
  def parse(chunk); end
  def ping(message = T.unsafe(nil), &callback); end
  def pong(message = T.unsafe(nil)); end
  def version; end

  private

  def check_frame_length; end
  def emit_frame(buffer); end
  def emit_message; end
  def fail(type, message); end
  def handshake_response; end
  def parse_extended_length(buffer); end
  def parse_length(octet); end
  def parse_opcode(octet); end
  def send_frame(frame); end
  def shutdown(code, reason, error = T.unsafe(nil)); end

  class << self
    def generate_accept(key); end
  end
end

WebSocket::Driver::Hybi::BYTE = T.let(T.unsafe(nil), Integer)

WebSocket::Driver::Hybi::DEFAULT_ERROR_CODE = T.let(T.unsafe(nil), Integer)

WebSocket::Driver::Hybi::ERRORS = T.let(T.unsafe(nil), Hash)

WebSocket::Driver::Hybi::ERROR_CODES = T.let(T.unsafe(nil), Array)

WebSocket::Driver::Hybi::FIN = T.let(T.unsafe(nil), Integer)

class WebSocket::Driver::Hybi::Frame
  def final; end
  def final=(_arg0); end
  def length; end
  def length=(_arg0); end
  def length_bytes; end
  def length_bytes=(_arg0); end
  def masked; end
  def masked=(_arg0); end
  def masking_key; end
  def masking_key=(_arg0); end
  def opcode; end
  def opcode=(_arg0); end
  def payload; end
  def payload=(_arg0); end
  def rsv1; end
  def rsv1=(_arg0); end
  def rsv2; end
  def rsv2=(_arg0); end
  def rsv3; end
  def rsv3=(_arg0); end
end

WebSocket::Driver::Hybi::GUID = T.let(T.unsafe(nil), String)

WebSocket::Driver::Hybi::LENGTH = T.let(T.unsafe(nil), Integer)

WebSocket::Driver::Hybi::MASK = T.let(T.unsafe(nil), Integer)

WebSocket::Driver::Hybi::MAX_RESERVED_ERROR = T.let(T.unsafe(nil), Integer)

WebSocket::Driver::Hybi::MESSAGE_OPCODES = T.let(T.unsafe(nil), Array)

WebSocket::Driver::Hybi::MIN_RESERVED_ERROR = T.let(T.unsafe(nil), Integer)

class WebSocket::Driver::Hybi::Message
  def initialize; end

  def <<(frame); end
  def data; end
  def data=(_arg0); end
  def opcode; end
  def opcode=(_arg0); end
  def rsv1; end
  def rsv1=(_arg0); end
  def rsv2; end
  def rsv2=(_arg0); end
  def rsv3; end
  def rsv3=(_arg0); end
end

WebSocket::Driver::Hybi::OPCODE = T.let(T.unsafe(nil), Integer)

WebSocket::Driver::Hybi::OPCODES = T.let(T.unsafe(nil), Hash)

WebSocket::Driver::Hybi::OPCODE_CODES = T.let(T.unsafe(nil), Array)

WebSocket::Driver::Hybi::OPENING_OPCODES = T.let(T.unsafe(nil), Array)

WebSocket::Driver::Hybi::PACK_FORMATS = T.let(T.unsafe(nil), Hash)

WebSocket::Driver::Hybi::RSV1 = T.let(T.unsafe(nil), Integer)

WebSocket::Driver::Hybi::RSV2 = T.let(T.unsafe(nil), Integer)

WebSocket::Driver::Hybi::RSV3 = T.let(T.unsafe(nil), Integer)

WebSocket::Driver::Hybi::VERSION = T.let(T.unsafe(nil), String)

WebSocket::Driver::MAX_LENGTH = T.let(T.unsafe(nil), Integer)

class WebSocket::Driver::MessageEvent < ::Struct
  def data; end
  def data=(_); end

  class << self
    def [](*_arg0); end
    def inspect; end
    def members; end
    def new(*_arg0); end
  end
end

class WebSocket::Driver::OpenEvent < ::Struct
  class << self
    def [](*_arg0); end
    def inspect; end
    def members; end
    def new(*_arg0); end
  end
end

class WebSocket::Driver::PingEvent < ::Struct
  def data; end
  def data=(_); end

  class << self
    def [](*_arg0); end
    def inspect; end
    def members; end
    def new(*_arg0); end
  end
end

class WebSocket::Driver::PongEvent < ::Struct
  def data; end
  def data=(_); end

  class << self
    def [](*_arg0); end
    def inspect; end
    def members; end
    def new(*_arg0); end
  end
end

class WebSocket::Driver::ProtocolError < ::StandardError
end

class WebSocket::Driver::Proxy
  include(::WebSocket::Driver::EventEmitter)

  def initialize(client, origin, options); end

  def headers; end
  def parse(chunk); end
  def set_header(name, value); end
  def start; end
  def status; end
end

WebSocket::Driver::Proxy::PORTS = T.let(T.unsafe(nil), Hash)

WebSocket::Driver::STATES = T.let(T.unsafe(nil), Array)

class WebSocket::Driver::Server < ::WebSocket::Driver
  def initialize(socket, options = T.unsafe(nil)); end

  def add_extension(*args, &block); end
  def binary(*args, &block); end
  def close(*args, &block); end
  def env; end
  def frame(*args, &block); end
  def parse(chunk); end
  def ping(*args, &block); end
  def protocol; end
  def set_header(*args, &block); end
  def start(*args, &block); end
  def text(*args, &block); end
  def url; end
  def version; end
  def write(buffer); end

  private

  def fail_request(message); end
  def open; end
end

WebSocket::Driver::Server::EVENTS = T.let(T.unsafe(nil), Array)

class WebSocket::Driver::StreamReader
  def initialize; end

  def each_byte; end
  def put(chunk); end
  def read(length); end

  private

  def prune; end
end

WebSocket::Driver::StreamReader::MINIMUM_AUTOMATIC_PRUNE_OFFSET = T.let(T.unsafe(nil), Integer)

WebSocket::Driver::UNICODE = T.let(T.unsafe(nil), String)

class WebSocket::Driver::URIError < ::ArgumentError
end

module WebSocket::HTTP
  class << self
    def normalize_header(name); end
  end
end

module WebSocket::HTTP::Headers
  def initialize; end

  def complete?; end
  def error?; end
  def headers; end
  def parse(chunk); end

  private

  def complete; end
  def error; end
  def header_line(line); end
  def string_buffer; end
end

WebSocket::HTTP::Headers::CR = T.let(T.unsafe(nil), Integer)

WebSocket::HTTP::Headers::HEADER_LINE = T.let(T.unsafe(nil), Regexp)

WebSocket::HTTP::Headers::LF = T.let(T.unsafe(nil), Integer)

WebSocket::HTTP::Headers::MAX_LINE_LENGTH = T.let(T.unsafe(nil), Integer)

class WebSocket::HTTP::Request
  include(::WebSocket::HTTP::Headers)

  def env; end

  private

  def complete; end
  def start_line(line); end
end

WebSocket::HTTP::Request::REQUEST_LINE = T.let(T.unsafe(nil), Regexp)

WebSocket::HTTP::Request::REQUEST_TARGET = T.let(T.unsafe(nil), Regexp)

WebSocket::HTTP::Request::RESERVED_HEADERS = T.let(T.unsafe(nil), Array)

class WebSocket::HTTP::Response
  include(::WebSocket::HTTP::Headers)

  def [](name); end
  def body; end
  def code; end

  private

  def start_line(line); end
end

WebSocket::HTTP::Response::STATUS_LINE = T.let(T.unsafe(nil), Regexp)

module WebSocket::Mask
  class << self
    def mask(_arg0, _arg1); end
  end
end
