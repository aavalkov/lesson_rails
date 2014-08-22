Rails.application.routes.draw do
 match('lessons', {:via => :get, :to => 'lessons#index'})
 match('lessons/' {:via => :post, :to => 'lessons#create'})
end
