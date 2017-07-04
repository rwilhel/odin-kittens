require 'rails_helper'

RSpec.describe "user can view kitten show page" do
  it "displays a single kitten" do
    kitten1 = create(:kitten)

    visit "/kittens/#{kitten1.id}"

    expect(page).to have_content(kitten1.name)
    expect(page).to have_content(kitten1.age)
    expect(page).to have_content("Cuteness:")
  end
end
