json.array!(@boards) do |board|
  json.extract! board, :id, :Project
  json.url board_url(board, format: :json)
end
