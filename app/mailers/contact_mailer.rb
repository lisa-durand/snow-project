# frozen_string_literal: true
class ContactMailer < ApplicationMailer
  def new_contact(contact)
    @contact = contact
    mail(
      from: @contact.email,
      to: 'lisa@superdudu.net',
      subject: 'Message du formulaire de contact AVS <3'
    )
  end
end
