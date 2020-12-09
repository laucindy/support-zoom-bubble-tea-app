# typed: false
# frozen_string_literal: true

Rails.application.routes.draw do
  resources :stores, except: [:new, :edit]
  resources :owners, only: [:index, :show]
  resources :bubble_teas, except: [:new, :edit]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post "/graphql", to: "graphql#execute"
end
