module Casum
  class ApplicationController < ActionController::Base
    before_filter CASClient::Frameworks::Rails::Filter
    layout 'casum/layouts/application'
  end
end
