RSpec.describe 'Async panel', type: :feature, js: true do
  let!(:subcategory) { create(:subcategory) }

  before do
    visit admin_subcategory_path(subcategory)
  end

  it 'should load async panel content' do
    within('.panel_contents') do
      expect(page).to have_content('Loaded async')
    end
  end
end