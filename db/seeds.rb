require './app/models/book'
require './app/models/author'
require './app/models/user'
require './app/models/review'

Book.destroy_all
User.destroy_all

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
book_1 = Book.create(title: "Kiss the Girls", pages: 464, year: 1995, thumbnail: "https://upload.wikimedia.org/wikipedia/en/thumb/4/47/Kiss_The_Girls_book_cover.jpg/220px-Kiss_The_Girls_book_cover.jpg")
author_1 = book_1.authors.create(name: "James Patterson")
user_1 = User.create(name: "MicJagger")
user_2 = User.create(name: "DregT")
user_3 = User.create(name: "Lori")
user_4 = User.create(name: "Jae Bird")
user_14 = User.create(name: "Aaron")
user_5 = User.create(name: "jimmthomas78")
user_6 = User.create(name: "AnnieB")
user_7 = User.create(name: "Leah")
user_8 = User.create(name: "metalfloss23")
user_9 = User.create(name: "June1987")
user_10 = User.create(name: "BillieMeyers")
user_11 = User.create(name: "Jackson5")
user_12 = User.create(name: "Roberts' Bookshelf")
user_13 = User.create(name: "Grandma Jan")
user_15 = User.create(name: "LadyBird")

user_1.reviews.create(title: "Great Read!", description: "Wow!! Pleasantly surprised.", rating: 5, book: book_1)
user_14.reviews.create(title: "He's the best", description: "I never miss one of his books", rating: 5, book: book_1)
user_2.reviews.create(title: "Crazy", description: "did not expect that", rating: 3, book: book_1)
user_3.reviews.create(title: "Boo", description: "never again", rating: 1, book: book_1)
user_4.reviews.create(title: "ok", description: "I didn't hate it", rating: 2, book: book_1)
user_5.reviews.create(title: "???", description: "what???", rating: 2, book: book_1)
user_6.reviews.create(title: "!!!", description: "yesssss!!!???", rating: 4, book: book_1)
user_7.reviews.create(title: "hmmmmmmm", description: "....!!!???", rating: 3, book: book_1)

book_2 = Book.create(title: "The Hiding Place", pages: 241, year: 1971, thumbnail: "https://g.christianbook.com/dg/product/cbd/f400/56696.jpg")
author_2 = book_2.authors.create(name: "Corrie Ten Boom")
user_2.reviews.create(title: "Intense", description: "I cried...hard.", rating: 4, book: book_2)
user_1.reviews.create(title: "Hot Takes", description: "The best.", rating: 5, book: book_2)
user_3.reviews.create(title: "Hey", description: "books?", rating: 1, book: book_2)
user_13.reviews.create(title: "!!!", description: "wowoowowowowow", rating: 5, book: book_2)
user_12.reviews.create(title: "Jeez", description: "unusual.", rating: 2, book: book_2)
user_15.reviews.create(title: "More!!", description: "The best ever.", rating: 5, book: book_2)
user_11.reviews.create(title: "No More!!", description: "I can't take it.", rating: 3, book: book_2)

book_3 = Book.create(title: "The Boy in the Striped Pajamas", pages: 216, year: 2006, thumbnail: "http://prodimage.images-bn.com/pimages/9780385751537_p0_v4_s1200x630.jpg")
author_3 = book_3.authors.create(name: "John Boyne")
user_3.reviews.create(title: "Blown Away", description: "Masterfully written. A delight for all ages.", rating: 5, book: book_3)
user_2.reviews.create(title: "Amazing", description: "Dumbfounded", rating: 5, book: book_3)
user_1.reviews.create(title: "fun-ish", description: "surprising in every way", rating: 4, book: book_3)
user_12.reviews.create(title: "interesting", description: "not for me", rating: 2, book: book_3)
user_4.reviews.create(title: "huh", description: "too much", rating: 2, book: book_3)
user_5.reviews.create(title: "thorough", description: "historically accurate", rating: 3, book: book_3)

