Rails.application.routes.draw do


  resources :line_items

<<<<<<< HEAD
  resources :students, only: [:new, :create, :index, :destroy, :me]
  get 'me' => "students#me"

  get "check_name/:name"=>"applicants#check_name"

  resources :teachers
get 'mypage' => "teachers#mypage"
  get 'course_lists/index'
  resources :courses do
collection { post :import }
  end
<<<<<<< HEAD
=======
=======
>>>>>>> cddd5d8d8b71a86d48195d53a4155a0e8a604eb8
  resources :students
  get 'me' => "students#me"

  resources :teachers
  get 'course_lists/index'

  resources :courses

<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> dec7d54... The system has finished
>>>>>>> cddd5d8d8b71a86d48195d53a4155a0e8a604eb8
=======
>>>>>>> dec7d54... The system has finished
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
