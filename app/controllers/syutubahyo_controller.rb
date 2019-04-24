class SyutubahyoController < ApplicationController
  def index
     @kyi = Kyi.all
  end
end
