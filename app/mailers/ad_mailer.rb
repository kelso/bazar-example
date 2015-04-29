class AdMailer < ApplicationMailer
  def contact_email(ad, message)
    @message = message
    mail to: ad.email, subject: "Sprava z inzeratu - #{ad.title}"
  end
end
