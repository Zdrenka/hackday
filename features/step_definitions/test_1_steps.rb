Given("I am on the Login page") do
  @browser = Watir::Browser.new(:chrome)
  @browser.goto('http://qa-daniel-app.s3-website-eu-west-1.amazonaws.com/builds/master-29/?env=../envs/env-qa3.json#!/login')
end

When("I log in as {string} with {string}") do |username, password|
  @login_page = LoginPage.new(@browser)
  @login_page.login_with(username, password)
end

Then("I should see the toast error") do
  @login_page.toast_element.wait_until(&:present?)
    expect(@login_page.toast_element.text).to eq("The user name or password provided is incorrect. Please try again.")
end

And("I am on the login page") do
  expect(@login_page.login_title).to eq("Log in")
end