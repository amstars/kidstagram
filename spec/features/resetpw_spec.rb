require 'spec_helper'

describe "Resetting the Password" do


    it "should be possible" do
    signup ("jim@jimvanfleet.com")
    logout
    click_link "Sign In"
    click_link "Forgot Your Password?"
    fill_in "Email" :with => "jim@jimvanfleet.com"
    click_button "Send me reset password instructions"
    save_and_open_page
    open_email ('jim@jimvanfleet.com')
    current_email.click_link 'Jim Stuff
   end
 end  

end