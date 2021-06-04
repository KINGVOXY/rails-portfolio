class HomeController < ApplicationController
  def top
    @articles = Article.order("id DESC").limit(6) # 記事を最新最大3件取ってくる
  end
  
  def about

  end

  def works
    
  end
end
