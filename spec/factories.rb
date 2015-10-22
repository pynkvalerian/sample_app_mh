FactoryGirl.define do 
	factory :user do 
		name	"Example User"
		email	"example@user.com"
		password	"example"
		password_confirmation	"example"
	end
end