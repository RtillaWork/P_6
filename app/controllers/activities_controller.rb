class ActivitiesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_activity, only: [:show, :edit, :update, :destroy]
  before_action :set_activity_types

  # GET /activities  
  def index
    @current_activity = user_current_activity
    @previous_activity = user_previous_activity
    @all_activities_same_date = all_activities_by_date
    @all_activities_same_type = all_activities_by_type

    if @current_activity.nil? && @previous_activity.nil?
      # first time login
      redirect_to new_activity_path and return
    elsif !@current_activity.nil?
      # ongoing current activity
      redirect_to action: :edit, id: @current_activity.id
    else
      # @activities = Activity.all
      @activities = current_user.activities
    end
  end

  def by_categories
    @current_activity = user_current_activity
    @previous_activity = user_previous_activity
    @all_activities_same_date = all_activities_by_date
    @all_activities_same_type = all_activities_by_type

    if @current_activity.nil? && @previous_activity.nil?
      # first time login
      redirect_to new_activity_path and return
    elsif !@current_activity.nil?
      # ongoing current activity
      redirect_to action: :edit, id: @current_activity.id
    else
      # @activities = Activity.all
      @activities = current_user.activities
    end
  end

  # GET /activities/1
  def show
    @current_activity = user_current_activity
    if !@current_activity.nil?
      # ongoing current activity
      redirect_to action: :edit, id: @current_activity.id
    else
      # @activity as routed
      @activity
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
  def create
    @activity = Activity.new(activity_params)
    # current_user.activities << @activity
    if @activity.save
      redirect_to @activity, notice: 'Activity was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /activities/1
  def update

    #  RtillaWork: ensuring end_time, duration = ni, nil OR duration = end_time - start_time
    # updated_activity = @activity.dup
    # updated_activity.attributes = activity_params
    #@activity.attributes = activity_params
    # if @activity.end_time.nil?  || (@activity.end_time.to_i < @activity.start_time.to_i)
    #   @activity.end_time , @activity.duration = nil, nil
    # else
    #   @activity.duration = Time.parse(@activity.end_time) - Time.parse(@activity.start_time)
    #   raise @activity.inspect
    #   # Debug redirect_to welcome_home_path and return
    # end
    # @activity = updated_activity.dup
    # if @activity.save
    if @activity.update(activity_params)
      redirect_to @activity, notice: 'Activity was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /activities/1
  def destroy
    @activity.destroy
    redirect_to activities_url, notice: 'Activity was successfully destroyed.'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_activity
    @activity = Activity.find(params[:id])
    if @activity.user_id == current_user.id
      @activity
    else
      redirect_to root_path, notice: 'DEBUG activity user id mismatch'
    end
  end

  # Only allow this white list params.
  def activity_params
    #  RtillaWork: user_id not included in .permit for added security
    # , as form_with would build parameters on all @activity fields
    #processed_params =
    params.require(:activity)
          .permit(:start_time, :duration, :activity_type_id)
          .merge(user_id: current_user.id)

    # if processed_params[:end_time].nil?  || (processed_params[:end_time].to_i < processed_params[:start_time].to_i)
    #   processed_params[:end_time] , processed_params[:duration] = nil, nil
    # else
    #   processed_params[:duration] =
    #   ( DateTime.parse(processed_params[:end_time]) - DateTime.parse(processed_params[:start_time]) )
    #   .to_s(:iso8601)
    # end

    #processed_params
  end
end
