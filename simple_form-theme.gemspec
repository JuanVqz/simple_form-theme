# frozen_string_literal: true

require_relative 'lib/simple_form/theme/version'

Gem::Specification.new do |s|
  s.name        = 'simple_form-theme'
  s.version     = SimpleForm::Theme::VERSION
  s.authors     = ['Juan Vasquez']
  s.email       = ['simple_form-theme@juanvasquez.dev']
  s.homepage    = 'https://github.com/juanvqz/simple_form-theme'
  s.summary     = 'The most modern themes for SimpleForm gem.'
  s.description = 'Enjoy SimpleForm with the most modern themes.'
  s.license     = 'MIT'

  s.metadata['homepage_uri'] = s.homepage
  s.metadata['source_code_uri'] = 'https://github.com/juanvqz/simple_form-theme'
  s.metadata['changelog_uri'] = 'https://github.com/juanvqz/simple_form-theme/blob/main/CHANGELOG.md'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  s.required_ruby_version = '>= 2.6.0', '< 3.1'

  s.add_dependency 'rails', '>= 6.0', '< 7.2'
  s.add_dependency 'simple_form', '~> 5.3.0'
end
