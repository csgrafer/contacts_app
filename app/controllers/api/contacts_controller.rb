class Api::ContactsController < ApplicationController
  def index
    @contact = Contact.first
    render 'index.json.jbuilder'
  end

  def indices
    @contacts = Contact.all
    render 'indices.json.jbuilder'
  end
end
