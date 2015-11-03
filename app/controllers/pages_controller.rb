class PagesController < ApplicationController

  def home
    @posts = Post.select("id, title, created_at").order('created_at').limit(30)
  end

  def about
  end

  def contact
  end

end
