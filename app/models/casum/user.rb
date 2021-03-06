module Casum
  class User < ActiveRecord::Base
    self.table_name = 'users'

    attr_accessor :password
    #attr_accessible :email, :password, :group_ids
    has_many :memberships
    has_many :groups, :through=>:memberships
    #attr_accessible :title, :body
    before_validation(:on=>:create) {set_salt}
    
    validates :password, :presence=>:true, :on=>:create 
    
    before_save :encrypt_password
  
  protected
  
    def set_salt
      self.encryption_salt = Time.now.to_i
    end
  
    #Desc: only encrypt password if it has not been set (new) or user explicitly enter password update
    def encrypt_password
      if self.new_record? || !self.password.blank?
        self.encrypted_password = Digest::SHA256.hexdigest("#{self.encryption_salt}::#{@password}")
      end
    end
  end
end
