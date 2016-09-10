module Mixin
  module Enum
    module Factor
      class Struct < Base
        def initialize(*attributes)
          @struct_class = ::Struct.new(*attributes)
          super()
        end
      end
    end
  end
end
