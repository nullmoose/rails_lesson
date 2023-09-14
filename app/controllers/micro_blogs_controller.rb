class MicroBlogsController < ApplicationController
  before_action :find_micro_blog, only: [:show, :edit, :update, :destroy]
  before_action :authorize_user, only: [:edit, :update]

  def index
    puts "My Dumb Change"
    @micro_blogs = MicroBlog.all
  end

  def show; end

  def new
    @micro_blog = MicroBlog.new
  end

  def create
    MicroBlog.create!(micro_blog_params.merge(user_id: @current_user.id))
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
    params.require(:micro_blog).permit(:blurb)
  end

  def find_micro_blog
    @micro_blog = MicroBlog.find(params[:id])
  end

  def authorize_user
    if @current_user.id != @micro_blog.user_id
      flash[:alert] = "You can't edit that micro blog"
      redirect_to micro_blogs_path
    end
  end
end
