class NginxesController < ApplicationController
  before_action :set_nginx, only: %i[ show edit update destroy ]

  # GET /nginxes or /nginxes.json
  def index
    @nginxes = Nginx.all
  end

  # GET /nginxes/1 or /nginxes/1.json
  def show
  end

  # GET /nginxes/new
  def new
    @nginx = Nginx.new
  end

  # GET /nginxes/1/edit
  def edit
  end

  # POST /nginxes or /nginxes.json
  def create
    @nginx = Nginx.new(nginx_params)

    respond_to do |format|
      if @nginx.save
        format.html { redirect_to @nginx, notice: "Nginx was successfully created." }
        format.json { render :show, status: :created, location: @nginx }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @nginx.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nginxes/1 or /nginxes/1.json
  def update
    respond_to do |format|
      if @nginx.update(nginx_params)
        format.html { redirect_to @nginx, notice: "Nginx was successfully updated." }
        format.json { render :show, status: :ok, location: @nginx }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @nginx.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nginxes/1 or /nginxes/1.json
  def destroy
    @nginx.destroy
    respond_to do |format|
      format.html { redirect_to nginxes_url, notice: "Nginx was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nginx
      @nginx = Nginx.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def nginx_params
      params.require(:nginx).permit(:title, :content)
    end
end
