# frozen_string_literal: true

# Use this setup block to configure all options available in SimpleForm.
SimpleForm.setup do |config|
  # Default class for buttons
  config.button_class = 'button'

  # Define the default class of the input wrapper of the boolean input.
  config.boolean_label_class = 'checkbox'

  # How the label text should be generated altogether with the required text.
  config.label_text = ->(label, required, _explicit_label) { "#{label} #{required}" }

  # Define the way to render check boxes / radio buttons with labels.
  config.boolean_style = :inline

  # You can wrap each item in a collection of radio/check boxes with a tag
  config.item_wrapper_tag = :div

  # Defines if the default input wrapper class should be included in radio
  # collection wrappers.
  config.include_default_input_wrapper_class = false

  # CSS class to add for error notification helper.
  config.error_notification_class = 'notification is-danger'

  # Method used to tidy up errors. Specify any Rails Array method.
  # :first lists the first message for each field.
  # :to_sentence to list all errors for each field.
  config.error_method = :to_sentence

  # add validation classes to `input_field`
  config.input_field_error_class = 'is-danger'
  config.input_field_valid_class = 'is-success'

  # vertical forms
  #
  # bulma vertical default_wrapper
  config.wrappers :vertical_form, tag: 'div', class: 'field' do |b|
    b.use :html5
    b.use :placeholder
    b.optional :maxlength
    b.optional :minlength
    b.optional :pattern
    b.optional :min_max
    b.optional :readonly
    b.use :label, class: 'label'
    b.use :input, class: 'input', wrap_with: { tag: 'div', class: 'control' }, error_class: 'is-danger', valid_class: 'is-success'
    b.use :full_error, wrap_with: { tag: 'div', class: 'help is-danger' }
    b.use :hint, wrap_with: { tag: 'small', class: 'form-text text-muted' }
  end

  # bulma vertical select_form
  config.wrappers :select_form, tag: 'div', class: 'control' do |b|
    b.use :html5
    b.use :placeholder
    b.optional :pattern
    b.optional :readonly
    b.use :input, wrap_with: { tag: 'div', class: 'select' }
    b.use :full_error, wrap_with: { tag: 'div', class: 'help is-danger' }
    b.use :hint, wrap_with: { tag: 'small', class: 'form-text text-muted' }
  end

  # bulma extension vertical input for boolean
  config.wrappers :vertical_boolean, tag: 'div', class: 'field' do |b|
    b.use :html5
    b.optional :readonly
    b.use :input, class: 'is-checkradio is-info'
    b.use :label
    # b.wrapper :form_check_wrapper, tag: 'div', class: 'control' do |bb|
    #   bb.use :input, wrap_with: { tag: 'label', class: 'checkbox' }
    #   bb.use :label, class: 'checkbox'
    #   bb.use :full_error, wrap_with: { tag: 'div', class: 'help is-danger' }
    #   bb.use :hint, wrap_with: { tag: 'small', class: 'form-text text-muted' }
    # end
  end

  ## vertical input for radio buttons and check boxes
  config.wrappers :vertical_collection, item_wrapper_class: 'form-check', tag: 'fieldset', class: 'form-group', error_class: 'form-group-invalid', valid_class: 'form-group-valid' do |b|
    b.use :html5
    b.optional :readonly
    b.wrapper :legend_tag, tag: 'legend', class: 'col-form-label pt-0' do |ba|
      ba.use :label_text
    end
    b.use :input, class: 'form-check-input', error_class: 'is-invalid', valid_class: 'is-valid'
    b.use :full_error, wrap_with: { tag: 'div', class: 'invalid-feedback d-block' }
    b.use :hint, wrap_with: { tag: 'small', class: 'form-text text-muted' }
  end

  ## bulma vertical file input
  config.wrappers :vertical_file, tag: 'div', class: 'file' do |b|
    b.use :html5
    b.optional :readonly
    b.use :input, class: 'file-input', wrap_with: { tag: 'label', class: 'file-label' }
    b.use :full_error, wrap_with: { tag: 'div', class: 'invalid-feedback d-block' }
    b.use :hint, wrap_with: { tag: 'small', class: 'form-text text-muted' }
  end

  ## bulma vertical multi select
  config.wrappers :vertical_multi_select, tag: 'div', class: 'field' do |b|
    b.use :html5
    b.optional :readonly
    b.use :label, class: 'label'
    b.wrapper tag: 'div', class: 'control' do |ba|
      ba.use :input, class: 'input', error_class: 'is-danger', valid_class: 'is-success'
    end
    b.use :full_error, wrap_with: { tag: 'div', class: 'is-danger' }
    b.use :hint, wrap_with: { tag: 'small', class: 'help' }
  end

  # bulma vertical textarea field
  config.wrappers :vertical_text_form, tag: 'div', class: 'field' do |b|
    b.use :html5
    b.use :placeholder
    b.optional :readonly
    b.use :label, class: 'label'
    b.use :input, class: 'textarea', wrap_with: { tag: 'div', class: 'control' }, error_class: 'is-danger', valid_class: 'is-success'
    b.use :full_error, wrap_with: { tag: 'div', class: 'help is-danger' }
    b.use :hint, wrap_with: { tag: 'small', class: 'form-text text-muted' }
  end

  # The default wrapper to be used by the FormBuilder.
  config.default_wrapper = :vertical_form

  # Custom wrappers for input types. This should be a hash containing an input
  # type as key and the wrapper that will be used for all inputs with specified type.
  config.wrapper_mappings = {
    boolean: :vertical_boolean,
    check_boxes: :vertical_collection,
    date: :vertical_multi_select,
    datetime: :vertical_multi_select,
    file: :vertical_file,
    radio_buttons: :vertical_collection,
    range: :vertical_range,
    time: :vertical_multi_select,
    text: :vertical_text_form
  }
end
