class DashboardController < ApplicationController
  def home
      @notes = Note.all
      @mail_schedules = MailSchedule.all
      @mail_items = MailItem.all
      @exams = Exam.all
      @updatesheets = Updatesheet.all
  end

end
