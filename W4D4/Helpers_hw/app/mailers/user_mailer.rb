class UserMailer < ApplicationMailer

  def welcome_email(user)
    @user = user
    @url = 'http://example.com/login'
    mail(to: user.email, subject: 'Welcome to My Awesome Site')

    # attachments['filename.jpg'] = File.read('/path/to/filename.jpg')

    #     # app/config/environments/development.rb
    # config.action_mailer.default_url_options = { host: 'localhost:3000' }
    #
    # # app/config/environments/production.rb
    # config.action_mailer.default_url_options = { host: 'www.production-domain.com' }
  end

  def reminder_email(user)

  end
end
