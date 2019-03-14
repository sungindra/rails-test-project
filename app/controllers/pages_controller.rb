class PagesController < ApplicationController
  def main
    redirect_to "/posts"
  end
end
