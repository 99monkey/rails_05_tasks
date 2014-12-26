class ItemsController < ApplicationController
  ITEMS = ['bulka', 'vilka', 'tv']

  def index
    @items = ITEMS

  end


  def show

  end
end
