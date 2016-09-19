module Mixin
  module Enum
    module Binder
      def self.included(klass)
        klass.extend ClassMethods
      end

      module ClassMethods
        def unite(factor)
          factor.each do |name, value|
            const_set(name, value.freeze)
          end
        end
      end
    end
  end
end
