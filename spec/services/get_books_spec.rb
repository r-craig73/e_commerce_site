require 'rails_helper'

describe Book do
  it "returns an OK success header when the API call is made" do
    api_check = Book.call_is_ok
    expect(api_check).to(eq("OK"))
  end

  it "returns books when the API call is made" do
    response = JSON.parse(Book.get_bestseller_list)
    expect(response["results"]["books"]).to_not(eq(nil))
  end
end
