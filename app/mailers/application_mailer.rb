# frozen_string_literal: true
class ApplicationMailer < ActionMailer::Base
  default from: 'lisa@superdudu.net'
  layout 'mailer'
end
