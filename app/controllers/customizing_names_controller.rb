class CustomizingNamesController < ApplicationController
  before_action :set_customizing_name, only: [:show, :edit, :update, :destroy]

  # GET /customizing_names
  # GET /customizing_names.json
  def index
    @customizing_names = CustomizingName.all
  end

  # GET /customizing_names/1
  # GET /customizing_names/1.json
  def show
  end

  # GET /customizing_names/new
  def new
    @customizing_name = CustomizingName.new
  end

  # GET /customizing_names/1/edit
  def edit
  end

  # POST /customizing_names
  # POST /customizing_names.json
  def create
    @customizing_name = CustomizingName.new(customizing_name_params)

    respond_to do |format|
      if @customizing_name.save
        format.html { redirect_to @customizing_name, notice: 'Customizing name was successfully created.' }
        format.json { render :show, status: :created, location: @customizing_name }
      else
        format.html { render :new }
        format.json { render json: @customizing_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customizing_names/1
  # PATCH/PUT /customizing_names/1.json
  def update
    respond_to do |format|
      if @customizing_name.update(customizing_name_params)
        format.html { redirect_to @customizing_name, notice: 'Customizing name was successfully updated.' }
        format.json { render :show, status: :ok, location: @customizing_name }
      else
        format.html { render :edit }
        format.json { render json: @customizing_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customizing_names/1
  # DELETE /customizing_names/1.json
  def destroy
    @customizing_name.destroy
    respond_to do |format|
      format.html { redirect_to customizing_names_url, notice: 'Customizing name was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customizing_name
      @customizing_name = CustomizingName.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customizing_name_params
      params[:customizing_name]
    end
end