book_4 = Book.create(title: "Silas Marner", pages: 140 , year: 1861, thumbnail: "https://images.gr-assets.com/books/1347323528l/54539.jpg")
author_4 = book_4.authors.create(name: "George Eliot")
user_4.reviews.create(title: "Tough", description: "I had a hard time making it all the way through.", rating: 2, book: book_4)
user_3.reviews.create(title: "dunno", description: "I'll try again later'.", rating: 1, book: book_4)
user_8.reviews.create(title: "That's a Maybe", description: "tough sell", rating: 3, book: book_4)
user_10.reviews.create(title: "Hip Hip...", description: "HORRAY!!!", rating: 4, book: book_4)
user_1.reviews.create(title: "a Possible", description: "took a while to get interesting", rating: 3, book: book_4)
user_12.reviews.create(title: "Meh", description: "probably not going to read again!", rating: 2, book: book_4)

book_5 = Book.create(title: "To Kill a Mockingbird", pages: 281, year: 1960, thumbnail: "https://images-na.ssl-images-amazon.com/images/I/71FxgtFKcQL.jpg")
author_5 = book_5.authors.create(name: "Harper Lee")
user_5.reviews.create(title: "Never gets old.", description: "This is my fourth time reading this book, and it just keeps getting better.", rating: 5, book: book_5)
user_4.reviews.create(title: "Gold", description: "This should be a movie!.", rating: 5, book: book_5)
user_2.reviews.create(title: "Platinum", description: "so close to reality, I can touch it!!!", rating: 5, book: book_5)
user_11.reviews.create(title: "Marvelous", description: "Hats off the chef/author", rating: 5, book: book_5)
user_14.reviews.create(title: "next to none", description: "Haven't seen better", rating: 5, book: book_5)
user_8.reviews.create(title: "too young to enjoy", description: "needed more explosions", rating: 2, book: book_5)

book_6 = Book.create(title: "Lamb: The Gospel According to Biff, Christ's Childhood Pal", pages: 464, year: 2002, thumbnail: "https://images-na.ssl-images-amazon.com/images/I/51i-iA-flpL._SX330_BO1,204,203,200_.jpg")
author_6 = book_6.authors.create(name: "Christopher Moore")
user_6.reviews.create(title: "Hilarious", description: "I laughed, but I also cried.  It crosses the line a little.", rating: 3, book: book_6)
user_3.reviews.create(title: "Brilliant", description: "A++", rating: 5, book: book_6)
user_7.reviews.create(title: "Perfect", description: "almost to die for", rating: 5, book: book_6)
user_13.reviews.create(title: "Too Funny...", description: "almost lost bowels reading this...", rating: 5, book: book_6)
user_15.reviews.create(title: "still don't know who Biff is...", description: "tried too hard to be funny", rating: 3, book: book_6)
user_7.reviews.create(title: "The Actual Cat's Meow!", description: "Read this 100xs already, no better material ever made!", rating: 5, book: book_6)

book_7 = Book.create(title: "Ethan the Raindrop", pages: 26, year: 2015, thumbnail: "https://images-na.ssl-images-amazon.com/images/I/51LhoDAfIlL._SX258_BO1,204,203,200_.jpg")
author_7 = book_7.authors.create(name: "Sean Patrick Guidera")
user_7.reviews.create(title: "Sweet", description: "Clever and heart-warming.  Will read again.", rating: 5, book: book_7)
user_13.reviews.create(title: "Special", description: "Bought this as a gift for my grandson Ethan. He enjoyed it very much and I was touched by its insightful, gentle storyline. Beautiful book!", rating: 5, book: book_7)
user_6.reviews.create(title: "insightful", description: "I would recommend this book as a gift for children or an adult who is having some trouble enjoying the ride!", rating: 5, book: book_7)
user_1.reviews.create(title: "what a coincidence", description: "I think I might know this guy!", rating: 5, book: book_7)
user_10.reviews.create(title: "can't wait for the next one...", description: "love the writing here, a good read for the parents too!", rating: 5, book: book_7)
user_14.reviews.create(title: "she loves it, I love it", description: "I'd do anything for my little girl. Going to the book signing next week!", rating: 5, book: book_7)

