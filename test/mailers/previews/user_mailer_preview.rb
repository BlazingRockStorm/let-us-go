# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/edit_event
  def edit_event
    UserMailer.edit_event
  end

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/delete_event
  def delete_event
    UserMailer.delete_event
  end

end
