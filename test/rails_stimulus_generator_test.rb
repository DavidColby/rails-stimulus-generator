require 'bundler/setup'
require 'active_support/testing/autorun'
require 'rails/generators/test_case'
require 'generators/rails/stimulus_generator'

class RailsStimulusGeneratorTest < Rails::Generators::TestCase
  tests Rails::Generators::StimulusGenerator
  destination File.expand_path('../tmp', __dir__)
  setup :prepare_destination

  test 'It generates a controller in the app/javascript/controllers directory' do
    run_generator ["Hello"]

    assert_file "app/javascript/controllers/hello_controller.js"
  end
end
