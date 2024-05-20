module ApplicationHelper
  def notices
    return notice if notice.is_a? Array

    [notice]
  end

  def alerts
    return alert if alert.is_a? Array

    [alert]
  end
end
