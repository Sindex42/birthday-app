feature 'enter name and birthday' do
  scenario 'submitting name' do
    visit('/')
    fill_in :name, with: 'Luffy'
    click_button 'Go!'

    expect(page).to have_content('Your birthday will be in some days, Luffy')
  end
end
