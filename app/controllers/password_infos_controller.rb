class PasswordInfosController < ApplicationController
  before_action :set_password_info, only: %i[ show edit update destroy ]

  # GET /password_infos or /password_infos.json
  def index
    @password_infos = PasswordInfo.all
  end

  # GET /password_infos/1 or /password_infos/1.json
  def show
  end

  # GET /password_infos/new
  def new
    @password_info = PasswordInfo.new
  end

  # GET /password_infos/1/edit
  def edit
  end

  # POST /password_infos or /password_infos.json
  def create
    @password_info = PasswordInfo.new(password_info_params)

    respond_to do |format|
      if @password_info.save
        format.html { redirect_to password_info_url(@password_info), notice: "Password info was successfully created." }
        format.json { render :show, status: :created, location: @password_info }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @password_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /password_infos/1 or /password_infos/1.json
  def update
    respond_to do |format|
      if @password_info.update(password_info_params)
        format.html { redirect_to password_info_url(@password_info), notice: "Password info was successfully updated." }
        format.json { render :show, status: :ok, location: @password_info }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @password_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /password_infos/1 or /password_infos/1.json
  def destroy
    @password_info.destroy

    respond_to do |format|
      format.html { redirect_to password_infos_url, notice: "Password info was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_password_info
      @password_info = PasswordInfo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def password_info_params
      params.require(:password_info).permit(:website, :username, :password, :date_added)
    end
end
