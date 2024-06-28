# frozen_string_literal: true

require 'test_helper'
require 'generators/simple_form/theme/bulma/bulma_generator'

module SimpleForm::Theme
  class SimpleForm::Theme::BulmaGeneratorTest < Rails::Generators::TestCase
    tests SimpleForm::Theme::BulmaGenerator
    destination Rails.root.join('tmp/generators')
    setup :prepare_destination

    test 'generator runs without errors' do
      assert_nothing_raised do
        run_generator ['arguments']
      end
    end
  end
end
