require "open-uri"

class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    send_data open("http://lorempixel.com/800/800/people/").read, disposition: "inline"
  end
end
