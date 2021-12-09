feature 'Ability to add a Diary Entry' do 
  scenario 'User can enter content for an entry' do 
    visit '/'
    fill_in 'title', with: 'Tuesday'
    fill_in 'content', with: 'Today I went to the cinema'
    click_button 'Submit'
    expect(page).to have_content 'Tuesday'
    expect(page).to have_content 'Today I went to the cinema'
  end
  scenario 'User can enter multiple entries' do 
    visit '/'
    fill_in 'title', with: 'Tuesday'
    fill_in 'content', with: 'Today I went to the cinema'
    click_button 'Submit'
    click_button 'Submit Another'
    fill_in 'title', with: 'Wednesday'
    fill_in 'content', with: 'I also went swimming'
    click_button 'Submit'
    expect(page).to have_content 'Tuesday'
    expect(page).to have_content 'Today I went to the cinema'
    expect(page).to have_content 'Wednesday'
    expect(page).to have_content 'I also went swimming'
  end
end