book_8 = Book.create(title: "Lincoln in the Bardo", pages: 368, year: 2017, thumbnail: "https://i.mgtbk.nl/boeken/9780525511083-480x600.jpg")
author_8 = book_8.authors.create(name: "George Saunders")
user_8.reviews.create(title: "Yikes", description: "Why did I even try this?", rating: 1, book: book_8)
user_1.reviews.create(title: "Lovely Read", description: "I think this would work even better as a stage play, somewhat reminiscent of Our Town, and in this sense I think an audio recording of the novel, if done well, might be the best way to experience this work.", rating: 5, book: book_8)
user_2.reviews.create(title: "Absolutely Yes", description: "Much anticipated is the phrase you’ll probably hear most. What that should tell you is that Saunders has a strong fan base.", rating: 4, book: book_8)
user_3.reviews.create(title: "You're Gonna Love it", description: "buy this book already!", rating: 4, book: book_8)
user_6.reviews.create(title: "Fell Out of My Chair", description: "can someone please help me, I've fallen and I can't get up", rating: 3, book: book_8)
user_12.reviews.create(title: "to the person above", description: "Do you need any ambulance? ", rating: 3, book: book_8)

book_9 = Book.create(title: "There There", pages: 304, year: 2018, thumbnail: "https://images-na.ssl-images-amazon.com/images/I/91lKQ1w00DL.jpg")
author_9 = book_9.authors.create(name: "Tommy Orange")
user_9.reviews.create(title: "Too much", description: "Couldn't read after the first chapter.", rating: 2, book: book_9)
user_3.reviews.create(title: "White hot", description: "A devastating debut nobvel.  Masterful.", rating: 4, book: book_9)
user_4.reviews.create(title: "Gripping", description: "Deep dive into urban indigenous life.", rating: 3, book: book_9)
user_11.reviews.create(title: "can't sleep", description: "Went further than I'd expected from Orange.", rating: 4, book: book_9)
user_14.reviews.create(title: "Compelling", description: "Yet off-putting and slightly wierd at times.", rating: 3, book: book_9)
user_15.reviews.create(title: "Would do it again", description: "Storytelling from this author is a gift to man kind", rating: 4, book: book_9)

book_10 = Book.create(title: "Warlight", pages: 304, year: 2018, thumbnail: "https://images-na.ssl-images-amazon.com/images/I/41hW%2BnDBJ7L._SX360_BO1,204,203,200_.jpg")
author_10 = book_10.authors.create(name: "Michael Ondaatje")
user_10.reviews.create(title: "Once is enough.", description: "Not bad, just not what I wanted.", rating: 3, book: book_10)
user_4.reviews.create(title: "Sweeping", description: "Subtle", rating: 3, book: book_10)
user_11.reviews.create(title: "Majestic", description: "Just finished, and I want to beat my chest across the sun!!", rating: 3, book: book_10)
user_5.reviews.create(title: "Good Read", description: "Just enough for the city.", rating: 3, book: book_10)
user_1.reviews.create(title: "feeling itchy", description: "Book was so great, I had goosebumps for a month", rating: 5, book: book_10)
user_8.reviews.create(title: "Sublime", description: "wonderful, fantastic and exuberating", rating: 3, book: book_10)

book_11 = Book.create(title: "The Immortalists", pages: 352, year: 2018, thumbnail: "https://images-na.ssl-images-amazon.com/images/I/51Hr9CCR8FL._SX329_BO1,204,203,200_.jpg")
author_11 = book_11.authors.create(name: "Chloe Benjamin")
user_11.reviews.create(title: "Feeling Immortal", description: "Enjoyed every page.", rating: 5, book: book_11)
user_3.reviews.create(title: "Not bad", description: "I didn't read the whole thing ", rating: 2, book: book_11)
user_13.reviews.create(title: "What a Read", description: " litterally sitting at the edge of my seat!", rating: 5, book: book_11)
user_5.reviews.create(title: "Please Purchase", description: "wow is all all can say about this riviting story.", rating: 4, book: book_11)
user_6.reviews.create(title: "Fell asleep", description: "This comes off like a Michael Whalen song, sleepy and in need of more of a beat.", rating: 2, book: book_11)
user_7.reviews.create(title: "Woke Up!!!", description: "This Had my head spinning, true page turner", rating: 4, book: book_11)

