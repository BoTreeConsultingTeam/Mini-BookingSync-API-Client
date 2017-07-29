module ApplicationHelper
  def formatted_date(date)
    DateTime.parse(date).strftime('%m/%d/%Y %I:%M %p')
  end
end