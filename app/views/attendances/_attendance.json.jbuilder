json.extract! attendance, :id, :username, :barcode, :in_at, :out_at, :created_at, :updated_at
json.url attendance_url(attendance, format: :json)
