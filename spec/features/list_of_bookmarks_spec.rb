feature 'see a list of bookmarks' do
  it 'shows a list of bookmarks' do
    visit '/'
    expect(page).to have_content 'Bookmarks'
  end
end

feature 'see a list of bookmarks' do
  it 'shows a list of bookmarks' do
    visit '/bookmarks'
    expect(page).to have_content 'www.netflix.com'
    expect(page).to have_content 'www.bbc.co.uk'
    expect(page).to have_content 'www.twitter.com'
  end
end
