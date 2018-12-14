feature 'enter name and birthday' do
  background do
    visit('/')
    fill_in :name, with: 'Luffy'
    fill_in :day, with: 5
    click_button 'Go!'
  end

  scenario 'submitting name' do
    expect(page).to have_content('Your birthday will be in some days, Luffy')
  end

  scenario 'submitting birthday day' do
    expect(page).to have_content('Your birthday is: 5')
  end
end
