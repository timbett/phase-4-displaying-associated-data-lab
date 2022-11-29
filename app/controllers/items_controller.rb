class ItemsController < ApplicationController
    def index 
        items = Item.all.as_json(include: :user)
        render json: items
    end 
end
