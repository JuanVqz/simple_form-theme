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
        run_generator ['random']
      end
    end

    test 'generator copies the initializer file' do
      run_generator ['install']
      assert_file 'config/initializers/simple_form_tailwindcss.rb'
    end

    test 'generator copies the locales files' do
      run_generator ['install']
      assert_directory 'config/locales'
    end
  end
end
