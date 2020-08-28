class ApplicationMailer < ActionMailer::Base
  default from: 'notifications@example.com'

  def welcome_email
    @user = params[:user]
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end

  class SendWeeklySummary
    def run
      User.find_each do |user|
        UserMailer.with(user: user).weekly_summary.deliver_now
      end
    end
  end


end
