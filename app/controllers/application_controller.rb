class ApplicationController < ActionController::Base
  helper_method :authenticate_admin!
  helper_method :user_current_activity
  helper_method :user_previous_activity

  # attr_accessor :current_user_activity

  # Naura: current activity (last one non nil) for current_user OR nil = no current activity
  # return ongoing current activity or nil
  def user_current_activity
    if user_signed_in?
      return Activity.where(user_id: current_user.id, duration: nil).order(start_time: :desc).limit(1).first
    else
      nil
    end
  end

   # return  the lastest completed activity 
   def user_previous_activity
     if user_signed_in?
       return Activity.where(user_id: current_user.id).where.not(duration: nil).order(start_time: :desc).limit(1).first
     else
      nil
    end
  end

  def all_activities_by_type
    activities_by_type = {}    
    if user_signed_in? 
      ActivityType.all.each do |activity_type|
        same_type = Activity.where(user_id: current_user.id, activity_type: activity_type.id).order(start_time: :desc)
        activities_by_type[activity_type] = same_type unless same_type.empty?
      end
    end
    activities_by_type
  end

  def all_activities_by_date
    activities_by_date = {}
    if user_signed_in?
      activities_with_date = {}
      current_user.activities.order(start_time: :desc).each do |activity|
        activities_with_date[activity] = activity.start_time.strftime("%j")
      end
      
      activities_with_date.each do |activity, activity_date|
        if activities_by_date[activity_date].nil?
          activities_by_date[activity_date] = [activity]
        else
          activities_by_date[activity_date] << activity
        end
      end      
    end
    activities_by_date
  end



  def authenticate_admin!
    return unless current_user.nil? || !current_user.admin?
    redirect_to root_path
  end
 
  # Naura for OC: Customize devise redirect after login
  def after_sign_in_path_for(_user)
    activities_path
  end

  def set_activity_types
    @activity_types = ActivityType.all
  end

end
