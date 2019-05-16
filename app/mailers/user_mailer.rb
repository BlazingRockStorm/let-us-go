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
end
