require 'rails_helper'

describe 'book_index' do
  it 'user can see all books' do
    book_1 = Book.create(title: "To Kill a Mockingbird", pages: 281, year: 1960,)
    author_1 = book_1.authors.create(name: "Harper Lee")
    user_1 = User.create(name: "MicJagger")
    user_2 = User.create(name: "1234books")
    user_14 = User.create(name: "Aaron")
    user_15 = User.create(name: "Leah")
    user_16 = User.create(name: "Good Reader")
    user_1.reviews.create(title: "Great Read!", description: "Wow!! Pleasantly surprised.", rating: 2, book: book_1)
    user_16.reviews.create(title: "He's the best", description: "I never miss one of his books", rating: 2, book: book_1)
    user_15.reviews.create(title: "Oh no", description: "Couldn't finish", rating: 1, book: book_1)


    book_2 = Book.create(title: "Lamb: The Gospel According to Biff, Christ's Childhood Pal", pages: 248, year: 1995)
    author_2 = book_2.authors.create(name: "Christopher Moore")
    user_1.reviews.create(title: "fine", description: "No more of this", rating: 1, book: book_2)
    user_14.reviews.create(title: "just okay", description: "No thanks", rating: 1, book: book_2)
    user_15.reviews.create(title: "pretty bad", description: "Did not like", rating: 1, book: book_2)
    user_16.reviews.create(title: "not the best", description: "Nope", rating: 1, book: book_2)

    book_3 = Book.create(title: "Ethan the Raindrop", pages: 26, year: 2015)
    author_3 = book_3.authors.create(name: "Sean Patrick Guidera")
    user_1.reviews.create(title: "Hooray!", description: "Great!", rating: 5, book: book_3)
    user_16.reviews.create(title: "Lovely", description: "More please", rating: 5, book: book_3)
    user_15.reviews.create(title: "Wonderful", description: "Couldn't put it down", rating: 5, book: book_3)

    book_4 = Book.create(title: "See Spot Run", pages: 24, year: 1915)
    # book_4.authors.create(name: "Happy Gilmore")
    user_1.reviews.create(title: "A treasure", description: "Will read again", rating: 5, book: book_4)
    user_14.reviews.create(title: "Excellent", description: "The kids loved it!", rating: 4, book: book_4)
    user_15.reviews.create(title: "Sad", description: "Too much for me", rating: 3, book: book_4)

    book_5 = Book.create(title: "Testing", pages: 224, year: 1995)
    user_1.reviews.create(title: "thumbs down", description: "Will not read again", rating: 1, book: book_5)
    user_2.reviews.create(title: "don't bother", description: "Couldn't get past the first page", rating: 4, book: book_5)
    user_15.reviews.create(title: "why", description: "The kids hated it!", rating: 3, book: book_5)

    visit '/books'

    expect(page).to have_content(book_1.title)
    expect(page).to have_content(author_1.name)
    expect(page).to have_content("Pages: #{book_1.pages}")
    expect(page).to have_content("Year: #{book_1.year}")
    expect(page).to have_content(book_2.title)
    expect(page).to have_content(author_2.name)
    expect(page).to have_content("Pages: #{book_2.pages}")
    expect(page).to have_content("Year: #{book_2.year}")
    expect(page).to have_content(book_3.title)
    expect(page).to have_content(author_3.name)
    expect(page).to have_content("Pages: #{book_3.pages}")
    expect(page).to have_content("Year: #{book_3.year}")

    expect(page).to have_content("Average Rating: #{book_1.avg_rating}")
    expect(page).to have_content("Total Reviews: #{book_1.reviews_count}")
    expect(page).to have_content("Highest Rated Books:")
    # expect(page).to have_content("Lowest Rated Books: #{}")
    # expect(page).to have_content("Top Reviewers: #{}")
  end
end
