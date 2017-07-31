module ApplicationHelper
  def formatted_date(date)
    DateTime.parse(date).strftime('%m/%d/%Y')
  end
end