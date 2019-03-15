class ApplicationController < ActionController::Base
  include DeviseWhitelist
  include SetSource
  include CurrentUserConcern
  include SetDefaultHeadData
  protect_from_forgery with: :exception
end
