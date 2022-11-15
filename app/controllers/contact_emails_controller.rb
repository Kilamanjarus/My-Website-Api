class ContactEmailsController < ApplicationController
  def index
    emails = ContactEmail.all()
    render json: emails.as_json
  end

  def post
    email = ContactEmail.new()
    email.email = params[:email]
    email.save
    render json: email.as_json
  end
end
