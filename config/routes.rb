Rails.application.routes.draw do
  get '/square/new', to: 'calculations#new_square'
  get '/square/result', to: 'calculations#square_result'
  
  get '/square_root/new', to: 'calculations#new_square_root'
  get '/square_root/result', to: 'calculations#square_root_result'
  
  get '/payment/new', to: 'calculations#new_payment'
  get '/payment/result', to: 'calculations#payment_result'
  
  get '/random/new', to: 'calculations#new_random'
  get '/random/result', to: 'calculations#random_result'
end
