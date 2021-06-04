Rails.application.routes.draw do
  root    'home#top'                                    # トップページ
  get     '/about',             to: 'home#about'        # 自己紹介
  get     '/works',             to: 'home#works'        # 作品紹介
  
  get     '/login',             to: 'sessions#new'      # ログインページ
  post    '/login',             to: 'sessions#create'   # ログイン処理
  delete  '/logout',            to: 'sessions#destroy'  # ログアウト
  
  get     '/blog',              to: 'blog#index'        # ブログ一覧
  get     '/blog/manage',       to: 'blog#manage'       # ブログ管理画面
  get     '/blog/new',          to: 'blog#new'          # 記事作成
  post    '/blog/create',       to: 'blog#create'       # 投稿処理
  get     '/blog/:id/status',   to: 'blog#status'       # 記事編集
  get     '/blog/:id/edit',     to: 'blog#edit'         # 記事編集
  put     '/blog/:id/update',   to: 'blog#update'       # 記事更新
  delete  '/blog/:id/destroy',  to: 'blog#destroy'      # 記事削除
  
  get     '/contact',           to: 'contacts#new'      # 問い合わせページ
  post    '/contact',           to: 'contacts#create'   # 問い合わせ完了処理


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
