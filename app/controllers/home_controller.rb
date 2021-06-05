class HomeController < ApplicationController
  def top
    @articles = Article.order("id DESC").limit(3) # 記事を最新最大3件取ってくる
    @contact = Contact.new # お問い合わせの作成準備
  end
  
  def about

  end

  # contactでつかう
  def create
      @contact = Contact.new(contact_params)
      if @contact.save
          ContactMailer.contact_mail(@contact).deliver
          flash[:notice] = 'お問い合わせを受け付けました'
          redirect_to controller: :home, action: :top, notice: 'メッセージが送信されました'
      else
          render :new
      end
  end

  private

  def contact_params
      params.require(:contact).permit(:name,:email,:message)
  end
  

end
