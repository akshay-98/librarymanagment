Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'library#indexa'
  get '/home', to:'library#home'
  get '/login', to:'library#librarian'
  get '/addbook', to:'library#books_details'
  post '/addbook', to:'library#addbookdetail'
  get '/addstudent', to:'library#student_details'
  get '/addchoose', to:'library#choose'
  get '/dispbook', to:'library#displaybook'
  get '/stdnt', to:'library#student'

  resources :library

end
