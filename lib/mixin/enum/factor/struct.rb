module Mixin
  module Enum
    module Factor
      class Struct < Base
        def initialize(*attributes)
          @struct_class = ::Struct.new(*attributes)
          super()
        end

        def set(name, *values)
          super(name, @struct_class.new(*values))
        end
      end
    end
  end
end
