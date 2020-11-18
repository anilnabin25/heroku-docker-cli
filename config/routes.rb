# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root "projects#index"

  resources :projects, only: %i[index show]
  resources :tag_projects, only: :index
  resources :prefecture_projects, only: :index
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
