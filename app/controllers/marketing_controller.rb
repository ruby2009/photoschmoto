class MarketingController < ApplicationController

  def index
    @galleries = Gallery.all
  end

end
