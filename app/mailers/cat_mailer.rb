class CatMailer < ActionMailer::Base
  # default from: "nannigan@nannigans.com" , to: { User.pluck(:email) }
#http://www.sitepoint.com/fun-sending-mail-rails/
# http://www.gotealeaf.com/blog/handling-emails-in-rails 
# looks maybe simple uses gmail as cofig with figaro

#or new aws gem supposed to include mail
#http://ruby.awsblog.com/post/Tx18J68KPIUWMOX/Announcing-the-aws-sdk-rails-Gem

  default  to: { User.pluck(:email) }

  def welcome_email(user)
    @user = user
    # I am overriding the 'to' default
    mail(to: @user.email, subject: 'Do you have any cats?')
  end
end
