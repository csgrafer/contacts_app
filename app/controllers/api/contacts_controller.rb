class Api::ContactsController < ApplicationController
  def index
    @contact = Contact.last
    render 'index.json.jbuilder'
  end
end
