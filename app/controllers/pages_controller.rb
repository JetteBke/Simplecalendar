class PagesController < ApplicationController
  def home
    @currentdate = Date.today
    @days_june = Time.days_in_month(@currentdate.month, @currentdate.year)
    @june = set_dates(@days_june, @currentdate)
    @july_begin = Date.today.at_beginning_of_month.next_month
    @days_july = Time.days_in_month(@july_begin.month, @july_begin.year)
    @july = set_dates(@days_july, @july_begin)
  end

  private

  def set_dates(number, day)
    counter = 1
    @dates = []
    while counter <= number
      date = Date.new(day.year, day.month, counter)
      @dates << date
      counter += 1
    end
    return @dates
  end
end
