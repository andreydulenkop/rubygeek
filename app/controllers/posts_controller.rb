class PostsController < ApplicationController
  before_action :set_post, only: [:index, :destroy, :edit, :update]
  #before_action :authorize, only: [:edit, :update, :destroy]
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
    @user=@post.user
  end

  def new
    @user = User.find(params[:user_id])
    @post = @user.posts.build
    end

  def edit

  end

  def create
    @user = User.find(params[:user_id])
    @post = @user.posts.create(post_params)


    if @post.save
      redirect_to root_path, notice: 'Post was successfully created.'
    else
      render :new
    end
  end


  # PATCH/PUT /stores/1
  # PATCH/PUT /stores/1.json
  def update
    if @post.update(post_params)
      redirect_to root_path, notice: 'Post was successfully updated.'
    else
      render :edit
    end
  end


  # DELETE /stores/1
  # DELETE /stores/1.json
  def destroy
    @post.destroy
    redirect_to root_path, notice: 'Post was successfully destroyed.'
  end


  private
  # Use callbacks to share common setup or constraints between actions.
  def set_post
    @user = User.find(params[:user_id])
    @post = @user.posts.find(params[:id])

  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def post_params
    params.require(:post).permit(:title, :text)
  end

end
