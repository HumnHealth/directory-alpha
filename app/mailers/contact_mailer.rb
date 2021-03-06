class ContactMailer < ActionMailer::Base
  default from: "no-reply@humanhealth.io"

  def to_admin_email(contact)
    @contact = contact
    mail(to: 'melissa.l.mccoy@gmail.com', subject: 'CareHome Contact Form Submission')
  end

end
