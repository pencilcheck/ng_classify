require 'ng_classify/version'
require 'rails'

module NgClassify
  class Template < ::Tilt::Template
    def prepare
    end

    def evaluate(scope, locals, &block)
      env = CommonJS::Environment.new(V8::Context.new, :path => File.expand_path(File.join('..'), __FILE__))
      result = env.require('ng-classify-commonjs.js').call(data)
    end
  end

  module Rails
    class Railtie < ::Rails::Railtie
      if ::Rails.version.to_s >= '3.1'
        config.app_generators.template_engine 'ng-classify'
      else
        config.generators.template_engine 'ng-classify'
      end

      initializer 'ng_classify.configure_template_digestor' do |app|
        if app.assets && app.assets.respond_to?(:register_engine)
          app.assets.register_engine '.ng-classify', NgClassify::Template
        end
      end
    end
  end
end
