module SimpleForm
  module Theme
    class Engine < ::Rails::Engine
      isolate_namespace SimpleForm::Theme
    end
  end
end
