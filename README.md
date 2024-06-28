[![Gem Version](https://badge.fury.io/rb/simple_form-theme.svg)](https://badge.fury.io/rb/simple_form-theme)

# SimpleForm::Theme
Short description and motivation.

### Supported CSS Frameworks
* [Tailwind CSS](https://tailwindcss.com/docs/installation)
* [Bulma](https://bulma.io/documentation/start/installation)

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'simple_form-theme'
```

And then execute:
```bash
bundle
```

As an alternative instead of adding an additional dependency to your project,
you can copy the initializer file to your project from the GitHub repository.

Example:
```bash
cp lib/generators/simple_form/theme/templates/config/initializers/simple_form_tailwindcss.rb yourapp/config/initializers/simple_form_tailwindcss.rb
```

However, if you install the gem, you will get the latest updates and improvements.

## Requirements

* Make sure you have installed [simple_form](https://github.com/heartcombo/simple_form) gem.
* Make sure you have installed the decired css framework.

## Usage

### Install Tailwind CSS initializer

```bash
bin/rails generate simple_form:theme:tailwind install
```

### Install Bulma CSS initializer

```bash
bin/rails generate simple_form:theme:bulma install
```

## Contributing
Bug reports and pull requests are welcome on GitHub at https://github.com/JuanVqz/simple_form-theme

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
