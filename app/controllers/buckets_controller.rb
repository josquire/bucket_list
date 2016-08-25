class BucketsController < ApplicationController

  def index
    @buckets = Bucket.where(user_id:current_user.id)
  end

  def show
    @bucket = Bucket.find(params[:id])
  end

  def new
    @bucket = Bucket.new
  end

  def create
    @bucket = Bucket.new(bucket_params)
    @bucket.user_id = current_user.id
    if @bucket.save
      redirect_to bucket_path(@bucket)
    else
      render :new
    end
  end

  def edit
    @bucket = Bucket.find(params[:id])
  end

  def update
    @bucket = Bucket.find(params[:id])
    if @bucket.update(bucket_params)
      redirect_to bucket_path(@bucket)
    else
      render :edit
    end
  end

  def destroy
    @bucket = Bucket.find(params[:id])
    @bucket.destroy
    redirect_to buckets_path
  end

private

  def bucket_params
    params.require(:bucket).permit(:name, :user_id)
  end

end
