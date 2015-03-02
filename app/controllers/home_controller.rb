class HomeController < ApplicationController
  def index

    @content_blocks = ContentBlock.all
    
  end
end
