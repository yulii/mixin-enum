module Mixin
  module Enum
    class FactorFactory
      def self.create(*args, &block)
        build(*args).tap do |f|
          f.instance_eval(&block)
        end
      end

      def self.build(*args)
        args.empty? ? Factor::Object.new : Factor::Struct.new(*args)
      end

      private_class_method :new, :allocate, :build
    end
  end
end
