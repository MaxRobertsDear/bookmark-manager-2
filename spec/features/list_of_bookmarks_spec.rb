feature 'see a list of bookmarks' do
  it 'shows a list of bookmarks' do
    visit '/'
    expect(page).to have_content 'www.netflix.com'
  end
end