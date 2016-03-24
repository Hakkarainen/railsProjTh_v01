json.array!(@snap_event_lists) do |snap_event_list|
  json.extract! snap_event_list, :id, :snapEventListID, :snapEventType, :eventListTimeStamp, :snapEvent1, :snapEvent2, :snapEvent3, :snapEvent4, :snapEvent5, :snapEvent6, :snapEvent7, :snapEvent8, :snapEvent9, :snapEvent10
  json.url snap_event_list_url(snap_event_list, format: :json)
end
