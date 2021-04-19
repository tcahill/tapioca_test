# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `loofah` gem.
# Please instead update this file by running `bin/tapioca sync`.

# typed: true

module Loofah
  class << self
    def document(*args, &block); end
    def fragment(*args, &block); end
    def remove_extraneous_whitespace(string); end
    def scrub_document(string_or_io, method); end
    def scrub_fragment(string_or_io, method); end
    def scrub_xml_document(string_or_io, method); end
    def scrub_xml_fragment(string_or_io, method); end
    def xml_document(*args, &block); end
    def xml_fragment(*args, &block); end

    private

    def remove_comments_before_html_element(doc); end
  end
end

module Loofah::DocumentDecorator
  def initialize(*args, &block); end
end

module Loofah::Elements
end

Loofah::Elements::BLOCK_LEVEL = T.let(T.unsafe(nil), Set)

Loofah::Elements::LOOSE_BLOCK_LEVEL = T.let(T.unsafe(nil), Set)

Loofah::Elements::STRICT_BLOCK_LEVEL = T.let(T.unsafe(nil), Set)

Loofah::Elements::STRICT_BLOCK_LEVEL_HTML4 = T.let(T.unsafe(nil), Set)

Loofah::Elements::STRICT_BLOCK_LEVEL_HTML5 = T.let(T.unsafe(nil), Set)

module Loofah::HTML
end

class Loofah::HTML::Document < ::Nokogiri::HTML::Document
  include(::Loofah::ScrubBehavior::Node)
  include(::Loofah::DocumentDecorator)
  include(::Loofah::TextBehavior)

  def serialize_root; end
end

class Loofah::HTML::DocumentFragment < ::Nokogiri::HTML::DocumentFragment
  include(::Loofah::TextBehavior)

  def serialize; end
  def serialize_root; end
  def to_s; end

  class << self
    def parse(tags, encoding = T.unsafe(nil)); end
  end
end

module Loofah::HTML5
end

module Loofah::HTML5::SafeList
end

Loofah::HTML5::SafeList::ACCEPTABLE_ATTRIBUTES = T.let(T.unsafe(nil), Set)

Loofah::HTML5::SafeList::ACCEPTABLE_CSS_FUNCTIONS = T.let(T.unsafe(nil), Set)

Loofah::HTML5::SafeList::ACCEPTABLE_CSS_KEYWORDS = T.let(T.unsafe(nil), Set)

Loofah::HTML5::SafeList::ACCEPTABLE_CSS_PROPERTIES = T.let(T.unsafe(nil), Set)

Loofah::HTML5::SafeList::ACCEPTABLE_ELEMENTS = T.let(T.unsafe(nil), Set)

Loofah::HTML5::SafeList::ACCEPTABLE_PROTOCOLS = T.let(T.unsafe(nil), Set)

Loofah::HTML5::SafeList::ACCEPTABLE_SVG_PROPERTIES = T.let(T.unsafe(nil), Set)

Loofah::HTML5::SafeList::ACCEPTABLE_URI_DATA_MEDIATYPES = T.let(T.unsafe(nil), Set)

Loofah::HTML5::SafeList::ALLOWED_ATTRIBUTES = T.let(T.unsafe(nil), Set)

Loofah::HTML5::SafeList::ALLOWED_CSS_FUNCTIONS = T.let(T.unsafe(nil), Set)

Loofah::HTML5::SafeList::ALLOWED_CSS_KEYWORDS = T.let(T.unsafe(nil), Set)

Loofah::HTML5::SafeList::ALLOWED_CSS_PROPERTIES = T.let(T.unsafe(nil), Set)

Loofah::HTML5::SafeList::ALLOWED_ELEMENTS = T.let(T.unsafe(nil), Set)

Loofah::HTML5::SafeList::ALLOWED_ELEMENTS_WITH_LIBXML2 = T.let(T.unsafe(nil), Set)

Loofah::HTML5::SafeList::ALLOWED_PROTOCOLS = T.let(T.unsafe(nil), Set)

Loofah::HTML5::SafeList::ALLOWED_SVG_PROPERTIES = T.let(T.unsafe(nil), Set)

Loofah::HTML5::SafeList::ALLOWED_URI_DATA_MEDIATYPES = T.let(T.unsafe(nil), Set)

Loofah::HTML5::SafeList::ATTR_VAL_IS_URI = T.let(T.unsafe(nil), Set)

Loofah::HTML5::SafeList::MATHML_ATTRIBUTES = T.let(T.unsafe(nil), Set)

Loofah::HTML5::SafeList::MATHML_ELEMENTS = T.let(T.unsafe(nil), Set)

Loofah::HTML5::SafeList::PROTOCOL_SEPARATOR = T.let(T.unsafe(nil), Regexp)

Loofah::HTML5::SafeList::SHORTHAND_CSS_PROPERTIES = T.let(T.unsafe(nil), Set)

Loofah::HTML5::SafeList::SVG_ALLOW_LOCAL_HREF = T.let(T.unsafe(nil), Set)

