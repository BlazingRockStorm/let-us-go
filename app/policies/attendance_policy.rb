class AttendancePolicy < ApplicationPolicy
    attr_reader :current_user, :attendance
  
    def initialize(current_user, attendance)
      @current_user = current_user
      @attendance = attendance
    end

    def update?
      @current_user == @attendance.user
    end

    def edit?
      @current_user == @attendance.user
    end

    def destroy?
      @current_user == @attendance.user
    end

    def approve?
      @current_user.organizer? or @current_user.admin?
    end

    def decline?
      @current_user.organizer? or @current_user.admin?
    end

    def pay?
      @current_user == @attendance.user
    end
end
