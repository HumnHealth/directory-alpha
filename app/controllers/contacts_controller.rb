class ContactsController < ApplicationController
  layout 'empty'

  def new
    @contact = Contact.new
  end

  def create
    puts "inside create"
    @contact = Contact.create!(contact_params)
    ContactMailer.to_admin_email(@contact).deliver
    redirect_to(controller: "landings", action: "index", anchor: "contact-confirm")
    rescue ActiveRecord::RecordInvalid => invalid
        flash[:error_messages] = invalid.record.errors.full_messages
        redirect_to(new_contact_path)
  end

  private
    def contact_params
      params.require(:contact).permit(:first_name,:last_name, :email, :phone, :context, :message)
    end

end
