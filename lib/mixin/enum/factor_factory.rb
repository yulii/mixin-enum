module Mixin
  module Enum
    class FactorFactory
      def self.create(*members, &block)
        build(*members).tap do |f|
          f.instance_eval(&block)
        end
      end

      def self.build(*members)
        members.empty? ? Factor::Object.new : Factor::Struct.new(*members)
      end

      private_class_method :new, :allocate, :build
    end
  end
end
