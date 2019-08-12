class CharmsController < ApplicationController
  def index
    @charms = Charms.all
  end
end
