class Ability
  include CanCan::Ability
  
  def initialize(user)
    user ||= User.new # guest user
    
    if user.admin?
      can :manage, Item
      can :update, User do |u|
        user == u
      end
      can [:new,:create], User
    else
      can :read, :all
      can :manage, User do |u|
        user == u
      end
    end
  end
end