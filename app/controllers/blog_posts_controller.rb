class BlogPostsController < ApplicationController
    def index
        @blog_posts = PostModel.all
    end
end