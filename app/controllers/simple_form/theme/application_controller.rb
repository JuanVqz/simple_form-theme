# frozen_string_literal: true

module SimpleForm
  module Theme
    class ApplicationController < ActionController::Base
      # GET /themes
      def root; end

      # GET /theme
      def index
        @items = Item.all
      end

      # GET /theme/new
      def new
        @item = Item.new(form: "#{SimpleForm::Theme::Engine.routes.url_helpers.root_path}#{controller_name}")
      end

      # POST /theme
      def create
        @item = Item.new(item_params)

        if @item.valid?
          Item.all << @item
          redirect_to [controller_name.to_sym, :index], notice: 'Item was successfully created.'
        else
          render :new
        end
      end

      private

      def item_params
        params.require(:item)
              .permit(:name, :url, :secret_key, :active, :description, :background,
                      :serial_number, :quantity, :published_at, :expired_at,
                      :daily_check_at, :form)
      end
    end
  end
end
