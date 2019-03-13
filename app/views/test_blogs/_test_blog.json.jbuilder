json.extract! test_blog, :id, :title, :body, :created_at, :updated_at
json.url test_blog_url(test_blog, format: :json)
