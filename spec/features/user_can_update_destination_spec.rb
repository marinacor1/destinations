require 'rails_helper'

RSpec.feature "user can edit information for destination " do
  scenario "user can see form to edit and see new page" do
    original_destination = "Bahamas"
    original_url = "http://static.wixstatic.com/media/f26f54_36322a400ce046e28f0d4b763ba2368c.jpeg_256"
    destination = Destination.create(name: original_destination, url_path: original_url)

    visit destination_path(destination)
    click_on "Edit Destination"
    fill_in "Name", with: "Hawaii"
    fill_in "Url path", with: "https://static-s.aa-cdn.net/img/ios/371279677/1fbf8e2fbaf52b6caa1d1de481f8eeb9?v=1"
    click_on "Update Destination"
save_and_open_page
    expect(page).to not_have_content original_destination
    expect(page).to have_content "Hawaii"
  end

end
