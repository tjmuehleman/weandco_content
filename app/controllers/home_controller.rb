class HomeController < ApplicationController
  def index

    @content_blocks = ContentBlock.all.order(:id)
    
  end
end
