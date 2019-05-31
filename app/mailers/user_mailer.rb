class UserMailer < ApplicationMailer
  def edit_event user, event
    @user = user
    @event = event
    mail to: @user.email, subject: "Your event has been changed."
  end

  def delete_event user, event
    @user = user
    @event = event
    mail to: @user.email, subject: "Your event has been deleted."
  end

  def approve_event user, event
    @user = user
    @event = event
    @start_time = @event.attendances.find_by(user_id: user.id).start_time
    mail to: @user.email, subject: "You has been approved to join event"
  end

  def decline_event user, event
    @user = user
    @event = event
    mail to: @user.email, subject: "You has been declined to join event"
  end
end
