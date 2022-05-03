class Activity < ApplicationRecord
  belongs_to :user
  belongs_to :activity_type

  # def self.activity_in_progress
  # 	Activity.find_by(:end_time == nil)
  # end

  #  RtillaWork: current activity (last one non nil) for current_user OR nil = no current activity
  # return ongoing current activity or nil WARNING replace .nil? with .blank? or better .empty? when used

  # scope :user_current_activity, -> { where(user_id: current_user.id, duration: nil).order(start_time: :desc).limit(1).first if  user_signed_in?}

  # return  the lastest completed activity, WARNING same as above
  # scope :user_previous_activity, -> { where(user_id: current_user.id).where.not(duration: nil).order(start_time: :desc).limit(1).first if  user_signed_in?}

  # scope :all_activities_by_type, -> (activity_type) { current_user.activities.where(user_id: current_user.id, activity_type: activity_type.id).order(start_time: :desc) if  user_signed_in? }

  # scope :all_activities_by_type, -> (activity_type) { where(user_id: current_user.id, activity_type: activity_type.id).order(start_time: :desc) if  user_signed_in? }

end
