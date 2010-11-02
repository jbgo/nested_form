require 'ftools'

module NestedForm
  module Generators
    class InstallGenerator < Rails::Generators::Base
      desc 'Places a copy of the nested_form.js file in your project'
      class_option :path,
                   :type => :string,
                   :default => 'public/javascripts/nested_form.js',
                   :desc => 'Specify a custom path for nested_form.js'

      def self.source_root
        File.dirname(__FILE__) + "/templates"
      end
      
      
      def copy_jquery_file
        path = options[:path]
        unless path =~ /\.js$/
          path = File.join(path, 'nested_form.js')
        end
        File.makedirs(File.dirname(path))
        copy_file 'nested_form.js', path
      end
    end
  end
end
