require_relative "lib/post.rb"
require_relative "lib/blog.rb"
require_relative "lib/sponsored_post.rb"

blog = Blog.new

text1 = "Man braid stumptown williamsburg, direct trade ugh selvage ennui
lo-fi cold-pressed VHS fashion axe drinking vinegar blog pickled kickstarter.
Narwhal post-ironic franzen put a bird on it. Vice kickstarter venmo selfies
direct trade jean shorts, raw denim chartreuse. Four dollar toast keffiyeh kickstarter
kitsch 8-bit, craft beer crucifix fap skateboard franzen bushwick trust fund disrupt.
Ethical master cleanse schlitz ramps shoreditch migas. Portland green juice tacos,
next level sriracha drinking vinegar normcore tumblr put a bird on it
jean shorts skateboard. Flexitarian post-ironic pour-over,
freegan skateboard listicle health goth shoreditch tattooed kombucha knausgaard authentic."

text2 = "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum."

text3 = "Bacon ipsum dolor amet picanha shoulder strip steak, short ribs porchetta ham meatloaf
pork shankle flank rump pig kevin biltong. Drumstick meatball brisket alcatra tail shank
shoulder meatloaf andouille pork chop. T-bone pork loin chicken meatloaf frankfurter ball
tip. Rump sirloin ribeye, cow kielbasa pork chop shoulder cupim leberkas swine pancetta
landjaeger strip steak. Sirloin drumstick pork chop, t-bone doner kielbasa frankfurter
venison beef short loin. Ham shank ribeye porchetta. T-bone pastrami turducken, shank
capicola jowl tri-tip."

text4 = "Sugar aroma, coffee, medium percolator caffeine foam lungo café au lait chicory
strong shop siphon aroma, cup, beans mocha, steamed, decaffeinated irish
mocha so instant. Aftertaste latte cup spoon single shot, est variety java barista plunger
pot rich skinny steamed. Kopi-luwak roast, mazagran lungo, espresso, skinny seasonal, espresso
grinder, at, breve body, doppio steamed viennese qui blue mountain a irish, chicory sweet
cappuccino bar macchiato. Body, french press, foam to go strong, espresso, wings chicory body,
con panna blue mountain half and half caffeine ristretto. Viennese percolator cappuccino,
and iced cappuccino est galão, shop con panna macchiato java wings americano rich java,
and robusta, iced eu at rich brewed doppio. Milk flavour dripper siphon, french press extra
chicory ristretto, single origin and cinnamon half and half sugar trifecta organic. In breve
fair trade caramelization dark java, decaffeinated robust irish decaffeinated, crema mocha
to go qui con panna crema to go. Body percolator seasonal roast, to go sit, dark black, at,
cortado cappuccino ut roast irish. Americano macchiato, kopi-luwak, turkish, decaffeinated
cinnamon brewed cup cortado carajillo that caffeine caramelization, lungo affogato, breve ut,
whipped, sweet, doppio caffeine coffee trifecta kopi-luwak. Aromatic roast, latte trifecta iced
acerbic siphon instant at strong medium and skinny extra. Instant cup acerbic, white, aroma
black skinny, viennese, siphon, grinder, con panna, latte roast as milk americano variety."

text5 = "Cat ipsum dolor sit amet, sleep in the bathroom sink or jump launch to pounce upon little
yarn mouse, bare fangs at toy run hide in litter box until
treats are fed run outside as soon as door open. Leave fur on owners clothes intently stare at
the same spot, but when in doubt, wash. Eat and than sleep on your face damn that dog , or poop
on grasses for eat the fat cats food lick the plastic bag peer out window, chatter at birds,
lure them to mouth ears back wide eyed. Intently sniff hand. Claws in your leg put toy mouse in
food bowl run out of litter box at full speed , knock dish off table head butt cant eat out of
my own dish poop on grasses but chase the pig around the house or cats go for world domination,
lounge in doorway. Stick butt in face put butt in owner's face shove bum in owner's face
like camera lens yet refuse to drink water except out of someone's glass yet touch water with
paw then recoil in horror. Put toy mouse in food bowl run out of litter box at full speed pee
in human's bed until he cleans the litter box so white cat sleeps on a black shirt, chase red
laser dot leave hair everywhere, yet sun bathe. Attack dog, run away and pretend to be victim."

text6 = "Meow Meow Meow Meow Meow Meow Meow Meow Meow Meow Meow Meow Meow Meow
Meow Meow Meow Meow Meow Meow MeowMeow Meow Meow Meow Meow Meow MeowMeow Meow Meow Meow Meow Meow Meow
Meow Meow Meow Meow Meow Meow MeowMeow Meow Meow Meow Meow Meow MeowMeow Meow Meow Meow Meow Meow Meow
Meow Meow Meow Meow Meow Meow MeowMeow Meow Meow Meow Meow Meow MeowMeow Meow Meow Meow Meow Meow Meow
Meow Meow Meow Meow Meow Meow MeowMeow Meow Meow Meow Meow Meow MeowMeow Meow Meow Meow Meow Meow Meow
Meow Meow Meow Meow Meow Meow MeowMeow Meow Meow Meow Meow Meow MeowMeow Meow Meow Meow Meow Meow Meow
Meow Meow Meow Meow Meow Meow MeowMeow Meow Meow Meow Meow Meow MeowMeow Meow Meow Meow Meow Meow Meow
Meow Meow Meow Meow Meow Meow MeowMeow Meow Meow Meow Meow Meow MeowMeow Meow Meow Meow Meow Meow Meow"

text7 = "Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff
Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff
Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff
Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff
Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff
Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff
Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff
Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff
Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff Ruff"

text8 = "Badumpish Badumpish Badumpish Badumpish Badumpish Badumpish Badumpish Badumpish Badumpish Badumpish
Badumpish Badumpish Badumpish Badumpish Badumpish Badumpish Badumpish Badumpish Badumpish Badumpish Badumpish
Badumpish Badumpish Badumpish Badumpish Badumpish Badumpish Badumpish Badumpish Badumpish Badumpish Badumpish
Badumpish Badumpish Badumpish Badumpish Badumpish Badumpish Badumpish Badumpish Badumpish Badumpish Badumpish"

post1 = Post.new("Hipster Ipsum", "2016-03-22", text1)

post2 = SponsoredPost.new("Lorem Ipsum", "2016-03-29", text2)

post3 = Post.new("Bacon Ipsum", "2016-04-05", text3)

post4 = Post.new("Coffee Ipsum", "2016-03-30", text4)

post5 = Post.new("Cat Ipsum", "2016-03-28", text5)

post6 = SponsoredPost.new("Meow Time", "2016-03-27", text6)

post7 = Post.new("Doggy Time", "2016-02-28", text7)

post8 = Post.new("Joke Time", "2016-04-01", text8)


blog.add_post(post1)
blog.add_post(post3)
blog.add_post(post2)
blog.add_post(post5)
blog.add_post(post4)
blog.add_post(post6)
blog.add_post(post7)
blog.add_post(post8)

page = 1
while (page != "quit")
    blog.publish_page(page)
    puts "There are #{blog.number_of_pages} pages. Would you like to publish the next page or the previous page or quit?"
    input = gets.chomp
    if input == "next"
        page += 1
    elsif input == "prev"
        page -= 1
    else page = "quit"
    end
end