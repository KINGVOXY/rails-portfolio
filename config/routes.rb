Rails.application.routes.draw do
  root    'home#top'                                             # トップページ
  post    '/create',            to: 'home#create', as:"contacts" # お問い合わせ作成処理
  
  get     '/blog',              to: 'blog#index'                 # ブログ一覧
  get     '/blog/:id/status',   to: 'blog#status'                # 記事詳細

  get     '/login',             to: 'sessions#new'               # ログインページ
  post    '/login',             to: 'sessions#create'            # ログイン処理
  delete  '/logout',            to: 'sessions#destroy'           # ログアウト

  get     '/blog/manage',       to: 'blog#manage'                # ブログ管理画面
  get     '/blog/new',          to: 'blog#new'                   # 記事作成
  post    '/blog/create',       to: 'blog#create'                # 投稿処理
  get     '/blog/:id/edit',     to: 'blog#edit'                  # 記事編集
  put     '/blog/:id/update',   to: 'blog#update'                # 記事更新
  delete  '/blog/:id/destroy',  to: 'blog#destroy'               # 記事削除

  get '*path', controller: 'application', action: 'render_404'   # 404 not found

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
