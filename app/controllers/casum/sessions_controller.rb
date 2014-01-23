require_dependency "casum/application_controller"

module Casum
  class SessionsController < ApplicationController
    def logout
      reset_session
      CASClient::Frameworks::Rails::Filter.logout(self)
    end
  end
end
