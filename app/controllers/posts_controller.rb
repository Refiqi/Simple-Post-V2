# frozen_string_literal: true

# Post Controller for Index
class PostsController < ApplicationController
  # Memperlihatkan Semua post di View Index
  def index
    @post = Post.all
  end

  # Memperlihatkan Post Melalui id nya
  def show
    @post = Post.find(params[:id])
  end

  # Membuat Post baru
  def new
    @post = Post.new
  end

  # Membuat Post baru
  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to @post
    else
      render 'new'
    end
  end

  # Mengedit Post Sesuai id nya
  def edit
    @post = Post.find(params[:id])
  end

  # Mengupdate Post di Database yang sudah di ubah di Edit
  def update
    @post = Post.find(params[:id])

    if @post.update(post_params)
      redirect_to @post
    else
      render 'edit'
    end
  end

  # Menghapus Post sesuai Id nya
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

  private

  # Memberi Parameter untuk form nya
  def post_params
    params.require(:post).permit(:title, :body)
  end
end
