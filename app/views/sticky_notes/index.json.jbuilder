json.array!(@sticky_notes) do |sticky_note|
  json.extract! sticky_note, :id, :content
  json.url sticky_note_url(sticky_note, format: :json)
end
