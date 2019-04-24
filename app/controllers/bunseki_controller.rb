class BunsekiController < ApplicationController
  def index
    @syubobas = Syuboba.all
    @kyousous = Kyousou.all
  end
end
