# frozen_string_literal: true

module SimpleForm::Theme
  class Item
    include ActiveModel::Model
    include ActiveModel::Attributes

    attr_accessor :id, :name, :url, :secret_key, :description, :background, :serial_number, :quantity

    attribute :active, :boolean, default: true
    attribute :published_at, :datetime, default: -> { DateTime.current }
    attribute :expired_at, :date
    attribute :daily_check_at, :time
    attribute :form, :string, default: "#{SimpleForm::Theme::Engine.routes.url_helpers.root_path}bulma"

    validates :name, :url, presence: true
    validates :url, format: URI::DEFAULT_PARSER.make_regexp(%w[http https])

    def self.all
      @all ||= []
    end
  end
end
