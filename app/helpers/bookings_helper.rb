module BookingsHelper
  def start_date
    return unless params.key?(:booking)
    return unless params[:booking].key?(:start_at)
    params[:booking][:start_at]
  end

  def end_date
    return unless params.key?(:booking)
    return unless params[:booking].key?(:end_at)
    params[:booking][:end_at]
  end

  def formatted_start_date
    return '' if @booking.start_at.blank?
    format_datetime(@booking.start_at)
  end

  def formatted_end_date
    return '' if @booking.end_at.blank?
    format_datetime(@booking.end_at)
  end

  def format_datetime(utc_date_string)
    utc_date_string.to_datetime.strftime('%m/%d/%Y')
  end
end
