# frozen_string_literal: true

class SimpleForm::Theme::TailwindGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('templates', __dir__)

  desc 'Copy the tailwindcss files for simple_form'
  def generate
    install if install?
  end

  private

  def install
    copy_initializers
    copy_locales
  end

  def install?
    name == 'install'
  end

  def copy_initializers
    template 'config/initializers/simple_form_tailwindcss.rb', 'config/initializers/simple_form_tailwindcss.rb'
  end

  def copy_locales
    directory 'config/locales'
  end
end
