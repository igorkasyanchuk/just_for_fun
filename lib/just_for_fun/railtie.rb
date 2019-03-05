require 'pry'

module JustForFun
  class Railtie < ::Rails::Railtie

    config.after_initialize do
      # load models
      Rails.application.eager_load!

      # iterate over models
      ApplicationRecord.descendants.each do |klass|
        Integer.class_eval do
          method = "to_#{klass.to_s.underscore}"
          if respond_to?(method)
            # such method exists
          else
            define_method method do
              klass.find(self)
            end
          end
        end

        Array.class_eval do
          method = "to_#{klass.to_s.underscore.pluralize}"
          if respond_to?(method)
            # such method exists
          else
            define_method method do
              klass.where(klass.primary_key => self)
            end
          end
        end
      end
    end

  end
end
