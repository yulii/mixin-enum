require 'mixin/enum/version'
require 'mixin/enum/accessor'
require 'mixin/enum/binder'

require 'mixin/enum/factor/base'
require 'mixin/enum/factor/struct'

module Mixin
  module Enum
    def self.included(klass)
      klass.extend ClassMethods
      # NOTE: Ruby 2.0
      if klass.private_methods.include?(:include)
        klass.extend Accessor::ClassMethods
        klass.extend Binder::ClassMethods
      else
        klass.include Accessor
        klass.include Binder
      end
    end

    module ClassMethods
      def enumerated(*args, &block)
        factor = Factor::Struct.new(*args).tap do |f|
          f.instance_eval(&block)
        end
        unite(factor)
        freeze
      end
    end
  end
end
