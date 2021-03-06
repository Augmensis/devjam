class ContactMailer < ActionMailer::Base

    default to: 'derek.hampton@hotmail.com'
    
    def contact_email(name, email, body)
        @name = name
        @email = email
        @body = body
        mail(from: email, subject: 'Contact form message from #{name}')
    end
    
end
