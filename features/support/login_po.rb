require "page-object"

class LoginPage
  include PageObject

  text_field(:username, id: "input_0")
  text_field(:password, id: "input_1")
  button(:login, class: "md-button")
  element(:toast, class: "md-toast-content")
  h1(:login_title, class: "am-login__title")

  def login_with(username, password)
    self.username = username
    self.password = password
    self.login
  end
end
