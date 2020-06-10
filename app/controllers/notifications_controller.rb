class NotificationsController < ApplicationController
  before_action :set_notification, only: [:destroy]

  def destroy
    @notification.destroy
  end


  private

  def set_notification
    @notification = Notification.find(params[:id])
  end

  def skip_pundit?
    true
  end

end
