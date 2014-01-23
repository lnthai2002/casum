module Casum
  class Membership < ActiveRecord::Base
    self.table_name = 'memberships'
    belongs_to :user
    belongs_to :group
  end
end
