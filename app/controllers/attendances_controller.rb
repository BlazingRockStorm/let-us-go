class AttendancesController < ApplicationController

    before_action :find_event
    before_action :find_attendance, only: [:destroy, :edit, :update]
    after_action :verify_authorized, only: [:edit, :update, :destroy]
  
  
    def new
      @attendance = @event.attendances.build
    end
  
    def create
      @attendance = @event.attendances.new(params[:attendance].permit(:adults_number, :children_number, :start_time, :end_time))
      @attendance.user_id = current_user.id
  
      respond_to do |format|
        if @attendance.save
          format.html { redirect_to @event }
          format.json { render :show, status: :created, location: [@event] }
        else
          format.html { render "events/show" }
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
  
    private
    def find_event
      @event = Event.find(params[:event_id])
    end
  
    def find_attendance
      @attendance = Attendance.find(params[:id])
    end  
end
