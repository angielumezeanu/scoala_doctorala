class ExaminationTypesController < ApplicationController
  before_action :set_examination_type, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!


  load_and_authorize_resource

  # GET /examination_types
  # GET /examination_types.json
  def index
    @examination_types = ExaminationType.all
  end

  # GET /examination_types/1
  # GET /examination_types/1.json
  def show
  end

  # GET /examination_types/new
  def new
    @examination_type = ExaminationType.new
  end

  # GET /examination_types/1/edit
  def edit
  end

  # POST /examination_types
  # POST /examination_types.json
  def create
    @examination_type = ExaminationType.new(examination_type_params)

    respond_to do |format|
      if @examination_type.save
        format.html { redirect_to @examination_type, notice: 'Examination type was successfully created.' }
        format.json { render :show, status: :created, location: @examination_type }
      else
        format.html { render :new }
        format.json { render json: @examination_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /examination_types/1
  # PATCH/PUT /examination_types/1.json
  def update
    respond_to do |format|
      if @examination_type.update(examination_type_params)
        format.html { redirect_to @examination_type, notice: 'Examination type was successfully updated.' }
        format.json { render :show, status: :ok, location: @examination_type }
      else
        format.html { render :edit }
        format.json { render json: @examination_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /examination_types/1
  # DELETE /examination_types/1.json
  def destroy
    @examination_type.destroy
    respond_to do |format|
      format.html { redirect_to examination_types_url, notice: 'Examination type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_examination_type
      @examination_type = ExaminationType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def examination_type_params
      params.require(:examination_type).permit(:name, :title)
    end
end
