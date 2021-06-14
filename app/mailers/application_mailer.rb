class ApplicationMailer < ActionMailer::Base
  default from: '管理人 <from@example.com>'
  layout 'mailer'

  after_action :set_envelope_from

  private
  # envelope-from を設定する
  # それぞれのメーラーで設定する
  #
  def set_envelope_from
    mail.smtp_envelope_from = 'hogehoge@example.com'
  end

end