Loofah::HTML5::SafeList::SVG_ATTRIBUTES = T.let(T.unsafe(nil), Set)

Loofah::HTML5::SafeList::SVG_ATTR_VAL_ALLOWS_REF = T.let(T.unsafe(nil), Set)

Loofah::HTML5::SafeList::SVG_ELEMENTS = T.let(T.unsafe(nil), Set)

Loofah::HTML5::SafeList::TAGS_SAFE_WITH_LIBXML2 = T.let(T.unsafe(nil), Set)

Loofah::HTML5::SafeList::VOID_ELEMENTS = T.let(T.unsafe(nil), Set)

module Loofah::HTML5::Scrub
  class << self
    def allowed_element?(element_name); end
    def force_correct_attribute_escaping!(node); end
    def scrub_attributes(node); end
    def scrub_css(style); end
    def scrub_css_attribute(node); end
  end
end

Loofah::HTML5::Scrub::CONTROL_CHARACTERS = T.let(T.unsafe(nil), Regexp)

Loofah::HTML5::Scrub::CRASS_SEMICOLON = T.let(T.unsafe(nil), Hash)

Loofah::HTML5::Scrub::CSS_IMPORTANT = T.let(T.unsafe(nil), String)

Loofah::HTML5::Scrub::CSS_KEYWORDISH = T.let(T.unsafe(nil), Regexp)

Loofah::HTML5::Scrub::CSS_PROPERTY_STRING_WITHOUT_EMBEDDED_QUOTES = T.let(T.unsafe(nil), Regexp)

Loofah::HTML5::WhiteList = Loofah::HTML5::SafeList

module Loofah::LibxmlWorkarounds
end

Loofah::LibxmlWorkarounds::BROKEN_ESCAPING_ATTRIBUTES = T.let(T.unsafe(nil), Set)

Loofah::LibxmlWorkarounds::BROKEN_ESCAPING_ATTRIBUTES_QUALIFYING_TAG = T.let(T.unsafe(nil), Hash)

module Loofah::MetaHelpers
  class << self
    def add_downcased_set_members_to_all_set_constants(mojule); end
  end
end

module Loofah::ScrubBehavior
  class << self
    def resolve_scrubber(scrubber); end
  end
end

module Loofah::ScrubBehavior::Node
  def scrub!(scrubber); end
end

module Loofah::ScrubBehavior::NodeSet
  def scrub!(scrubber); end
end

class Loofah::Scrubber
  def initialize(options = T.unsafe(nil), &block); end

  def append_attribute(node, attribute, value); end
  def block; end
  def direction; end
  def scrub(node); end
  def traverse(node); end

  private

  def html5lib_sanitize(node); end
  def traverse_conditionally_bottom_up(node); end
  def traverse_conditionally_top_down(node); end
end

Loofah::Scrubber::CONTINUE = T.let(T.unsafe(nil), Object)

Loofah::Scrubber::STOP = T.let(T.unsafe(nil), Object)

class Loofah::ScrubberNotFound < ::RuntimeError
end

module Loofah::Scrubbers
  class << self
    def scrubber_symbols; end
  end
end

class Loofah::Scrubbers::Escape < ::Loofah::Scrubber
  def initialize; end

  def scrub(node); end
end

Loofah::Scrubbers::MAP = T.let(T.unsafe(nil), Hash)

class Loofah::Scrubbers::NewlineBlockElements < ::Loofah::Scrubber
  def initialize; end

  def scrub(node); end
end

class Loofah::Scrubbers::NoFollow < ::Loofah::Scrubber
  def initialize; end

  def scrub(node); end
end

class Loofah::Scrubbers::NoOpener < ::Loofah::Scrubber
  def initialize; end

  def scrub(node); end
end

class Loofah::Scrubbers::Prune < ::Loofah::Scrubber
  def initialize; end

  def scrub(node); end
end

class Loofah::Scrubbers::Strip < ::Loofah::Scrubber
  def initialize; end

  def scrub(node); end
end

class Loofah::Scrubbers::Unprintable < ::Loofah::Scrubber
  def initialize; end

  def scrub(node); end
end

class Loofah::Scrubbers::Whitewash < ::Loofah::Scrubber
  def initialize; end

  def scrub(node); end
end

module Loofah::TextBehavior
  def inner_text(options = T.unsafe(nil)); end
  def text(options = T.unsafe(nil)); end
  def to_str(options = T.unsafe(nil)); end
  def to_text(options = T.unsafe(nil)); end
end

Loofah::VERSION = T.let(T.unsafe(nil), String)

module Loofah::XML
end

class Loofah::XML::Document < ::Nokogiri::XML::Document
  include(::Loofah::ScrubBehavior::Node)
  include(::Loofah::DocumentDecorator)
end

class Loofah::XML::DocumentFragment < ::Nokogiri::XML::DocumentFragment
  class << self
    def parse(tags); end
  end
end
