class DashboardController < ApplicationController
  def home
      @notes = Note.all
      @mail_schedules = MailSchedule.all
      @mail_items = MailItem.all
      @exams = Exam.all
      @updatesheets = Updatesheet.all

      response = 'https://sales-api-final-project.herokuapp.com/ordersheets.json'
      @output  = HTTParty.get response
      @object = @output.join('')

      responseHTML = 'https://sales-api-final-project.herokuapp.com/ordersheets'
      @outputHTML  = HTTParty.get responseHTML

# START Yesterday Sales
      @day_sales_1 = []
      # @CPA_day_sales_2 = []

      @output.each do |i|
        # i['license'] == 'EA' && i['pur_date'] == (Date.today - 1).to_s ? @EA_day_sales_1.push(i['order_total']) : ''
        # i['license'] == 'CPA' && i['pur_date'] == (Date.today - 1).to_s ? @CPA_day_sales_1.push(i['order_total']) : ''
        i['pur_date'] == (Date.today - 1).to_s ? @day_sales_1.push(i['order_total']) : ''
        # i['pur_date'] == (Date.today - 2).to_s ? @day_sales_2.push(i['order_total']) : ''
      end
# END Yesterday Sales

# START PIE CHART - Dashboard
      @cpaB = []
      @cpaB1 = ['CPA']
      @eaB = []
      @eaB1 = ['EA']
      @bar = []

      @output.each do |i|
        i['license'] == 'CPA' ? @cpaB.push(i['license']) : ''
        i['license'] == 'EA' ? @eaB.push(i['license']) : ''
       end

       @cpaL = @cpaB.length
       @cpaB1.push(@cpaL)
       @eaL = @eaB.length
       @eaB1.push(@eaL)
       @bar.push(@cpaB1, @eaB1)
# END PIE CHART - Dashboard

# Start COLUMN CHART 1 - Dashboard
     @sales_1 = []
     @sales_1A = {}
     @sales_2 = []
     @sales_2A = {}
     @sales_3 = []
     @sales_3A = {}
     @sales_4 = []
     @sales_4A = {}
     @sales_5 = []
     @sales_5A = {}
     @sales_6 = []
     @sales_6A = {}
     @sales_7 = []
     @sales_7A = {}

     @output.each do |i|
       i['pur_date'] == (Date.today - 1).to_s ? @sales_1.push(i['order_total']) : ''
       i['pur_date'] == (Date.today - 2).to_s ? @sales_2.push(i['order_total']) : ''
       i['pur_date'] == (Date.today - 3).to_s ? @sales_3.push(i['order_total']) : ''
       i['pur_date'] == (Date.today - 4).to_s ? @sales_4.push(i['order_total']) : ''
       i['pur_date'] == (Date.today - 5).to_s ? @sales_5.push(i['order_total']) : ''
       i['pur_date'] == (Date.today - 6).to_s ? @sales_6.push(i['order_total']) : ''
       i['pur_date'] == (Date.today - 7).to_s ? @sales_7.push(i['order_total']) : ''
     end

     @sales_1.each do |key, value|
       @sales_1A[(Date.today - 1).strftime('%a, %-d')] = @sales_1.inject(0, :+)
       @sales_2A[(Date.today - 2).strftime('%a, %-d')] = @sales_2.inject(0, :+)
       @sales_3A[(Date.today - 3).strftime('%a, %-d')] = @sales_3.inject(0, :+)
       @sales_3A[(Date.today - 4).strftime('%a, %-d')] = @sales_4.inject(0, :+)
       @sales_3A[(Date.today - 5).strftime('%a, %-d')] = @sales_5.inject(0, :+)
       @sales_3A[(Date.today - 6).strftime('%a, %-d')] = @sales_6.inject(0, :+)
       @sales_3A[(Date.today - 7).strftime('%a, %-d')] = @sales_7.inject(0, :+)
     end

     @barG = @sales_1A.merge( @sales_2A ).merge( @sales_3A ).merge( @sales_4A ).merge( @sales_5A ).merge( @sales_6A ).merge( @sales_7A )
# END COLUMN CHART 1 - Dashboard

# START COLUMN CHART 2 - Dashboard - Month Sales
     @salesM_1 = []
     @salesM_1A = {}
     @salesM_2 = []
     @salesM_2A = {}
     @salesM_3 = []
     @salesM_3A = {}
     @salesM_4 = []
     @salesM_4A = {}
     @salesM_5 = []
     @salesM_5A = {}
     @salesM_6 = []
     @salesM_6A = {}

     @output.each do |i|
       i['pur_date'].to_date.strftime('%m,%y') == (Date.today).strftime('%m,%y') ? @salesM_1.push(i['order_total']) : ''
       i['pur_date'].to_date.strftime('%m,%y') == (Date.today - 30 ).strftime('%m,%y') ? @salesM_2.push(i['order_total']) : ''
       i['pur_date'].to_date.strftime('%m,%y') == (Date.today - 60 ).strftime('%m,%y') ? @salesM_3.push(i['order_total']) : ''
       i['pur_date'].to_date.strftime('%m,%y') == (Date.today - 90 ).strftime('%m,%y') ? @salesM_4.push(i['order_total']) : ''
       i['pur_date'].to_date.strftime('%m,%y') == (Date.today - 120 ).strftime('%m,%y') ? @salesM_5.push(i['order_total']) : ''
       i['pur_date'].to_date.strftime('%m,%y') == (Date.today - 150 ).strftime('%m,%y') ? @salesM_6.push(i['order_total']) : ''
     end

     @sales_1.each do |key, value|
       @salesM_1A[(Date.today - 1).strftime('%b, %y')] = @salesM_1.inject(0, :+)
       @salesM_2A[(Date.today - 30 ).strftime('%b, %y')] = @salesM_2.inject(0, :+)
       @salesM_3A[(Date.today - 60 ).strftime('%b, %y')] = @salesM_3.inject(0, :+)
       @salesM_4A[(Date.today - 90 ).strftime('%b, %y')] = @salesM_4.inject(0, :+)
       @salesM_5A[(Date.today - 120 ).strftime('%b, %y')] = @salesM_5.inject(0, :+)
       @salesM_6A[(Date.today - 150 ).strftime('%b, %y')] = @salesM_6.inject(0, :+)
     end

     @barGM = @salesM_1A.merge( @salesM_2A ).merge( @salesM_3A ).merge( @salesM_4A ).merge( @salesM_5A ).merge( @salesM_6A )
 # END COLUMN CHART 2 - Dashboard - Month Sales

      # @day = Exam.group(:des, :seq_number).order(:des, :seq_number).count
      #  bar_chart Exam.where(des: 'CPA').group(:seq_number).count
      #  bar_chart Exam.where(des: 'EA').group(:seq_number).count
      #  bar_chart Exam.where(:complete_date => 1.months.ago..Time.now).group(:seq_number).count
      #  bar_chart Exam.where(:complete_date => 1.year.ago..Time.now).group(:seq_number).count
      #
      # 'start BETWEEN ? AND ?', DateTime.now.beginning_of_day, DateTime.now.end_of_day
      # bar_chart Exam.where(des: 'CPA').group(:seq_number).count
      # bar_chart Exam.where(des: 'EA').group(:seq_number).count

  end

end
