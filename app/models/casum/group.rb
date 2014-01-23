module Casum
  class Group < ActiveRecord::Base
    self.table_name = 'groups'
    has_many :memberships
    has_many :users, :through=>:memberships
    validates :name, :presence=>true
  end
end
