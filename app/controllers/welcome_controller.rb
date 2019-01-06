
require 'item'

class WelcomeController < ApplicationController
  def index
    
    @items = Item.all.as_json
    @env = ENV.to_hash
  end
  def create

    Item.where(name: request.params["name"]).create
    redirect_to('/')
  end
end
