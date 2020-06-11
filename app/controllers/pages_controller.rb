class PagesController < ApplicationController
  
  before_action :new_notification, only: [:home]
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def new_notification
    if user_signed_in?
      Notification.destroy_all
      @user_apps = Application.joins(:universities_program).order("start_time ASC").where(user_id: current_user.id)
      @user_programs = [] 
      @user_apps.each do |app|
        @user_programs << app.universities_program
      end    
      @user_apps.each do |app|
        if (Time.now - current_user.current_sign_in_at).floor <= 10
          if (app.universities_program.documents - app.documents) != [] 
            if ((app.universities_program.start_time - Time.now)/86400) <= 30
              if app.notifications == []
                Notification.create(application_id: app.id, content:"Only #{((app.universities_program.start_time - Time.now)/86400).ceil} days left for your application at #{app.universities_program.university.name}")
              end 
            end
          end
        end
      end
    end
  end 
end
