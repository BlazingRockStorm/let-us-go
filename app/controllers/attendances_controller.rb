class AttendancesController < ApplicationController

    before_action :find_event
    before_action :find_attendance, only: [:edit, :update, :destroy, :approve, :decline, :pay]
    after_action :verify_authorized, only: [:edit, :update, :destroy]
  
  
    def new
      @attendance = @event.attendances.build
    end
  
    def create
      @attendance = @event.attendances.new(params[:attendance].permit(:adults_number, :children_number, :start_time, :end_time))
      @attendance.user_id = current_user.id
      @attendance.update_attribute(:approve_status, nil)
      @attendance.update_attribute(:payment_status, false)
      @attendance.update_attribute(:total_price, @event.adult_price*@attendance.adults_number + @event.child_price*@attendance.children_number)
  
      respond_to do |format|
        if @attendance.save
          format.html { redirect_to @event }
          format.json { render :show, status: :created, location: [@event] }
        else
          format.html { redirect_to @event }
          format.json { render json: @attendance.errors, status: :unprocessable_entity }
        end
      end
    end
  
    def edit
      authorize @attendance
      respond_to do |format|
        format.js
      end
    end
  
    def update
      authorize @attendance
      @attendance.update_attribute(:approve_status, nil)
      @attendance.update_attribute(:payment_status, false)
      @attendance.update_attribute(:total_price, @event.adult_price*@attendance.adults_number + @event.child_price*@attendance.children_number)
      respond_to do |format|
      if @attendance.update(params[:attendance].permit(:adults_number, :children_number, :start_time, :end_time))
        format.js
      else
        format.js
      end
      end
    end
  
    def destroy
      authorize @attendance
      @attendance.destroy
      respond_to do |format|
        format.html { redirect_to event_path(@event), notice: 'Attendances was successfully destroyed.' }
        format.js
      end
    end
  
    def approve
      authorize @attendance
      @attendance.update_attribute(:approve_status, true)
      redirect_to @event
      UserMailer.approve_event(@attendance.user, @event).deliver_now
    end

    def decline
      authorize @attendance
      @attendance.update_attribute(:approve_status, false)
      redirect_to @event
      UserMailer.decline_event(@attendance.user, @event).deliver_now
    end

    def pay
      authorize @attendance
      @attendance.update_attribute(:payment_status, true)
      redirect_to @event
    end

    private
    def find_event
      @event = Event.find(params[:event_id])
    end
  
    def find_attendance
      @attendance = Attendance.find(params[:id])
    end  
end
