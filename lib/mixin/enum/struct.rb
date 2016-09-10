module Mixin
  module Enum
    module Struct
      module ClassMethods
        def enum_struct(*attributes)
          const_set(:EnumStruct, ::Struct.new(*attributes))
          private_constant :EnumStruct
        end
      end
    end
  end
end
