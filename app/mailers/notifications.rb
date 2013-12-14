class Notifications < ActionMailer::Base
  default from: "allegralarche@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifications.new_tasklist.subject
  #
  def new_tasklist(tasklist)
    @greeting = "Hi"
    @id = tasklist.id
    mail to: tasklist.user.email
  end
  def new_address(address)
    @greeting = "Hi"
    @id = address.id
    mail to: address.user.email
  end
end
