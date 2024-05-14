class UserMailer < ApplicationMailer
    default from: ENV['MAILJET_DEFAULT_FROM']

    def welcome_email(user)
      #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
      @user = user 
  
      #on définit une variable @url qu'on utilisera dans la view d’e-mail
      @url  = 'http://monsite.fr/login' 
  
      # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
      mail(to: @user.email, subject: 'Welcome !') 
    end

    def order_email(order)
      @order = order
  
      @cart = @order.user.cart
  
      @user = User.find(order.user_id)
  
      @url  = 'http://monsite.fr/login'
  
      mail(to: @user.email, subject: "Your Chatpatte's order !")
    end

end
