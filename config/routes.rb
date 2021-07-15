Rails.application.routes.draw do
  root to: 'reserve#new'
  post 'reserve/confirm'
  post 'reserve/back' # 確認画面から「入力画面に戻る」をクリックしたとき
  post 'reserve/complete'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get 'reserve/new' # 入力画面
  # post 'reserve/confirm' # 確認画面
  # post 'reserve/back' # 確認画面から「入力画面に戻る」をクリックしたとき
  # post 'reserve/complete' # 完了画面
end
