class ActivitiesController < ApplicationController
  before_action :set_activity, only: [:show, :edit, :update, :destroy]

  before_action :authenticate_user!



  load_and_authorize_resource

  # GET /activities
  # GET /activities.json
  def index

    @q = Activity.ransack(params[:q])
    @activities = @q.result(distinct: true)

    respond_to do |format|
      format.html
      format.csv { send_data @activities.to_csv }
      format.xls
    end

  end

  # GET /activities/1
  # GET /activities/1.json
  def show
    respond_to do |format|
      format.html
      format.pdf {
        render :pdf => 'activity.pdf',
               :template => '/activities/show',
               :handlers => [:erb],
               :formats => [:pdf],
               :dpi => '1200',
               :margin => {:top                => 4,
                           :bottom             => 4,
                           :left               => 0,
                           :right              => 0},
               :orientation => 'Landscape',
               :page_size => 'A4' }
    end
  end

  # GET /activities/new
  def new
    @activity = Activity.new
  end

  # GET /activities/1/edit
  def edit
  end

  # POST /activities
  # POST /activities.json
  def create
    @activity = Activity.new(activity_params)

    respond_to do |format|
      if @activity.save
        format.html { redirect_to @activity, notice: 'Activity was successfully created.' }
        format.json { render :show, status: :created, location: @activity }
      else
        format.html { render :new }
        format.json { render json: @activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /activities/1
  # PATCH/PUT /activities/1.json
  def update
    respond_to do |format|
      if @activity.update(activity_params)
        format.html { redirect_to @activity, notice: 'Activity was successfully updated.' }
        format.json { render :show, status: :ok, location: @activity }
      else
        format.html { render :edit }
        format.json { render json: @activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /activities/1
  # DELETE /activities/1.json
  def destroy
    @activity.destroy
    respond_to do |format|
      format.html { redirect_to activities_url, notice: 'Activity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_activity
      @activity = Activity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def activity_params
      params.require(:activity).permit(:registration_year, :coordinator_id, :student_id, :status, :examination_type_id, :name, :defense_date, :comitee, :result, :remarks, :mark)
    end
end
