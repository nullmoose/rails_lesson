class MicroBlogsController < ApplicationController
  before_action :find_micro_blog, only: [:show, :edit, :update, :destroy]

  def index
    @micro_blogs = MicroBlog.all
  end

  def show; end

  def new
    @micro_blog = MicroBlog.new
  end

  def create
    MicroBlog.create!(micro_blog_params)
    redirect_to micro_blogs_path
  end

  def edit; end

  def update
    @micro_blog.update!(micro_blog_params)
    redirect_to micro_blogs_path
  end

  def destroy
    @micro_blog.destroy!
    redirect_to micro_blogs_path
  end

  private

  def micro_blog_params
    params.require(:micro_blog).permit(:blurb, :user_id)
  end

  def find_micro_blog
    @micro_blog = MicroBlog.find(params[:id])
  end
end
