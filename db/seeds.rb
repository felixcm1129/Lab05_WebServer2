# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

paul = User.create!(nom: "Paul", prenom: "Tremblay", email: "paul@tremblay.com", password: "paulTremblay")
george = User.create!(nom: "George", prenom: "Germain", email: "george@germain.com", password: "georgeGermain")
jacque = User.create!(nom: "Jacque", prenom: "Germain", email: "jacque@germain.com", password: "jacqueGermain")
daniel = User.create!(nom: "Daniel", prenom: "Peterson", email: "daniel@peterson.com", password: "danielPeterson")
robert = User.create!(nom: "Robert", prenom: "Skywalker", email: "robert@skywalker.com", password: "robertSkywalker")
admin = User.create!(nom: "Félix", prenom:"Carle-Milette", email: "felixcm1129@hotmail.ca", password: "951bfsm", admin: true)

oeuf = Ingredient.create!(nom: "Oeuf", unite_defaut: "unite")
lait = Ingredient.create!(nom: "Lait", unite_defaut: "ml")
farine = Ingredient.create!(nom: "Farine", unite_defaut: "tasse")
poudre_pate = Ingredient.create!(nom: "Poudre à pâte", unite_defaut: "ts")

omelette = Recette.create!(titre: "Omelette",
                          etapes: "Cassez les oeufs, mélangez le lait, faire cuire dans une poele bien huilée",
                          image: "Omelette.jpg",  
                          user: paul,
                          recette_ingredients: [
                              RecetteIngredient.new({quantite: 2, ingredient: oeuf}),
                              RecetteIngredient.new({quantite: 1, ingredient: lait})
                          ])
omelette2 = Recette.create!(titre: "Omelette gonfflé",
                           etapes: "Cassez les oeufs, mélangez le lait, ajoutez la poudre à pâte, faire cuire dans une poele bien huilée",
                           image: "Omelette_Gonflee.jpg",
                           user: paul,
                           recette_ingredients: [
                               RecetteIngredient.new({quantite: 2, ingredient: oeuf}),
                               RecetteIngredient.new({quantite: 1, ingredient: poudre_pate}),
                               RecetteIngredient.new({quantite: 1, ingredient: lait})
                           ])

gateau = Recette.create!(titre: "Gateau des anges",
                        etapes: "Tout mélanger, cette recette utilise un unité différente que celui par défaut pour la poudre à pâte",
                        image: "food.jpg",
                        user: george,
                        recette_ingredients: [
                            RecetteIngredient.new({quantite: 4, ingredient: oeuf}),
                            RecetteIngredient.new({quantite: 2, ingredient: lait}),
                            RecetteIngredient.new({quantite: 1.5, ingredient: farine}),
                            RecetteIngredient.new({quantite: 2, unite: "tbs", ingredient: poudre_pate})
                        ])

crustade_pomme =  Recette.create!(titre: "CROUSTADE AUX POMMES",
                                  etapes: "ÉTAPE 1
Préchauffer le four à 375 °F (190 °C).

ÉTAPE 2
Garniture: Couper les pommes en petits morceaux. Mélanger au jus de citron et à la cassonade. Déposer dans un plat allant au four légèrement graissé.

ÉTAPE 3
Dans un bol, mélanger ensemble tous les autres ingrédients, sauf la margarine. Défaire la margarine en crème et l'incorporer aux ingrédients secs.

ÉTAPE 4
Étendre cette préparation sur les pommes.

ÉTAPE 5
Cuire au four à 375 °F (190 °C) pendant environ 30 minutes.",
                                  image: "food.jpg",
                                  user: daniel,
                                  recette_ingredients: [
                                      RecetteIngredient.new({quantite: 7, ingredient: Ingredient.new({nom: "pommes pelées", unite_defaut: "unite"})}),
                                      RecetteIngredient.new({quantite: 0.33, ingredient: Ingredient.new({nom: "tasse cassonade",unite_defaut: "tasse" })}),
                                      RecetteIngredient.new({quantite: 1, ingredient: Ingredient.new({nom: "jus de citron", unite_defaut: "tbs"})}),
                                      RecetteIngredient.new({quantite: 0.75, ingredient: Ingredient.new({nom: "farine d'avoine", unite_defaut: "tasse"})})
                                  ])