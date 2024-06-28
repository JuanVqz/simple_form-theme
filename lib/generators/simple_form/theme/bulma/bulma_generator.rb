# frozen_string_literal: true

class SimpleForm::Theme::BulmaGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('templates', __dir__)

  desc 'Copy the bulma initializer file for simple_form'
  def copy_initializer_file
    template 'config/initializers/simple_form_bulma.rb', 'config/initializers/simple_form_bulma.rb'
  end
end
