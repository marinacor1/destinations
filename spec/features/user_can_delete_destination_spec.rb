require 'rails_helper'

RSpec.feature "user can delete destination page" do
  scenario "user sees all destinations after deleting" do
    destination = Destination.create(name: "Spain", url_path: "lsjflk")

    visit destination_path(destination)
    click_on "Delete"

    expect(page).to_not have_content "Spain"
  end
end
