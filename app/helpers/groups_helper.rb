module GroupsHelper
  def created_by
    render(inline: "Creator: <strong>#{current_user.name}</strong>")
  end

  def total_amount(model)
    render(inline: "Total amount: <strong><i>$</i>#{model.amount || 0}</strong>")
  end

  def check_icon(icon)
    icon.strip == '' ? 'icon.png' : icon
  end
end
