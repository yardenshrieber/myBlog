class PosttsController < ApplicationController

  def index
    @posts = Postt.all
    render template: "postts/index.html.erb", layout: "application"
  end

end