class AddApplicationToNotifications < ActiveRecord::Migration[6.0]
  def change
    add_reference :notifications, :application, foreign_key: true
  end
end
