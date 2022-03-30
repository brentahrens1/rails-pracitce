 class PracticePostsController < ApplicationController
  before_action :set_practice_post, only: %i[ show edit update destroy ]

  # GET /practice_posts or /practice_posts.json
  def index
    @practice_posts = PracticePost.all
  end

  # GET /practice_posts/1 or /practice_posts/1.json
  def show
  end

  def example
    render "example"
  end

  # GET /practice_posts/new
  def new
    @practice_post = PracticePost.new
  end

  # GET /practice_posts/1/edit
  def edit
  end

  # POST /practice_posts or /practice_posts.json
  def create
    @practice_post = PracticePost.new(practice_post_params)

    respond_to do |format|
      if @practice_post.save
        format.html { redirect_to practice_post_url(@practice_post), notice: "Practice post was successfully created." }
        format.json { render :show, status: :created, location: @practice_post }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @practice_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /practice_posts/1 or /practice_posts/1.json
  def update
    respond_to do |format|
      if @practice_post.update(practice_post_params)
        format.html { redirect_to practice_post_url(@practice_post), notice: "Practice post was successfully updated." }
        format.json { render :show, status: :ok, location: @practice_post }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @practice_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /practice_posts/1 or /practice_posts/1.json
  def destroy
    @practice_post.destroy

    respond_to do |format|
      format.html { redirect_to practice_posts_url, notice: "Practice post was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_practice_post
      @practice_post = PracticePost.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def practice_post_params
      params.fetch(:practice_post, {}).permit(:title, :author, :description, :image, :codename)
    end
end
