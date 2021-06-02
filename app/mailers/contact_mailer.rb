class ContactMailer < ApplicationMailer
    def contact_mail(contact)
        @contact = contact
        mail(
            from: 'system@example.com',
            to:   ENV['EMAIL'],
            subject: 'お問い合わせ通知'
        )
    end
end
