class EventPolicy < ApplicationPolicy
    attr_reader :current_user, :event

    def initialize(current_user, event)
      @current_user = current_user
      @event = event
    end

    def index?
      @current_user.admin? or @current_user.organizer?
    end

    def new?
      @current_user.admin? or @current_user.organizer?
    end

    def edit?
      unless Time.now > @event.end
        @current_user.admin? or @current_user.organizer?
      end
    end

    def show?
      @current_user && @current_user.admin? or @current_user && @current_user.organizer? or @event.hidden_status==false
    end

    def create?
      @current_user.admin? or @current_user.organizer?
    end

    def update?
      unless Time.now > @event.end
        @current_user.admin? or @current_user.organizer?
      end
    end

    def public_event?
      @current_user.admin? or @current_user.organizer?
    end

    def destroy?
      unless Time.now > @event.end
        @current_user.admin? or @current_user.organizer?
      end
    end

    def permitted_attributes
        [:name, :description, :place, :start, :end, :age_filter, :pictures]
    end
end
