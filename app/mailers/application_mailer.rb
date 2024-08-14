class ApplicationMailer < ActionMailer::Base
  default from: ENV['DEFAULT_FROM_ADDRESS']
  layout "mailer"


  def hello_email
    @user = User.find(params[:user_id])

    mail(to: (Rails.env.development? ? "test1@jasonfb.net" : @user.email))

  end
end
