module ApplicationHelper
  def tab_select(name, controller)
    'active' if name == controller
  end

  def show_name
    current_user.name.present? ? current_user.name : current_user.email
  end

  def bootstrap_class_for flash_type
    { success: "alert-success", error: "alert-danger", danger: "alert-danger", alert: "alert-warning", notice: "alert-info" }.stringify_keys[flash_type.to_s] || flash_type.to_s
  end

  def flash_messages(opts = {})
    flash.each do |msg_type, message|
      unless message == true
        concat(content_tag(:div, message, class: "alert #{bootstrap_class_for(msg_type)} fade in") do
                 concat content_tag(:button, 'x', class: "close", data: { dismiss: 'alert' })
                 concat message
               end)
      end
    end
    nil
  end
end
