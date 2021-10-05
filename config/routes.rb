Rails.application.routes.draw do

  get 'updatebook/index'
  get 'bookdetails/index'
  post 'bookcreated' ,to: "insert#create"
  post 'bookupdated' ,to: "updatebook#index"
  delete 'delete' ,to: "bookdetails#hello"
  root to: 'insert#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
