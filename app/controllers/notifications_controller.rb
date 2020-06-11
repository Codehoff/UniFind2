class NotificationsController < ApplicationController
  before_action :set_notification, only: [:destroy]

  def destroy
    @notification.destroy
    redirect_to request.referrer
  end

  private

  def set_notification
    @notification = Notification.find(params[:id])
  end

  def skip_pundit?
    true
  end

end
