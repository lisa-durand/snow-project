# frozen_string_literal: true
class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.create(params_contact)
    if @contact.save
      ContactMailer.new_contact(@contact).deliver_now
      redirect_to new_contact_path
      flash[:notice] = t('.message')
    else
      flash[:alert] = t('.alert')
      render :new
    end
  end

  private

  def params_contact
    params.require(:contact).permit(:name, :email, :content)
  end
end
