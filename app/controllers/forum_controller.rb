class ForumController < ApplicationController
  # Prevents CSRF attacks by raising an exception.
  protect_from_forgery with: :exception

  before_action :authenticate_user!, only: %i[ new create edit update destroy ]
  before_action :validate_role, only: %i[ new create edit update destroy ]

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
  end

  # POST /comments or /comments.json
  def create
    @comment = Comment.new(comment_params)

    respond_to do |format|
      if @comment.save
        format.html { redirect_to forum_path(@post), notice: "Comment was successfully created." }
        format.json { render :show, status: :created, location: @comment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end
  private
    # Validates that the user is a Regular User
    def validate_role
      if !current_user.user?
        redirect_to root_path, notice: "You have to be a regular user to comment."
      end
    end
end
