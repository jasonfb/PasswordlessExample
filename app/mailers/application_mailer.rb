class ApplicationMailer < ActionMailer::Base
  default from: "support@quickvideo.chat"
  layout "mailer"


  def hello_email
    @user = User.find(params[:user_id])

    mail(to: (Rails.env.development? ? "test1@jasonfb.net" : @user.email))

  end
end
