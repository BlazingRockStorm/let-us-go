class EventPolicy < ApplicationPolicy
    attr_reader :current_user, :event
  
    def initialize(current_user, event)
      @current_user = current_user
      @event = event
    end
  
    def index?
      @current_user.admin?
    end

    def new?
      @current_user.admin?
    end 
    
    def edit?
      @current_user.admin?
    end 

    def show?
      @current_user && @current_user.admin? or @event.hidden_status==false
    end
  
    def create?
      @current_user.admin?
    end

    def update?
      @current_user.admin?
    end

    def public_event?
      @current_user.admin?
    end

    def destroy?
      @current_user.admin?
    end

    def permitted_attributes
        [:name, :description, :place, :start, :end, :age_filter, :pictures]
    end
end