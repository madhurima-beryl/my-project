class BlogsController < ApplicationController
 before_action :find_blog, only: [:edit, :update, :show, :delete]

  def index
    @blogs = Blog.all
  end

  def show
  end

  def new
    @blog = Blog.new
  end

  def edit
  end

  def create
    @blog = Blog.new
    if @blog.save(blog_params)
      flash[:notice] = "Successfully created blog!"
      redirect_to blog_path(@blog)    #show action 
      #redirect_to @blog              #show action
    else
      flash[:alert] = "Error creating new blog!"
      render :new
    end
  end

  def update
    if @blog.update_attributes(blog_params)
      flash[:notice] = "Successfully updated blog!"
      redirect_to blog_path(@blogs)
    else
      flash[:alert] = "Error updating blog!"
      render :edit
    end
  end

  def destroy
    if @blog.destroy
      flash[:notice] = "Successfully deleted blog!"
      redirect_to blogs_path    #index action
    else
      flash[:alert] = "Error updating blog!"
    end
  end

  private

  def blog_params
    params.require(:blog).permit(:title, :description)
  end

  def find_blog
    @blog = Blog.find(params[:id])
  end

end
