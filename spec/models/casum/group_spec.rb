require 'spec_helper'

module Casum
  describe Group do
    it 'must have name' do
      group = Group.new
      group.should_not be_valid
      group.errors[:name].should_not be_blank
    end
    it 'may have one or more user' do
      group = Group.new
      group.should be_respond_to(:users)
    end
  end
end
