# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `mimemagic` gem.
# Please instead update this file by running `tapioca generate`.

# typed: true

class MimeMagic
  def initialize(type); end

  def ==(other); end
  def audio?; end
  def child_of?(parent); end
  def comment; end
  def eql?(other); end
  def extensions; end
  def hash; end
  def image?; end
  def mediatype; end
  def subtype; end
  def text?; end
  def to_s; end
  def type; end
  def video?; end

  class << self
    def add(type, options); end
    def all_by_magic(io); end
    def by_extension(ext); end
    def by_magic(io); end
    def by_path(path); end
    def child?(child, parent); end
    def remove(type); end

    private

    def magic_match(io, method); end
    def magic_match_io(io, matches, buffer); end
  end
end

MimeMagic::EXTENSIONS = T.let(T.unsafe(nil), Hash)

MimeMagic::MAGIC = T.let(T.unsafe(nil), Array)

MimeMagic::TYPES = T.let(T.unsafe(nil), Hash)

MimeMagic::VERSION = T.let(T.unsafe(nil), String)
