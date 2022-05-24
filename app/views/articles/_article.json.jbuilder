json.extract! article, :id, :title, :content, :pagecount, :published_at, :published, :category_id, :created_at, :updated_at
json.url article_url(article, format: :json)
