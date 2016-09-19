module Mixin
  module Enum
    module Factor
      class Struct < Base
        def initialize(*members)
          @struct_class = ::Struct.new(*members)
          super()
        end

        def set(name, *values)
          super(name, @struct_class.new(*values))
        end
      end
    end
  end
end
