class MailSchedulesController < ApplicationController
  before_action :set_mail_schedule, only: [:show, :edit, :update, :destroy]

  # GET /mail_schedules
  # GET /mail_schedules.json
  def index
    @mail_schedules = MailSchedule.all
  end

  # GET /mail_schedules/1
  # GET /mail_schedules/1.json
  def show
  end

  # GET /mail_schedules/new
  def new
    @mail_schedule = MailSchedule.new
  end

  # GET /mail_schedules/1/edit
  def edit
  end

  # POST /mail_schedules
  # POST /mail_schedules.json
  def create
    @mail_schedule = MailSchedule.new(mail_schedule_params)

    respond_to do |format|
      if @mail_schedule.save
        format.html { redirect_to @mail_schedule, notice: 'Mail schedule was successfully created.' }
        format.json { render :show, status: :created, location: @mail_schedule }
      else
        format.html { render :new }
        format.json { render json: @mail_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mail_schedules/1
  # PATCH/PUT /mail_schedules/1.json
  def update
    respond_to do |format|
      if @mail_schedule.update(mail_schedule_params)
        format.html { redirect_to @mail_schedule, notice: 'Mail schedule was successfully updated.' }
        format.json { render :show, status: :ok, location: @mail_schedule }
      else
        format.html { render :edit }
        format.json { render json: @mail_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mail_schedules/1
  # DELETE /mail_schedules/1.json
  def destroy
    @mail_schedule.destroy
    respond_to do |format|
      format.html { redirect_to mail_schedules_url, notice: 'Mail schedule was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mail_schedule
      @mail_schedule = MailSchedule.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mail_schedule_params
      params.require(:mail_schedule).permit(:mail_id, :drop_date, :group_30, :group_60, :group_90)
    end
end
