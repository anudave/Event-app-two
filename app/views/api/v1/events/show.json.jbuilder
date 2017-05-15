json.id @event.id
json.event_type_id @event.event_type_id
json.user_id @event.user_id
json.description @event.description
json.event_type @event.event_type
json.check_list_items @event.event_type.check_list_items.sort.each do |check_list_item|
  json.id check_list_item.id
  json.description check_list_item.description
  json.checked check_list_item.completed?(@event.user_id)
end



