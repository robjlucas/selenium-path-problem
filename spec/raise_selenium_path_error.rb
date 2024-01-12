require "rails_helper"

RSpec.feature "Selenium path error", type: :feature, js: true do
  background { visit "/" }
  
  it "raised by visiting the default Rails page" do
    expect(page).to have_text("Rails version")
  end
end
