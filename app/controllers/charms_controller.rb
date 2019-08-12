class CharmsController < ApplicationController
  def index
    @charms = Charm.all
  end
end
