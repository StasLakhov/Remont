class RmtMailer < ApplicationMailer

  default from: 'doctorbyron05@gmail.com',
            to: 'stanislav.lakhovytch@gmail.com'

  def item_order(user_mail, user_name, user_phone, item)

    @user_mail = user_mail
    @user_name = user_name
    @user_phone = user_phone
    @item = item


    mail(to: 'alexander.khil@devrecords.com', subject: 'Нове Замовлення')
  end

end