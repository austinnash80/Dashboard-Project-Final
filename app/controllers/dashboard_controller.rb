class DashboardController < ApplicationController
  def home
      @notes = Note.all
      @mail_schedules = MailSchedule.all
      @mail_items = MailItem.all
      @exams = Exam.all
      @updatesheets = Updatesheet.all

      # response = 'http://api.stackexchange.com/2.2/questions?site=stackoverflow'
      response = 'https://sales-api-final-project.herokuapp.com/ordersheets.json'
      @output  = HTTParty.get response

      responseHTML = 'https://sales-api-final-project.herokuapp.com/ordersheets'
      @outputHTML  = HTTParty.get responseHTML
  end

end
