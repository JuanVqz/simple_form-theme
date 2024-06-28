# frozen_string_literal: true

class SimpleForm::Theme::TailwindGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('templates', __dir__)

  desc 'Copy the tailwindcss initializer file for simple_form'
  def copy_initializer_file
    template 'config/initializers/simple_form_tailwindcss.rb', 'config/initializers/simple_form_tailwindcss.rb'
  end
end
