class User < ActiveRecord::Base
  acts_as_authentic
  
  def admin?
    !id.nil?
  end
end
