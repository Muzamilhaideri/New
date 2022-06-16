json.extract! article, :id, :Title, :Text, :created_at, :updated_at
json.url article_url(article, format: :json)
