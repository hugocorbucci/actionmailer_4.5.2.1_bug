require 'action_mailer'

class MyMailer < ActionMailer::Base
  def send_email(my_mail)
    mail(to: 'recipient@email.com', from: 'from@email.com', subject: 'example') do |format|
      format.html { render html: my_mail.html }
    end
  end
end
