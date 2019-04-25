feature 'see a list of bookmarks' do
  it 'shows a list of bookmarks' do
    visit '/'
    expect(page).to have_content 'Bookmarks'
  end
end

feature 'visiting /bookmarks shows me all the bookmarks' do
  it '' do
    Bookmark.create(url: 'http://www.makersacademy.com')
    Bookmark.create(url: 'http://www.google.com')
    Bookmark.create(url: 'http://www.destroyallsoftware.com')

    visit '/bookmarks'

    expect(page).to have_content 'http://www.makersacademy.com'
    expect(page).to have_content 'http://www.google.com'
    expect(page).to have_content 'http://www.destroyallsoftware.com'
  end
end

feature 'add a new bookmark' do
  it 'adds a new bookmark via a form' do
    con = PG.connect(dbname: 'bookmark_manager_test')
    visit '/bookmarks'
    fill_in('url', :with => 'www.facebook.com')
    con.exec("INSERT INTO bookmarks (url) VALUES ('www.facebook.com');")
    click_button 'Add bookmark'
    expect(page).to have_content 'www.facebook.com'
  end
end
