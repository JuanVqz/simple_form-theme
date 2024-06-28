module SimpleForm
  module Theme
    class ApplicationRecord < ActiveRecord::Base
      self.abstract_class = true
    end
  end
end
