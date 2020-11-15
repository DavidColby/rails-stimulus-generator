require 'rails/generators'

class Rails::Generators::StimulusGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('templates', __dir__)

  check_class_collision suffix: "Controller"

  def create_controller_directory
    empty_directory("app/javascript/controllers") unless File.directory?("app/javascript/controllers")
  end

  def create_controller
    template('controller.js', File.join("app/javascript/controllers/#{file_name}_controller.js"))
  end
end
