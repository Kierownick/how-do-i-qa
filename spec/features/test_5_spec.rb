require 'rails_helper'

feature 'Test #5' do
  let(:user) { create :user, email: 'test@testowski.pl' }
  before do
    allow_any_instance_of(PagesController).to receive(:authenticate_user!).and_return(true)
    allow_any_instance_of(PagesController).to receive(:current_user).and_return(user)
  end

  scenario 'user can see his email displayed on page', js: true do
    visit test_5_pages_path
    expect(page).to have_content 'test@testowski.pl'
  end

end
