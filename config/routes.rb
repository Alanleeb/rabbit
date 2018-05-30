Rails.application.routes.draw do
  get 'comments/new'
  get 'comments/create'
  get 'commetnts/index'
  get 'commetnts/new'
  get 'new/show'
 root 'subs#index'


 resources :subs do
   resources :topics
 end

 scope 'topics/:topic_id', as: 'topic' do
   resources :comments, only: [:new, :create]
 end
 
end
