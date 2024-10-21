class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  protected
  def api_key
     @api_key ||= "62207058cd415d51c352220ff772e836"
  end
end
