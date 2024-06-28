# frozen_string_literal: true

# Use this setup block to configure all options available in SimpleForm.
SimpleForm.setup do |config|
  config.wrappers :vertical_form, tag: :div, class: 'mb-4' do |b|
    b.use :html5
    b.use :placeholder
    b.optional :maxlength
    b.optional :minlength
    b.optional :pattern
    b.optional :min_max
    b.optional :readonly
    b.use :label, class: 'block mb-2 text-sm font-medium text-gray-900 dark:text-white'
    b.use :input,
          class: 'bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500',
          error_class: 'bg-red-50 border-red-500 text-red-900 placeholder-red-700 focus:ring-red-500 dark:bg-gray-700 focus:border-red-500 dark:text-red-500 dark:placeholder-red-500 dark:border-red-500',
          valid_class: 'bg-green-50 border-green-500 text-green-900 dark:text-green-400 placeholder-green-700 dark:placeholder-green-500 focus:ring-green-500 focus:border-green-500 dark:bg-gray-700 dark:border-green-500'
    b.use :full_error, wrap_with: { tag: :p, class: 'mt-2 text-sm text-red-600 dark:text-red-600' }
    b.use :hint, wrap_with: { tag: :small, class: 'text-sm text-gray-400 dark:text-gray-400' }
  end

  # vertical input for radio buttons and check boxes
  config.wrappers :vertical_collection, item_wrapper_class: 'form-check',
                                        item_label_class: 'form-check-label',
                                        tag: :fieldset,
                                        class: 'form-group mb-3',
                                        error_class: 'form-group-invalid',
                                        valid_class: 'form-group-valid' do |b|
    b.use :html5
    b.optional :readonly
    b.wrapper :legend_tag, tag: :legend, class: 'col-form-label pt-0' do |ba|
      ba.use :label_text, class: 'ml-3 block text-sm font-medium text-gray-700'
    end
    b.use :input, class: 'focus:ring-indigo-500 h-4 w-4 text-sky-600 border-gray-300 mr-2',
                  error_class: 'is-invalid border-red-400',
                  valid_class: 'is-valid'
    b.use :full_error, wrap_with: { tag: :p, class: 'mt-2 text-sm text-red-600 dark:text-red-600' }
    b.use :hint, wrap_with: { tag: :small, class: 'text-gray-400' }
  end

  # vertical input for radio buttons and check boxes
  # config.wrappers :vertical_check_boxes_collection, item_wrapper_class: 'form-check',
  #                                                   item_label_class: 'form-check-label',
  #                                                   tag: 'fieldset', class: 'form-group mb-3',
  #                                                   error_class: 'form-group-invalid',
  #                                                   valid_class: 'form-group-valid' do |b|
  #   b.use :html5
  #   b.optional :readonly
  #   b.wrapper :legend_tag, tag: 'legend', class: 'col-form-label pt-0' do |ba|
  #     ba.use :label_text, class: 'ml-3 block text-sm font-medium text-gray-700'
  #   end
  #   b.use :input, class: 'focus:ring-indigo-500 h-4 w-4 text-sky-600 border-gray-300 rounded mr-2',
  #                 error_class: 'is-invalid border-red-400',
  #                 valid_class: 'is-valid'
  #   b.use :full_error, wrap_with: {tag: :p, class: "mt-2 text-sm text-red-600 dark:text-red-600"}
  #   b.use :hint, wrap_with: { tag: :small, class: 'text-gray-400' }
  # end

  # horizontal input for inline radio buttons and check boxes
  config.wrappers :horizontal_collection_inline, item_wrapper_class: 'form-check form-check-inline',
                                                 item_label_class: 'form-check-label',
                                                 tag: :div,
                                                 class: 'form-group flex flex-row-reverse w-fit mb-3',
                                                 error_class: 'form-group-invalid',
                                                 valid_class: 'form-group-valid' do |b|
    b.use :html5
    b.optional :readonly
    b.use :label, class: 'pt-0 mb-2'
    b.wrapper :grid_wrapper, tag: :div do |ba|
      ba.use :input, class: 'focus:ring-indigo-500 h-4 w-4 text-sky-600 border-gray-300 rounded mr-2',
                     error_class: 'is-invalid', valid_class: 'is-valid'
      ba.use :full_error, wrap_with: { tag: :p, class: 'mt-2 text-sm text-red-600 dark:text-red-600' }
      ba.use :hint, wrap_with: { tag: :small, class: 'text-gray-400' }
    end
  end

  # vertical multi select
  config.wrappers :vertical_multi_select, tag: :div, class: 'mb-4' do |b|
    b.use :html5
    b.optional :readonly
    b.use :label, class: 'block mb-2 text-sm font-medium text-gray-900 dark:text-white'
    b.wrapper tag: :div, class: 'flex flex-col md:flex-row gap-1 justify-between items-center' do |ba|
      ba.use :input,
             class: 'bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500',
             error_class: 'bg-red-50 border-red-500 text-red-900 placeholder-red-700 focus:ring-red-500 dark:bg-gray-700 focus:border-red-500 dark:text-red-500 dark:placeholder-red-500 dark:border-red-500',
             valid_class: 'bg-green-50 border-green-500 text-green-900 dark:text-green-400 placeholder-green-700 dark:placeholder-green-500 focus:ring-green-500 focus:border-green-500 dark:bg-gray-700 dark:border-green-500'
    end
    b.use :full_error, wrap_with: { tag: :p, class: 'mt-2 text-sm text-red-600 dark:text-red-600' }
    b.use :hint, wrap_with: { tag: :small, class: 'text-gray-400' }
  end

  # vertical input for boolean
  config.wrappers :vertical_boolean, tag: :fieldset, class: 'mb-3',
                                     error_class: 'form-group-invalid',
                                     valid_class: 'form-group-valid' do |b|
    b.use :html5
    b.optional :readonly
    b.wrapper :form_check_wrapper, tag: 'div' do |bb|
      bb.use :input, class: 'focus:ring-indigo-500 h-4 w-4 text-sky-600 border-gray-300 rounded mr-2',
                     error_class: '!border-red-500',
                     valid_class: 'is-valid'
      bb.use :label, class: 'mb-2'
    end
    b.use :full_error, wrap_with: { tag: :p, class: 'mt-2 text-sm text-red-600 dark:text-red-600' }
    b.use :hint, wrap_with: { tag: :small, class: 'text-gray-400' }
  end

  # vertical file input
  config.wrappers :vertical_file, tag: :div, class: 'mb-4' do |b|
    b.use :html5
    b.use :placeholder
    b.optional :maxlength
    b.optional :minlength
    b.optional :readonly
    b.use :label, class: 'block mb-2 text-sm font-medium text-gray-900 dark:text-white'
    b.use :input,
          class: 'block w-full text-sm text-gray-900 border border-gray-300 rounded-lg cursor-pointer bg-gray-50 dark:text-gray-400 focus:outline-none dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400',
          error_class: 'bg-red-50 border-red-500 text-red-900 placeholder-red-700 focus:ring-red-500 dark:bg-gray-700 focus:border-red-500 dark:text-red-500 dark:placeholder-red-500 dark:border-red-500',
          valid_class: 'bg-green-50 border-green-500 text-green-900 dark:text-green-400 placeholder-green-700 dark:placeholder-green-500 focus:ring-green-500 focus:border-green-500 dark:bg-gray-700 dark:border-green-500'
    b.use :full_error, wrap_with: { tag: :p, class: 'mt-2 text-sm text-red-600 dark:text-red-600' }
    b.use :hint, wrap_with: { tag: :small, class: 'text-sm text-gray-400 dark:text-gray-400' }
  end

  # Custom wrappers for input types. This should be a hash containing an input
  # type as key and the wrapper that will be used for all inputs with specified type.
  config.wrapper_mappings = {
    boolean: :vertical_boolean,
    check_boxes: :vertical_collection,
    date: :vertical_multi_select,
    file: :vertical_file,
    datetime: :vertical_multi_select,
    radio_buttons: :vertical_collection,
    time: :vertical_multi_select
  }

  # How the label text should be generated altogether with the required text.
  config.label_text = ->(label, required, _explicit_label) { "#{label} #{required}" }

  # CSS class for buttons
  config.button_class = 'text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 dark:bg-blue-600 dark:hover:bg-blue-700 focus:outline-none dark:focus:ring-blue-800'

  # Set this to div to make the checkbox and radio properly work
  # otherwise simple_form adds a label tag instead of a div around
  # the nested label
  config.item_wrapper_tag = :div

  # CSS class to add for error notification helper.
  config.error_notification_class = 'bg-red-100 border border-red-400 text-red-700 px-4 py-3 rounded'

  # Method used to tidy up errors. Specify any Rails Array method.
  # :first lists the first message for each field.
  # :to_sentence to list all errors for each field.
  config.error_method = :to_sentence

  # The default wrapper to be used by the FormBuilder.
  config.default_wrapper = :vertical_form

  # add validation classes to `input_field`
  config.input_field_error_class = 'bg-red-50'
  config.input_field_valid_class = 'bg-green-50'
end
