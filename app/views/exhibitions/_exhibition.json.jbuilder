json.extract! exhibition, :id, :title, :start_date, :end_date, :location, :image, :url, :created_at, :updated_at
json.url exhibition_url(exhibition, format: :json)
