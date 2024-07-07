# frozen_string_literal: true

Rails.application.routes.draw do
  mount SimpleForm::Theme::Engine => '/themes'
end
