module Mixin
  module Enum
    module Factor
      class Base
        def initialize
          @items = {}
        end

        def set(name, value)
          @items[name] = value
        end

        def each(&block)
          @items.each(&block)
        end
      end
    end
  end
end
