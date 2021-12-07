feature 'Ability to add a Diary Entry' do 
  scenario 'User can enter content for an entry' do 
    visit '/'
    fill_in 'content', with: 'Today I went to the cinema'
    click_button 'Submit'
    expect(page).to have_content 'Today I went to the cinema'
  end
end
