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
    @contact = Contact.new(
      first_name: "Biff", 
      last_name: "Brockstone",
      phone_number: "1234567",
      email: "biffbrock@gal.com",
      )
    @contact.save
    render 'show.json.jbuilder'
  end

  def update
    the_id = params[:id]
    @contact = Contact.find_by(id: the_id)
    @contact.update(
      first_name: "Meg", 
      last_name: "Alosaurus",
      phone_number: "911911911",
      email: "notypeee@brainless.com",
    )
    render 'show.json.jbuilder'
  end
end
