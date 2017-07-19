class RmtMailer < ApplicationMailer

  default from: 'stanislav.lakhovytch@gmail.com',
            to: 'doctorbyron05@gmail.com'

  def item_order(user_mail, user_name, user_phone)

    @user_mail = user_mail
    @user_name = user_name
    @user_phone = user_phone

    mail(subject: 'Welcome to My Awesome Site')
  end

end