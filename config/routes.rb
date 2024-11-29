Rails.application.routes.draw do
  root 'sessions#new' # ตั้งค่า root ไปยังหน้าล็อกอิน
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