book_12 = Book.create(title: "The Woman in the Window", pages: 240, year: 2018, thumbnail: "https://images-na.ssl-images-amazon.com/images/I/91ulS5E%2BmXL.jpg")
author_12 = book_12.authors.create(name: "A.J. Finn")
user_12.reviews.create(title: "Meh", description: "just okay", rating: 2, book: book_12)
user_7.reviews.create(title: "Boom", description: "crazy good", rating: 5, book: book_12)
user_9.reviews.create(title: "Pap", description: "drop mic", rating: 5, book: book_12)
user_4.reviews.create(title: "That woman scares me", description: "I wouldn't introduce her to Mom, at all", rating: 3, book: book_12)
user_2.reviews.create(title: "looking for meaning", description: "I've heard many theories about this work, what are your thoughts...", rating: 4, book: book_12)
user_15.reviews.create(title: "The Ending!!!", description: "skip to the end before reading the beginning! Pro Tip for this one", rating: 5, book: book_12)

book_13 = Book.create(title: "Unlikely Pair", pages: 135, year: 1776, authors:[author_1, author_2], thumbnail: "https://www.sunnyskyz.com/images/blogpics/dog-chimp1.jpg")
user_12.reviews.create(title: "Weird", description: "don't get it", rating: 2, book: book_13)
user_2.reviews.create(title: "Um", description: "what?", rating: 1, book: book_13)
user_11.reviews.create(title: "Unlikely Purchase", description: "The Comments are stearing me in the other direction...", rating: 1, book: book_13)
user_3.reviews.create(title: "could've Stop after first chapter", description: "was told by my buddies to purchase, and I'm starting to think they were trolling me", rating: 1, book: book_13)
user_1.reviews.create(title: "Where in the world!", description: "Is Carmen San Diego?", rating: 4, book: book_13)
user_8.reviews.create(title: "unlike you guy's", description: "I though my cousin's book... I mean their writing was the best I've seen in years", rating: 5, book: book_13)

book_14 = Book.create(title: "The Serpent of Venice", pages: 336, year: 2014, authors: [author_6], thumbnail: "https://images-na.ssl-images-amazon.com/images/I/510UdA82jpL._SX327_BO1,204,203,200_.jpg")
user_1.reviews.create(title: "okay", description: "slowwwww", rating: 3, book: book_14)
user_2.reviews.create(title: "nah", description: "too much Shakespeare", rating: 2, book: book_14)
user_9.reviews.create(title: "welp, I lost a brain cell", description: "I've heard this same story time and time again.", rating: 3, book: book_14)
user_7.reviews.create(title: "super great", description: "I do like sytax used to create this seed file, bar none", rating: 5, book: book_14)
user_4.reviews.create(title: "gratted cheese", description: "read it all before, would like to hear more from this author though", rating: 3, book: book_14)
user_14.reviews.create(title: "No", description: "Just... NO", rating: 2, book: book_14)

book_15 = Book.create(title: "Fool", pages: 356, year: 2009, authors: [author_6], thumbnail: "https://images-na.ssl-images-amazon.com/images/I/51z9pcNETHL._SX330_BO1,204,203,200_.jpg")
user_12.reviews.create(title: "Funny!", description: "unexpected!", rating: 4, book: book_15)
user_3.reviews.create(title: "Fun!", description: "great!", rating: 4, book: book_15)
user_3.reviews.create(title: "considerably lost", description: "hummor was strange, but once you get the hang of it, great read", rating: 4, book: book_15)
user_3.reviews.create(title: "makes me want to dance", description: "The way Carol and Diane dance with the cute twin brothers... ugh so jealous", rating: 4, book: book_15)
user_3.reviews.create(title: "I feel like the fool", description: "come on guys, you just like the author because he looks better than Steven Segal, my hero", rating: 2, book: book_15)
user_3.reviews.create(title: "Will Read Again", description: "The ending was perfection", rating: 4, book: book_15)
