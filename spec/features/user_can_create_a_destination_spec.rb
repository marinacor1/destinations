require 'rails_helper'

RSpec.feature "User submits a destination" do
  scenario "they see the page of their destination" do
    destination_name = "Bahamas"
    destination_url_path_name = "http://static.wixstatic.com/media/f26f54_36322a400ce046e28f0d4b763ba2368c.jpeg_256"

    visit destinations_path
    click_on "New Destination"
    fill_in "Name", with: destination_name
    # save_and_open_page
    fill_in "Url path", with: destination_url_path_name
    click_on "Create Destination"

    expect(page).to have_content destination_name
    expect(page).to have_css("img[src=\"#{destination_url_path_name}\"]")
  end
end


# RSpec.feature "user does not put in destination" do
#   scenario "user sees empty form asking to fill information again" do
#     destination = nil
#     destination_url = "http://static.wixstatic.com/media/f26f54_36322a400ce046e28f0d4b763ba2368c.jpeg_256"
#
#     visit destinations_path
#     click_on "New Destination"
#     fill_in "destination_name", with: destination
#     fill_in "destination_url_path", with: destination_url
#     click_on "Create Destination"
#
#     #expect address to be back to fill out form
#
#   end
# end
