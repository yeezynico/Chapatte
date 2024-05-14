class AdminMailer < ApplicationMailer
  default from: ENV['MAILJET_DEFAULT_FROM']

  def order_email(order)
    @order = order
    @cart = @order.user.cart
    @user = @order.user

    @admin = User.find_by(is_admin: true)

    @url  = 'http://monsite.fr/login' 

    mail(to: @admin.email, subject: 'New purchase has been made')
  end
end
