class MicroBlogsController < ApplicationController
  def index
    @micro_blogs = MicroBlog.all
  end
end
