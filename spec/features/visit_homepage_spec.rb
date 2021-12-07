feature 'Visiting the homepage welcomes me' do 
  scenario 'User gets a welcome to your Diary' do 
    visit '/'
    expect(page).to have_content 'Welcome to your online Diary'
  end
end