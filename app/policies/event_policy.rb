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
      @current_user.admin? or @current_user.organizer?
    end

    def show?
      true
    end

    def create?
      @current_user.admin? or @current_user.organizer?
    end

    def update?
        @current_user.admin? or @current_user.organizer?
    end

    def destroy?
        @current_user.admin? or @current_user.organizer?
    end

    def permitted_attributes
        [:name, :description, :place, :start, :end, :age_filter, :pictures]
    end
end
