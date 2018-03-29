class PostsController < ApplicationController

before_action :authenticate_user!

	def new
		@post = Post.new
	end

	def create
		post = Post.new(post_params)
		post.user_id = current_user.id
		if  post.save
			redirect_to post_path(post.id)
		else
			@posts = Post.all
			@post = Post.new
			render:index
		end
	end

	def index
		@posts = Post.all
		@post = Post.new
	end

	def show
		@post = Post.new
		@postt = Post.find(params[:id])
	end


	def edit
		@post = Post.find(params[:id])
	end

	def update
		post = Post.find(params[:id])
		post.update(post_params)
		if  post.user_id = current_user.id
			redirect_to post_path(post.id)
		else
			@post = Post.new
			@posts = Post.all
			render :index
		end
	end

	def destroy
		@user = User.find_by(params[:id])
		post = Post.find(params[:id])
		if post.user_id = current_user.id
		post.delete
		redirect_to posts_path
		else
			@post = Post.new
			@posts = Post.all
			render :index
		end
	end

	private
	def post_params
		params.require(:post).permit(:title, :body, :user_id)
	end

end
