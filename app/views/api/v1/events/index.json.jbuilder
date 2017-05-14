json.array! @events.each.sort do |event|
  json.id event.id
  json.event_type_id event.event_type_id
  json.user_id event.user_id
  json.description event.description
  json.event_type event.event_type
  json.check_list_items event.event_type.check_list_items.sort  
end