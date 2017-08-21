require "simple_configurable/version"

module SimpleConfigurable
  def self.with(*attrs)
    configuration_class = Class.new do
      attr_accessor *attrs
    end

    class_methods = Module.new do
      define_method :config do
        @config ||= configuration_class.new
      end

      def configure
        yield config
      end
    end

    Module.new do
      singleton_class.send :define_method, :included do |base|
        base.extend class_methods
      end
    end
  end
end
