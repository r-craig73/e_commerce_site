class Book

  def self.call_is_ok
      api_check = RestClient::Request.execute(method: :get, url: 'https://api.nytimes.com/svc/books/v3/lists/combined-print-and-e-book-fiction.json', headers: {api_key: ENV['NYT_API_KEY']})
      JSON.parse(api_check)["status"]
  end


  def self.get_bestseller_list
    response = RestClient::Request.execute(method: :get, url: 'https://api.nytimes.com/svc/books/v3/lists/combined-print-and-e-book-fiction.json', headers: {api_key: ENV['NYT_API_KEY']})
    # JSON.parse(response)["results"]["books"][0]["title"]  # returns the first title
    # JSON.parse(response)["results"]
  end

end
