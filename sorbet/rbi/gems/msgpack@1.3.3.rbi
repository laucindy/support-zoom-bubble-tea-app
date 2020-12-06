# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `msgpack` gem.
# Please instead update this file by running `tapioca generate`.

# typed: true

class Array
  include(::Enumerable)
  include(::JSON::Ext::Generator::GeneratorMethods::Array)
  include(::MessagePack::CoreExt)


  private

  def to_msgpack_with_packer(packer); end
end

Bignum = Integer

class FalseClass
  include(::JSON::Ext::Generator::GeneratorMethods::FalseClass)
  include(::MessagePack::CoreExt)


  private

  def to_msgpack_with_packer(packer); end
end

class Float < ::Numeric
  include(::JSON::Ext::Generator::GeneratorMethods::Float)
  include(::MessagePack::CoreExt)


  private

  def to_msgpack_with_packer(packer); end
end

class Hash
  include(::Enumerable)
  include(::JSON::Ext::Generator::GeneratorMethods::Hash)
  include(::MessagePack::CoreExt)


  private

  def to_msgpack_with_packer(packer); end
end

class Integer < ::Numeric
  include(::JSON::Ext::Generator::GeneratorMethods::Integer)
  include(::MessagePack::CoreExt)


  private

  def to_msgpack_with_packer(packer); end
end

Integer::GMP_VERSION = T.let(T.unsafe(nil), String)

module MessagePack

  private

  def dump(v, *rest); end
  def load(src, param = T.unsafe(nil)); end
  def pack(v, *rest); end
  def unpack(src, param = T.unsafe(nil)); end

  class << self
    def dump(v, *rest); end
    def load(src, param = T.unsafe(nil)); end
    def pack(v, *rest); end
    def unpack(src, param = T.unsafe(nil)); end
  end
end

module MessagePack::CoreExt
  def to_msgpack(packer_or_io = T.unsafe(nil)); end
end

MessagePack::DEFAULT_EMPTY_PARAMS = T.let(T.unsafe(nil), Hash)

class MessagePack::ExtensionValue < ::Struct
  include(::MessagePack::CoreExt)

  def payload=(_); end
  def type=(_); end

  private

  def to_msgpack_with_packer(packer); end
end

class MessagePack::Factory
  def dump(v, *rest); end
  def load(src, param = T.unsafe(nil)); end
  def pack(v, *rest); end
  def registered_types(selector = T.unsafe(nil)); end
  def type_registered?(klass_or_type, selector = T.unsafe(nil)); end
  def unpack(src, param = T.unsafe(nil)); end
end

class MessagePack::Packer
  def registered_types; end
  def type_registered?(klass_or_type); end
end

module MessagePack::Time
end

MessagePack::Time::Packer = T.let(T.unsafe(nil), Proc)

MessagePack::Time::TIME_AT_3_AVAILABLE = T.let(T.unsafe(nil), TrueClass)

MessagePack::Time::Unpacker = T.let(T.unsafe(nil), Proc)

class MessagePack::Timestamp
  def initialize(sec, nsec); end

  def ==(other); end
  def nsec; end
  def sec; end
  def to_msgpack_ext; end

  class << self
    def from_msgpack_ext(data); end
    def to_msgpack_ext(sec, nsec); end
  end
end

MessagePack::Timestamp::TIMESTAMP32_MAX_SEC = T.let(T.unsafe(nil), Integer)

MessagePack::Timestamp::TIMESTAMP64_MAX_SEC = T.let(T.unsafe(nil), Integer)

MessagePack::Timestamp::TYPE = T.let(T.unsafe(nil), Integer)

class MessagePack::Unpacker
  def registered_types; end
  def type_registered?(klass_or_type); end
end

class NilClass
  include(::JSON::Ext::Generator::GeneratorMethods::NilClass)
  include(::MessagePack::CoreExt)


  private

  def to_msgpack_with_packer(packer); end
end

class String
  include(::Comparable)
  include(::JSON::Ext::Generator::GeneratorMethods::String)
  include(::MessagePack::CoreExt)
  include(::Colorize::InstanceMethods)
  extend(::JSON::Ext::Generator::GeneratorMethods::String::Extend)
  extend(::Colorize::ClassMethods)


  private

  def to_msgpack_with_packer(packer); end
end

String::BLANK_RE = T.let(T.unsafe(nil), Regexp)

String::ENCODED_BLANKS = T.let(T.unsafe(nil), Concurrent::Map)

class Symbol
  include(::Comparable)
  include(::MessagePack::CoreExt)

  def to_msgpack_ext; end

  private

  def to_msgpack_with_packer(packer); end

  class << self
    def from_msgpack_ext(data); end
  end
end

class TrueClass
  include(::JSON::Ext::Generator::GeneratorMethods::TrueClass)
  include(::MessagePack::CoreExt)


  private

  def to_msgpack_with_packer(packer); end
end
