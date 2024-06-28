# frozen_string_literal: true

require 'test_helper'
require 'generators/simple_form/theme/tailwind/tailwind_generator'

module SimpleForm::Theme
  class SimpleForm::Theme::TailwindGeneratorTest < Rails::Generators::TestCase
    tests SimpleForm::Theme::TailwindGenerator
    destination Rails.root.join('tmp/generators')
    setup :prepare_destination

    test 'generator runs without errors' do
      assert_nothing_raised do
        run_generator ['install']
      end
    end
  end
end
