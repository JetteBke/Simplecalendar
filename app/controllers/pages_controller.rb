class PagesController < ApplicationController
  def home
    @currentdate = Date.today
    @day = Time.now.strftime("%A,%d,%m,%Y").split(",") # returns array
    @amount_days = Time.days_in_month(@day[2].to_i,@day[3].to_i)
    set_dates
  end

  private

  def set_dates
    counter = 1
    @dates = []
    while counter <= @amount_days
      date = Date.new(@day[3].to_i, @day[2].to_i, counter)
      @dates << date
      counter += 1
    end
  end
end
