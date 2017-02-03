class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.create(params_contact)
    if @contact.save
      ContactMailer.contact(@contact).deliver_now
      flash.now[:notice] = 'Thank you for your message. We will contact you soon!'
      redirect_to new_contact_path()
    else
      flash.now[:error] = 'Cannot send message.'
      render :new
    end
  end

  private

  def params_contact
    params.require(:contact).permit(:name, :email, :content)
  end
end
