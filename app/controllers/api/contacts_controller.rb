class Api::ContactsController < ApplicationController
  def index
    @contacts = Contact.all
    render 'index.json.jbuilder'
  end

  def show
    the_id = params[:id]
    @contact = Contact.find_by(id: the_id)
    render 'show.json.jbuilder'
  end

  def delete
    the_id = params[:id]
    @contact = Contact.find_by(id: the_id)
    @contact.destroy
    render 'destroy.json.jbuilder'
  end

  def create
    @contact = Contact.new(id: params[:input_id], first_name: params[:input_first_name], last_name: params[:input_last_name], phone_number: params[:input_phone_number], email: params[:input_email] )
    @contact.save
    render 'show.json.jbuilder'
  end
end
