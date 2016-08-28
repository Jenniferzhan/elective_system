Rails.application.routes.draw do


  resources :line_items

  resources :students
  get 'me' => "students#me"

  resources :teachers
  get 'course_lists/index'

  resources :courses

  post 'applicants/create'

  get 'signup' => 'applicants#new'

  get 'sessions/new'
  post 'sessions/create'
  delete 'session/destroy'
  root  'sessions#new'
  delete 'logout' => 'sessions#destroy'
  resources :password_resets, only: [:new, :create, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
