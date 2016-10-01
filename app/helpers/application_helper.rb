module ApplicationHelper
  def bulma_class_for flash_type
    case flash_type
      when 'success'
        "is-success"
      when 'error'
        "is-danger"
      when 'alert'
        "is-warning"
      when 'notice'
          "is-info"
      else
        flash_type.to_s
    end
  end

  def status_value
    StatusValue.to_a
  end
end
