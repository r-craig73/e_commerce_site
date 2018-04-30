class Book

  def make_NYT_API_call
    response = RestClient::Request.execute(method: :get, url: 'http://api.nytimes.com/svc/books/v3/lists/names.json', headers: {api_key: '9f0e16aa264b4311867fceeeb35d62bf'})
    JSON.parse(response)
  end

end
