class Api::ContactsController < ApplicationController
  def index
    render 'index.json.jbuilder'
  end
end
