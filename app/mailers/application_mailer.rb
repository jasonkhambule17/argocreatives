class ApplicationMailer < ActionMailer::Base
  default from: "Your Mailer <noreply@yourdomain.com>"
  default to: "Your Name <your.email@yourdomain.com>"

  def new_message(contact)
    @contact = contact

    # mail subject: "Message from #{contact.name}"
  end

end
