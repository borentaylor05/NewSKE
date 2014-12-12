class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session

  def to_boolean(str)
  	str == 'true'
  end

  def respond(response)
  	respond_to do |format|
		format.any(:json, :html) { render json: response }
	end
  end

  def access_check
  	whitelist = ["localhost", "social.teletech.com", "jivedemo-teletech-gtm-alliances.jiveon.com"]
   	if !whitelist.include? request.domain
   		respond({ error: "Domain blocked", domain: request.headers })
   	end
  end

end
