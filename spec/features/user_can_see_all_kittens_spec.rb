require 'rails_helper'

RSpec.describe "user can view kittens index page" do
  it "displays all existing kittens" do
    kitten1 = create(:kitten)
    kitten2 = create(:kitten)

    visit kittens_path

    expect(page).to have_content("All of the Kittens")
    expect(page).to have_content(kitten1.name)
    expect(page).to have_content(kitten2.name)
  end
end
