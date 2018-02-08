class ContactFormMailer < ApplicationMailer

  def contact(message)
    #@greeting = "Hi"
    @body = message.body

    mail to: "jchristopher.cato@gmail.com", from: message.email
  end
end
