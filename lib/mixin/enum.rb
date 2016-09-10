require 'mixin/enum/version'

module Mixin
  module Enum
    def self.included(klass)
      klass.extend ClassMethods
    end

    module ClassMethods
      def values
        constant_pairs.map(&:last)
      end

      def all
        Hash[constant_pairs]
      end

      private

      def origin_constants
        (constants - Mixin::Enum.constants)
      end

      def constant_pairs
        origin_constants.map {|name| [name, const_get(name)] }
      end
    end
  end
end
