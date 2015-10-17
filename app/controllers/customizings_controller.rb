class CustomizingsController < ApplicationController
  before_action :set_customizing, only: [:show, :edit, :update, :destroy]

  
  # GET /customizings
  # GET /customizings.json
  def index
    @customizings = Customizing.all
  end

  # GET /customizings/1
  # GET /customizings/1.json
  def show
  end

  # GET /customizings/new
  def new
    @customizing = Customizing.new
  end

  # GET /customizings/1/edit
  def edit
  end

  # POST /customizings
  # POST /customizings.json
  def create
    @customizing = Customizing.new(customizing_params)
    # params[:goal][:user_id]
    # params :c, :freigabe_status_id
    respond_to do |format|
      if @customizing.save
        format.html { redirect_to @customizing, notice: 'Customizing was successfully created.' }
        format.json { render :show, status: :created, location: @customizing }
      else
        format.html { render :new }
        format.json { render json: @customizing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customizings/1
  # PATCH/PUT /customizings/1.json
  def update
    respond_to do |format|
      if @customizing.update(customizing_params)
        format.html { redirect_to @customizing, notice: 'Customizing was successfully updated.' }
        format.json { render :show, status: :ok, location: @customizing }
      else
        format.html { render :edit }
        format.json { render json: @customizing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customizings/1
  # DELETE /customizings/1.json
  def destroy
    @customizing.destroy
    respond_to do |format|
      format.html { redirect_to customizings_url, notice: 'Customizing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customizing
      @customizing = Customizing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customizing_params
      params.require(:customizing).permit(:id, :name_id, :version, :software_id, :feature, :freigabe_status_id, :software_req_min, :software_req_max) 
      # params[:customizing]
    end
end
