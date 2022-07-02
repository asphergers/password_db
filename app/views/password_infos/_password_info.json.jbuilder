json.extract! password_info, :id, :website, :username, :password, :date_added, :created_at, :updated_at
json.url password_info_url(password_info, format: :json)
