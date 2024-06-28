# frozen_string_literal: true

SimpleForm::Theme::Engine.routes.draw do
  resources :bulma, only: %i[index new create]
  resources :tailwind, only: %i[index new create]

  root to: 'application#root'
end
