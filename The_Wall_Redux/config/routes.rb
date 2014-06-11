Wall::Application.routes.draw do

    resources   :sessions,		only: [:new, :create, :destroy]
    get 		"/signin",  	to: 'sessions#new'
    get 		"/signout", 	to: 'sessions#destroy'
    root        'sessions#new'

    resources   :users,			only: [:index, :new, :create, :show, :destroy]
    get 		"/signup",  	to: 'users#new'

    resources   :posts,			only: [:create, :update, :destroy]
    resources   :comments,		only: [:create, :update, :destroy]


end
