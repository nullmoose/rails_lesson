class MicroBlogsController < ApplicationController
  def all_blurbs
    @micro_blogs = MicroBlog.all
  end

  def index
    @user = User.find(params[:id])
    @micro_blogs = @user.micro_blogs
  end
end
