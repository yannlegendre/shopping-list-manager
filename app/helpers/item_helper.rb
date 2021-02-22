module ItemHelper
  def toggle_checked_button(item)
    message = item.checked ? 'Back in cart' : 'Got it'

    link_to message, toggle_checked_item_path(item), method: :post
  end
end
