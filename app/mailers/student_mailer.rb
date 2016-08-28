class StudentMailer < ActionMailer::Base
  def password_reset(student)
    @student = student
    mail to: studnet.email, subject: "Password reset"
  end
end
