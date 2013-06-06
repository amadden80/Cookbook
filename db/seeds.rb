Cookbook.delete_all
c1 = Cookbook.create(title: "Comfort Cookbook", cuisine: "Comfort", description: "A collection of mother home cooked comfort food.", isbn: 1234 )
c2 = Cookbook.create(title: "Cookedbook", cuisine: "Burnt", description: "A collection of cooked food.", isbn: 3456)
c3 = Cookbook.create(title: "Food!", cuisine: "Soft", description: "A collection of Soft Food.", isbn: 4456)

Recipe.delete_all
r1 = Recipe.new(name: 'Grilled Cheese', instructions: 'Grill some cheese', serving_size: 1, img_url: 'http://cdn.funcheap.com/wp-content/uploads/2013/04/grilled-cheese-sandwich11.jpg', course: 'lunch', cook_time: 5)
r2 = Recipe.new(name: 'CatFood', instructions: 'Grilled Cheese... Give Sandwich to cat' , serving_size: 2, img_url: 'http://placekitten.com/234/234', course: 'dinner', cook_time: 2)
r3 = Recipe.new(name: 'Bacon', instructions: 'Fry that s#%t!' , serving_size: 1, img_url: 'http://baconmockup.com//234/334', course: 'All', cook_time: 15)
r4 = Recipe.new(name: 'Phad Thai', instructions: 'Throw peanuts on noodles!', serving_size: 1, img_url: 'http://1.bp.blogspot.com/_5zhAUfGbu_Y/S9g2z63L8HI/AAAAAAAAAAw/o1nQEqdmzlQ/s1600/22PhadThai.jpg', course: 'dinner', cook_time: 30)
r5 = Recipe.new(name: 'Strawberry Smoothie', instructions: 'Mash up some strawberries', serving_size: 1, img_url: 'http://fishrizzo.com/fr/wp-content/uploads/2012/12/strawberry-smoothie.jpg', course: 'brunch', cook_time: 5)
r6 = Recipe.new(name: 'Cereal', instructions: 'Buy it and put milk on it', serving_size: 1, img_url: 'http://www.sarahkoszyk.com/wordpress/wp-content/uploads/2012/10/cereal_Milk.jpg', course: 'breakfast', cook_time: 1)
r7 = Recipe.new(name: 'Bison Burger', instructions: 'Kill a bison and cook it', serving_size: 1, img_url: 'http://www.traegergrills.com/images/recipes/bison-burger.jpg', course: 'dinner', cook_time: 10)
r8 = Recipe.new(name: 'Pasta', instructions: 'Read the box of pasta...', serving_size: 1, img_url: 'http://images.lifesambrosia.com/food/large/creamy-avocado-pasta-with-shrimp-and-bacon.jpg', course: 'dinner', cook_time: 30)

c1.recipes << r1 << r2 << r3 << r4
c2.recipes << r5 << r6 << r7 << r8

c1.save!
c2.save!


