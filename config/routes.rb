Rails.application.routes.draw do


  get 'sessions/new'

  resources :students
  get 'course_lists/index'

  resources :courses
  post 'applicants/create'

  get 'signup' => 'applicants#new'

  post 'sessions/create'
  root  'sessions#new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
