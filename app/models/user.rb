class User < ApplicationRecord
  rolify
  authenticates_with_sorcery!
  validates_confirmation_of :password, message: "should match confirmation", if: :password

  after_create :assign_default_role

  def assign_default_role
    self.add_role(:newuser) if self.roles.blank?
  end

end
