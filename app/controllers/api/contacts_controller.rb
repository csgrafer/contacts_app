class Api::ContactsController < ApplicationController
  def index
    @contact = Contact.first
    render 'index.json.jbuilder'
  end
end
