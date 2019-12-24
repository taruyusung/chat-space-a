Rails.application.routes.draw do
 root to: 'messages#index'
 root to: 'messages#_main_chat'
 root to: 'messages#_side_bar'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

