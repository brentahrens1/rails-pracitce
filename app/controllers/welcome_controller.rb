class WelcomeController < ApplicationController
  def index
    @posts = PracticePost.all
  end

  def about
  end
end
