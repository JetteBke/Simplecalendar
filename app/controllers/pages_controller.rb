class PagesController < ApplicationController
  def home
    @currentdate = Date.today
    @first_dates = set_multiple_months(@currentdate)
    @months_with_dates = get_dates_and_amounts(@first_dates)
    @events = Event.all
  end

  private

  def get_dates_and_amounts(firsts)
    all_dates = []
    firsts.each do |first|
      month = {}
      month[:first_date] = first
      amount = amount_of_days(first)
      month[:num] = amount
      date_array = set_dates_of_month(amount, first)
      month[:dates] = date_array
      all_dates << month
    end
    all_dates
  end

  def set_multiple_months(start_date)
    next_month = start_date.at_beginning_of_month
    first_dates = []
    counter = 1
    while counter <= 5
      first_dates << next_month
      next_month = next_month.next_month
      counter += 1
    end
    first_dates
  end

  def amount_of_days(date)
    Time.days_in_month(date.month, date.year)
  end

  def set_dates_of_month(number, day)
    counter = 1
    dates = []
    while counter <= number
      date = Date.new(day.year, day.month, counter)
      dates << date
      counter += 1
    end
    dates
  end
end
