require 'test_helper'

class ContentControllerTest < ActionController::TestCase
  test "new content route" do 
  	params = {
  		api_id: 1, 
		doc_id: 1, 
		title: "TesT",
		jive_id: User.first.jive_id,
		client: Client.first.name,
		featured: false,
		message: "TESTING POST"
  	}
  	post :create, params
  end

  test "setting feature" do
  	params = {
  		featured: "true"
  	}
  	post :feature, params
  end

  test "attach message" do
  	params = {
  		message: "Blah"
  	}
  	post :attach_message, params
  end

  test "update client" do
  	post :update_client
  end

  test "get message" do
  	get :get_message
  end
end
