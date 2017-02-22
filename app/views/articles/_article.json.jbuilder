json.extract! article, :id, :title, :body, :create_date, :create_time, :update_date, :update_time, :created_at, :updated_at
json.url article_url(article, format: :json)