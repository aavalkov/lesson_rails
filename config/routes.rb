Rails.application.routes.draw do
 match('lessons', {:via => :get, :to => 'lessons#index'})
 match('lessons', {:via => :post, :to => 'lessons#create'})
 match('lessons/new', {:via => :get, :to => 'lessons#new'})
 match('lessons/:id', {:via => :get, :to => 'lessons#show'})
 match('lessons/edit/:id', {:via => :get, :to => 'lessons#edit'})
 match('lessons/:id', {:via => [:patch, :put], :to => 'lessons#update'})
 match('lessons/:id', {:via => :delete, :to => 'lessons#destroy'})
end
