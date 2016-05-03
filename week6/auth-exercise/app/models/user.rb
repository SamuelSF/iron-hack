class User < ActiveRecord::Base
  has_secure_password
  #calls set_default_role after object is created in memory
  #only if the object user does not exist in the database
  after_initialize :set_default_role, :if => :new_record?
  validates :username, presence: true
  validates :email, presence: true, uniqueness: true

  def set_default_role
    unless self.role
        self.role = :user
    end
  end
end
