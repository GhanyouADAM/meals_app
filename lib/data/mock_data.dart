  import 'package:flutter/material.dart';
  import 'package:meals/models/category.dart';

import '../models/meal.dart';
class MockData {
final List<Meal> dummyMeals = [
 Meal(
  id: 'm1',
  title: 'Spaghetti with Tomato Sauce',
 imageUrl: 'https://img.freepik.com/photos-gratuite/assiette-au-basilic_1220-1184.jpg?t=st=1743201725~exp=1743205325~hmac=1e38dfc6d7967301334418d93db26ee309d7950799bfd993ae16425d575f43cf&w=996',
  duration: 20,
  complexity: Complexity.simple,
  affordability: Affordability.affordable,
  ingredients: [
   '4 Tomatoes',
   '1 Tablespoon of Olive Oil',
   '1 Onion',
   '250g Spaghetti',
   'Spices',
   'Cheese (optional)'
  ],
  steps: [
   'Cut the tomatoes and the onion into small pieces.',
   'Boil some water - add salt to it once it boils.',
   'Put the spaghetti into the boiling water - they should be done in about 10-12 min.',
   'In the meantime, heaten up some olive oil and add the cut onion.',
   'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
   'The sauce will be done once the spaghetti are done.',
   'Feel free to add some cheese on top of the finished dish.'
  ],
  isGlutenFree: false,
  isVegan: true,
  isVegetarian: true,
  isLactoseFree: true,
  categories: ['c1', 'c2'], // Italian and Quick & Easy
 ),
 Meal(
  id: 'm2',
  title: 'Toast Hawaii',
  imageUrl: 'https://img.freepik.com/photos-gratuite/vue-laterale-sandwich-club-concombres-sales-citron-olives-plaque-blanche-ronde_176474-3049.jpg?t=st=1743201454~exp=1743205054~hmac=ef27181b4e13a57f7c15ff281024e6eedbf6521921dd257d7873c01710aa5772&w=740',
  duration: 10,
  complexity: Complexity.simple,
  affordability: Affordability.affordable,
  ingredients: [
   '1 Slice of Ham',
   '1 Slice of Pineapple',
   '1 Slice of Cheese',
   'Butter',
   'Bread'
  ],
  steps: [
   'Butter one side of the bread',
   'Layer ham, the pineapple and cheese on the bread',
   'Bake the toast for round about 10 minutes in the oven at 200°C'
  ],
  isGlutenFree: false,
  isVegan: false,
  isVegetarian: false,
  isLactoseFree: false,
  categories: ['c2', 'c7'], // Quick & Easy and Breakfast
 ),
 Meal(
  id: 'm3',
  title: 'Classic Hamburger',
  imageUrl: 'https://img.freepik.com/photos-gratuite/burger-poulet-planche-bois-vue-cote-laitue-tomate_141793-2754.jpg?t=st=1743201519~exp=1743205119~hmac=3d980a02fac2f379fb58cb22548d8419328821f0e69a25a023b12d61e2fe3f8f&w=996',
  duration: 45,
  complexity: Complexity.simple,
  affordability: Affordability.pricey,
  ingredients: [
   '300g Cattle Hack',
   '1 Tomato',
   '1 Cucumber',
   '1 Onion',
   'Ketchup',
   '2 Burger Buns'
  ],
  steps: [
   'Form 2 patties',
   'Fry the patties for c. 4 minutes on each side',
   'Quickly fry a bun on each side',
   'Brush buns with ketchup',
   'Serve burger with tomato, cucumber and onion'
  ],
  isGlutenFree: false,
  isVegan: false,
  isVegetarian: false,
  isLactoseFree: true,
  categories: ['c3', 'c2'], // Hamburgers and Quick & Easy
 ),
 Meal(
  id: 'm4',
  title: 'Wiener Schnitzel',
  imageUrl: 'https://img.freepik.com/photos-gratuite/nuggets-poulet-frites-pepites-frites-pommes-terre-salade-fromage-fondu_114579-138.jpg?t=st=1743201931~exp=1743205531~hmac=d36691feb03c8e37ca2f1bfe86359deec71677db8f51e79159aefd99e059b87e&w=740',
  duration: 60,
  complexity: Complexity.challenging,
  affordability: Affordability.luxurious,
  ingredients: [
   '8 Veal Cutlets',
   '4 Eggs',
   '200g Bread Crumbs',
   '100g Flour',
   'Butter',
   'Vegetable Oil',
   'Salt',
   'Lemon Slices'
  ],
  steps: [
   'Tenderize the veal to about 2-4mm, and salt on both sides.',
   'Dip into flour, then into the egg, and finally into bread crumbs.',
   'Fry the schnitzel until golden brown on both sides.',
   'Make sure to toss the pan regularly so that the schnitzels are surrounded by oil and the crumbing is evenly crisp.',
   'Remove, and drain onto kitchen paper.',
   'Fry the parsley in the remaining oil and drain.',
   'Place the schnitzels on warmed plate and serve garnished with parsley and slices of lemon.'
  ],
  isGlutenFree: false,
  isVegan: false,
  isVegetarian: false,
  isLactoseFree: true,
  categories: ['c4', 'c5'], // German and Light & Lovely
 ),
 Meal(
  id: 'm5',
  title: 'Salad with Smoked Salmon',
  imageUrl: 'https://img.freepik.com/photos-gratuite/salade-saumon-au-concombre-tomate-cerise-laitue-olive_140725-1610.jpg?t=st=1743202026~exp=1743205626~hmac=03342fe2f39ef59c6ffbe41b15843908c132558a1ce468f7aa17d4c1dca64b4c&w=826',
  duration: 15,
  complexity: Complexity.simple,
  affordability: Affordability.luxurious,
  ingredients: [
   'Arugula',
   'Lamb\'s Lettuce',
   'Parsley',
   'Fennel',
   '200g Smoked Salmon',
   'Mustard',
   'Balsamic Vinegar',
   'Olive Oil',
   'Salt and Pepper'
  ],
  steps: [
   'Wash and cut salad and herbs',
   'Dice the salmon',
   'Process mustard, vinegar and olive oil into a dessing',
   'Prepare the salad',
   'Add salmon cubes and dressing'
  ],
  isGlutenFree: true,
  isVegan: false,
  isVegetarian: false,
  isLactoseFree: true,
  categories: ['c5', 'c6', 'c10'], // Light & Lovely, Exotic, and Summer
 ),
 Meal(
    id: 'm6',
    title: 'Delicious Orange Mousse',
    imageUrl: 'https://img.freepik.com/photos-gratuite/ai-genere-image-gateau_23-2150649358.jpg?t=st=1743202388~exp=1743205988~hmac=af8bb845ac089ac9c8b776a7bdf88d0177cb50842ea927e1b1091eab776a2e2e&w=1380',
    duration: 240,
    complexity: Complexity.hard,
    affordability: Affordability.affordable,
    ingredients: [
      '4 Sheets of Gelatine',
      '150ml Orange Juice',
      '80g Sugar',
      '300g Yoghurt',
      '200g Cream',
      'Orange Peel',
    ],
    steps: [
      'Dissolve gelatine in pot',
      'Add orange juice and sugar',
      'Take pot off the stove',
      'Add 2 tablespoons of yoghurt',
      'Stir gelatin under remaining yoghurt',
      'Cool everything down in the refrigerator',
      'Whip the cream and lift it under die orange mass',
      'Cool down again for at least 4 hours',
      'Serve with orange peel',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
    categories: ['c10', 'c5'], // Summer and Light & Lovely
  ),
  Meal(
    id: 'm7',
    title: 'Pancakes',
    imageUrl: 'https://img.freepik.com/photos-gratuite/crepes-aux-fraises-chocolat-decorees-feuilles-menthe_2829-13861.jpg?t=st=1743202441~exp=1743206041~hmac=2726f66f3958a45db7668d4066068ddc337a17ffe4a4060de09c27f958de9ae9&w=900',
    duration: 20,
    complexity: Complexity.simple,
    affordability: Affordability.affordable,
    ingredients: [
      '1 1/2 Cups all-purpose Flour',
      '3 1/2 Teaspoons Baking Powder',
      '1 Teaspoon Salt',
      '1 Tablespoon White Sugar',
      '1 1/4 cups Milk',
      '1 Egg',
      '3 Tablespoons Butter, melted',
    ],
    steps: [
      'In a large bowl, sift together the flour, baking powder, salt and sugar',
      'Make a well in the center and pour in the milk, egg and melted butter; mix until smooth',
      'Heat a lightly oiled griddle or frying pan over medium-high heat',
      'Pour or scoop the batter onto the griddle, using approximately 1/4 cup for each pancake',
      'Brown on both sides and serve hot'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
    categories: ['c7'], // Breakfast
  ),
  Meal(
    id: 'm8',
    title: 'Creamy Indian Chicken Curry',
    imageUrl: 'https://img.freepik.com/photos-gratuite/curry-poulet-oignons-cuisine-indienne-cuisine-asiatique_2829-4415.jpg?t=st=1743202489~exp=1743206089~hmac=ac961d93320d8156b63364a86f64cc5706cf2f9e8ebb3ab88db7d017b185b21f&w=900',
    duration: 35,
    complexity: Complexity.challenging,
    affordability: Affordability.pricey,
    ingredients: [
      '4 Chicken Breasts',
      '1 Onion',
      '2 Cloves of Garlic',
      '1 Piece of Ginger',
      '4 Tablespoons Almonds',
      '1 Teaspoon Cayenne Pepper',
      '500ml Coconut Milk',
    ],
    steps: [
      'Slice and fry the chicken breast',
      'Process onion, garlic and ginger into paste and sauté everything',
      'Add spices and stir fry',
      'Add chicken breast + 250ml of water and cook everything for 10 minutes',
      'Add coconut milk',
      'Serve with rice'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
    categories: ['c6', 'c8'], // Exotic and Asian
  ),
  Meal(
    id: 'm9',
    title: 'Chocolate Soufflé',
    imageUrl: 'https://img.freepik.com/photos-gratuite/fondue-au-chocolat-boule-glace_114579-2053.jpg?t=st=1743202555~exp=1743206155~hmac=3b79e75c5b3a39a98873985e890ca59bb000266023b7ba21c37c36bf2441d396&w=826',
    duration: 45,
    complexity: Complexity.challenging,
    affordability: Affordability.luxurious,
    ingredients: [
      '1 Teaspoon melted Butter',
      '2 Tablespoons white Sugar',
      '2 Ounces 70% dark Chocolate, broken into pieces',
      '1 Tablespoon Butter',
      '1 Tablespoon all-purpose Flour',
      '4 1/3 tablespoons cold Milk',
      '1 Pinch Salt',
      '1 Pinch Cayenne Pepper',
      '1 Large Egg Yolk',
      '2 Large Egg Whites',
      '1 Pinch Cream of Tartar',
      '1 Tablespoon white Sugar',
    ],
    steps: [
      'Preheat oven to 190°C. Line a rimmed baking sheet with parchment paper',
      'Brush bottom and sides of 2 ramekins with melted butter; cover bottom and sides with sugar',
      'Place chocolate pieces in a metal mixing bowl',
      'Place bowl over a pan of simmering water to melt the chocolate',
      'Add butter to melted chocolate and mix',
      'Whisk in flour, then gradually whisk in cold milk until mixture is smooth',
      'Whisk in egg yolk, salt, and cayenne pepper',
      'Beat egg whites with cream of tartar until soft peaks form',
      'Add sugar and beat until stiff peaks form',
      'Fold 1/4 of egg whites into chocolate mixture',
      'Fold in remaining egg whites gently',
      'Fill ramekins with mixture and bake for 12-15 minutes',
      'Serve immediately'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
    categories: ['c9'], // French
  ),
  Meal(
    id: 'm10',
    title: 'Asparagus Salad with Cherry Tomatoes',
    imageUrl: 'https://img.freepik.com/photos-gratuite/salade-asperges-tomates-oeuf-poche_2829-11168.jpg?t=st=1743202603~exp=1743206203~hmac=aa39be3c3e6dce5cea60c5dd79b7436c5a2af05a6a5c857921eb1b86741f1932&w=996',
    duration: 30,
    complexity: Complexity.simple,
    affordability: Affordability.luxurious,
    ingredients: [
      'White and Green Asparagus',
      '30g Pine Nuts',
      '300g Cherry Tomatoes',
      'Salad',
      'Salt, Pepper and Olive Oil'
    ],
    steps: [
      'Wash, peel and cut the asparagus',
      'Cook in salted water',
      'Salt and pepper the asparagus',
      'Roast the pine nuts',
      'Halve the tomatoes',
      'Mix with asparagus, salad and dressing',
      'Serve with Baguette'
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
    categories: ['c5', 'c10'], // Light & Lovely and Summer
  ),
  Meal(
    id: 'm11',
    title: 'Korean Bibimbap',
    imageUrl: 'https://img.freepik.com/photos-gratuite/nourriture-coreenne-riz-frit-au-kimchi-servi-oeuf-au-plat_1150-42928.jpg?t=st=1743202662~exp=1743206262~hmac=8a93977909f02e615555fa8e56656ba17c2fe5c3be0ac9150cec54f9e39a5386&w=996',
    duration: 50,
    complexity: Complexity.challenging,
    affordability: Affordability.pricey,
    ingredients: [
      '2 cups White Rice',
      '1 Carrot',
      '1 Zucchini',
      '100g Spinach',
      '2 Eggs',
      '200g Beef',
      '2 tablespoons Gochujang Paste',
      '2 tablespoons Sesame Oil',
      'Salt and Pepper'
    ],
    steps: [
      'Cook rice according to package instructions',
      'Julienne carrot and zucchini into thin strips',
      'Sauté vegetables separately in sesame oil with a pinch of salt',
      'Blanch spinach, drain and season with sesame oil and salt',
      'Cook beef with soy sauce and garlic until browned',
      'Fry eggs sunny-side up',
      'Arrange rice in bowls and top with vegetables, beef, and egg',
      'Serve with gochujang paste on the side'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
    categories: ['c8', 'c6'], // Asian and Exotic
  ),
  Meal(
    id: 'm12',
    title: 'Mediterranean Pasta Salad',
    imageUrl: 'https://img.freepik.com/photos-gratuite/salade-pates-rotini-roquette-tomates-cerises-plat-ete-sain_53876-103649.jpg?t=st=1743202731~exp=1743206331~hmac=1f43d17b82b9e69e749251182bc2270c99481af12fa8269b664032a43b08cbd9&w=740',
    duration: 25,
    complexity: Complexity.simple,
    affordability: Affordability.affordable,
    ingredients: [
      '250g Pasta',
      '1 Red Bell Pepper',
      '1 Yellow Bell Pepper',
      '100g Cherry Tomatoes',
      '100g Black Olives',
      '100g Feta Cheese',
      'Fresh Basil',
      'Olive Oil',
      'Balsamic Vinegar',
      'Salt and Pepper'
    ],
    steps: [
      'Cook pasta according to package instructions',
      'Drain and cool pasta under cold water',
      'Dice bell peppers and halve cherry tomatoes',
      'Combine all ingredients in a large bowl',
      'Drizzle with olive oil and balsamic vinegar',
      'Season with salt, pepper, and fresh basil',
      'Chill for at least 30 minutes before serving'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
    categories: ['c1', 'c10'], // Italian and Summer
  ),
  Meal(
    id: 'm13',
    title: 'Hearty Beef Stew',
    imageUrl: 'https://img.freepik.com/photos-gratuite/delicieux-goulache-pret-pour-diner_23-2149370851.jpg?t=st=1743202813~exp=1743206413~hmac=15aa3c59c4f4fb1ffe22d4098f148ffc97130b81587ad43843491b87ba668049&w=740',
    duration: 120,
    complexity: Complexity.hard,
    affordability: Affordability.pricey,
    ingredients: [
      '500g Beef Chuck, cubed',
      '2 Onions',
      '3 Carrots',
      '2 Potatoes',
      '2 stalks Celery',
      '2 cloves Garlic',
      '1 cup Red Wine',
      '2 cups Beef Broth',
      'Fresh Thyme',
      'Fresh Rosemary',
      'Bay Leaf',
      'Salt and Pepper',
      '2 tablespoons Flour',
      '2 tablespoons Olive Oil'
    ],
    steps: [
      'Season beef with salt and pepper and coat with flour',
      'In a large pot, heat oil and brown the beef on all sides',
      'Remove beef and add chopped onions, carrots, and celery',
      'Sauté vegetables until softened',
      'Add minced garlic and cook for 1 minute',
      'Pour in red wine and scrape up any browned bits',
      'Return beef to pot and add broth, herbs, and diced potatoes',
      'Bring to a boil, then reduce heat and simmer for 1.5-2 hours',
      'Remove bay leaf before serving'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
    categories: ['c4', 'c9'], // German and French
  ),
  Meal(
    id: 'm14',
    title: 'Avocado Toast with Poached Egg',
    imageUrl: 'https://img.freepik.com/photos-gratuite/delicieux-pain-grille-creme-vegetarienne-plat_23-2148698706.jpg?t=st=1743202896~exp=1743206496~hmac=75b698f16e47b6859085276d15bf6f31a9928a580d31fdb8b5fdae9bab2a7f4f&w=740',
    duration: 15,
    complexity: Complexity.simple,
    affordability: Affordability.affordable,
    ingredients: [
      '2 slices Whole Grain Bread',
      '1 ripe Avocado',
      '2 Eggs',
      'Fresh Cilantro',
      'Red Pepper Flakes',
      '1 Lime',
      'Salt and Pepper',
      'Vinegar (for poaching)'
    ],
    steps: [
      'Toast bread until golden and firm',
      'Mash avocado with lime juice, salt, and pepper',
      'Bring a pot of water with a splash of vinegar to a gentle simmer',
      'Crack egg into a small bowl and gently slip into simmering water',
      'Poach for 3-4 minutes until whites are set but yolk is still runny',
      'Spread mashed avocado on toast',
      'Top with poached egg, cilantro, and red pepper flakes',
      'Season with additional salt and pepper if desired'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
    categories: ['c7', 'c5'], // Breakfast and Light & Lovely
  ),
  Meal(
    id: 'm15',
    title: 'Sushi Rolls',
    imageUrl: 'https://img.freepik.com/photos-gratuite/rouleaux-sushi-au-saumon-isoles-tableau-noir_114579-22056.jpg?t=st=1743202960~exp=1743206560~hmac=853bdea4c1f5d0900a4e5ec2839b0c1383772e1605f9101aa7c98a5b1ec160c9&w=996',
    duration: 60,
    complexity: Complexity.challenging,
    affordability: Affordability.luxurious,
    ingredients: [
      '2 cups Sushi Rice',
      '3 tablespoons Rice Vinegar',
      '2 tablespoons Sugar',
      '1 teaspoon Salt',
      '5 sheets Nori (seaweed)',
      '1 Cucumber',
      '1 Avocado',
      '200g Salmon or Tuna',
      'Wasabi',
      'Soy Sauce',
      'Pickled Ginger'
    ],
    steps: [
      'Cook sushi rice according to package instructions',
      'Mix rice vinegar, sugar, and salt in a small bowl',
      'When rice is done, transfer to a large bowl and gently fold in vinegar mixture',
      'Let rice cool to room temperature',
      'Place a nori sheet on a bamboo sushi mat',
      'Cover nori with a thin layer of rice, leaving a 1-inch strip at the top',
      'Place fillings in a line at the center of the rice',
      'Roll the sushi tightly using the bamboo mat',
      'Cut roll into 6-8 pieces using a wet knife',
      'Serve with wasabi, soy sauce, and pickled ginger'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
    categories: ['c8', 'c6'], // Asian and Exotic
  )
];
// List of mock categories
final List<Category> dummyCategories = [
  Category(
    id: 'c1', 
    title: 'Italian', 
    color: Colors.purple
  ),
  Category(
    id: 'c2', 
    title: 'Quick & Easy', 
    color: Colors.red
  ),
  Category(
    id: 'c3', 
    title: 'Hamburgers', 
    color: Colors.orange
  ),
  Category(
    id: 'c4', 
    title: 'German', 
    color: Colors.amber
  ),
  Category(
    id: 'c5', 
    title: 'Light & Lovely', 
    color: Colors.blue
  ),
  Category(
    id: 'c6', 
    title: 'Exotic', 
    color: Colors.green
  ),
  Category(
    id: 'c7', 
    title: 'Breakfast', 
    color: Colors.pink
  ),
  Category(
    id: 'c8', 
    title: 'Asian', 
    color: Colors.teal
  ),
  Category(
    id: 'c9', 
    title: 'French', 
    color: Colors.indigo
  ),
  Category(
    id: 'c10', 
    title: 'Summer', 
    color: Colors.lime
  )
];

}