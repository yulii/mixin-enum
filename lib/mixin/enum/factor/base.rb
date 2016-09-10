module Mixin
  module Enum
    module Factor
      class Base
        def initialize
          @items = {}
        end

        def set(name, *values)
          @items[name] = struct_class.new(*values)
        end

        def each(&block)
          @items.each(&block)
        end

        private

        attr_accessor :struct_class
      end
    end
  end
end
