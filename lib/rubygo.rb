require "ffi"

module RubyGo
    extend FFI::Library
    ffi_lib Pathname.new(
        "#{__FILE__}/../rubygo.so"
    ).expand_path.to_s
    attach_function :Add, [:int, :int], :int
    attach_function :Minus, [:int, :int], :int
end
