# SimpleForm::Theme
Short description and motivation.

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
* Make sure you have installed the decired css framework. (Installing the CSS Framework is out of the scope of this gem).
  * [Tailwindcss](https://tailwindcss.com/docs/installation)

## Usage

### Install Tailwind CSS initializer

```bash
bin/rails generate simple_form:theme:tailwind install
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
