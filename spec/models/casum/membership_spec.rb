require 'spec_helper'

module Casum
  describe Membership do
    it 'belongs to many groups' do
      acl = Membership.new
      acl.should be_respond_to(:groups)
    end
    
    it 'belongs to many users' do
      acl = Membership.new
      acl.should be_respond_to(:users)
    end
  end
end
