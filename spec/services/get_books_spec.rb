require 'rails_helper'

describe Book, :vcr => true do
  it "returns an OK success header when the API call is made" do
    response = JSON.parse(Book.get_bestseller_list)
    expect(response["status"]).to(eq("OK"))
  end

  it "returns books when the API call is made" do
    response = JSON.parse(Book.get_bestseller_list)
    expect(response["results"]["books"]).to_not(eq(nil))
  end
end
