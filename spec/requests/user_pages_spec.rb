require 'spec_helper'

describe "UserPages" do
	subject { page }
	  describe "sigup page" do
	  	before { visit signup_path }
	    
	    it {shuld have_content('Sign up')}
	    it {shuld have_title(full_title('Sign up'))}
	  end
end
