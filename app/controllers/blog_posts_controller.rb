class BlogPostsController < ApplicationController
    def index
        @blog_posts = PostModel.all
    end

    def show
        @blog_post = PostModel.find(params[:id])
    rescue ActiveRecord::RecordNotFound
        redirect_to root_path
    end
end