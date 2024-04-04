--
-- File generated with SQLiteStudio v3.4.4 on Di Apr 2 12:49:14 2024
--
-- Text encoding used: System
--
DROP TABLE IF EXISTS Allergen;
DROP TABLE IF EXISTS Item;
DROP TABLE IF EXISTS ItemToRecipe;
DROP TABLE IF EXISTS Recipe;
DROP TABLE IF EXISTS RecipeTag;
DROP TABLE IF EXISTS Step;
DROP TABLE IF EXISTS Substitution;
DROP TABLE IF EXISTS Tag;
DROP TABLE IF EXISTS Type;


-- Table: Allergen
CREATE TABLE Allergen (name TEXT PRIMARY KEY);
INSERT INTO Allergen (name) VALUES ('Lactose');
INSERT INTO Allergen (name) VALUES ('Peanuts');
INSERT INTO Allergen (name) VALUES ('Gluten');

-- Table: Item
CREATE TABLE Item (name TEXT PRIMARY KEY, type TEXT, tobuy_rank_multiplyer NUMERIC, allergen TEXT);
INSERT INTO Item (name, type, tobuy_rank_multiplyer, allergen) VALUES ('Penne', 'Noodles', NULL, 'Gluten');
INSERT INTO Item (name, type, tobuy_rank_multiplyer, allergen) VALUES ('Basil', 'Spice', NULL, NULL);
INSERT INTO Item (name, type, tobuy_rank_multiplyer, allergen) VALUES ('Onion', 'Vegetable', NULL, NULL);
INSERT INTO Item (name, type, tobuy_rank_multiplyer, allergen) VALUES ('Italian Hard Cheese', 'Cheese', NULL, 'Lactose');
INSERT INTO Item (name, type, tobuy_rank_multiplyer, allergen) VALUES ('Porree', 'Vegetable', NULL, NULL);
INSERT INTO Item (name, type, tobuy_rank_multiplyer, allergen) VALUES ('Cooking Creme', 'Ingredient', NULL, 'Lactose');
INSERT INTO Item (name, type, tobuy_rank_multiplyer, allergen) VALUES ('Garlic', 'Spice', NULL, NULL);
INSERT INTO Item (name, type, tobuy_rank_multiplyer, allergen) VALUES ('Carrot', 'Vegetable', NULL, NULL);
INSERT INTO Item (name, type, tobuy_rank_multiplyer, allergen) VALUES ('Oil', 'Ingredient', NULL, NULL);
INSERT INTO Item (name, type, tobuy_rank_multiplyer, allergen) VALUES ('Big Pot', 'Pot', NULL, NULL);
INSERT INTO Item (name, type, tobuy_rank_multiplyer, allergen) VALUES ('Big Pan', 'Pan', NULL, NULL);
INSERT INTO Item (name, type, tobuy_rank_multiplyer, allergen) VALUES ('Blender', 'Implement', NULL, NULL);
INSERT INTO Item (name, type, tobuy_rank_multiplyer, allergen) VALUES ('Sieve', 'Implement', NULL, NULL);
INSERT INTO Item (name, type, tobuy_rank_multiplyer, allergen) VALUES ('Tall Bowl', 'Implement', NULL, NULL);
INSERT INTO Item (name, type, tobuy_rank_multiplyer, allergen) VALUES ('Small Bowl', 'Implement', NULL, NULL);
INSERT INTO Item (name, type, tobuy_rank_multiplyer, allergen) VALUES ('Small Pot', 'Pot', NULL, NULL);
INSERT INTO Item (name, type, tobuy_rank_multiplyer, allergen) VALUES ('Small Pan', 'Pan', NULL, NULL);
INSERT INTO Item (name, type, tobuy_rank_multiplyer, allergen) VALUES ('Basmatireis', 'Rice', NULL, 'Gluten');
INSERT INTO Item (name, type, tobuy_rank_multiplyer, allergen) VALUES ('Bushbean', 'Beans', NULL, NULL);
INSERT INTO Item (name, type, tobuy_rank_multiplyer, allergen) VALUES ('Chilli', 'Spice', NULL, NULL);
INSERT INTO Item (name, type, tobuy_rank_multiplyer, allergen) VALUES ('Spring Onion', 'Vegetable', NULL, NULL);
INSERT INTO Item (name, type, tobuy_rank_multiplyer, allergen) VALUES ('Coconut milk', 'Perishable', NULL, NULL);
INSERT INTO Item (name, type, tobuy_rank_multiplyer, allergen) VALUES ('Peanuts', 'Vegetable', NULL, 'Peanuts');
INSERT INTO Item (name, type, tobuy_rank_multiplyer, allergen) VALUES ('Peanutbutter', 'Ingredient', NULL, 'Peanuts');
INSERT INTO Item (name, type, tobuy_rank_multiplyer, allergen) VALUES ('Lime', 'Fruit', NULL, NULL);
INSERT INTO Item (name, type, tobuy_rank_multiplyer, allergen) VALUES ('Ginger', 'Vegetable', NULL, NULL);
INSERT INTO Item (name, type, tobuy_rank_multiplyer, allergen) VALUES ('Soysauce', NULL, NULL, NULL);
INSERT INTO Item (name, type, tobuy_rank_multiplyer, allergen) VALUES ('Grater', 'Implement', NULL, NULL);
INSERT INTO Item (name, type, tobuy_rank_multiplyer, allergen) VALUES ('Peeler', 'Implement', NULL, NULL);
INSERT INTO Item (name, type, tobuy_rank_multiplyer, allergen) VALUES ('Champignons', 'Mushroom', NULL, NULL);
INSERT INTO Item (name, type, tobuy_rank_multiplyer, allergen) VALUES ('Rice Cooker', 'Implement', 0, NULL);

-- Table: ItemToRecipe
CREATE TABLE ItemToRecipe (recipe TEXT, item TEXT, missing_rank_multiplier NUMERIC DEFAULT (0.75) NOT NULL, amount NUMERIC NOT NULL, measurement TEXT NOT NULL DEFAULT "", PRIMARY KEY (item, recipe));
INSERT INTO ItemToRecipe (recipe, item, missing_rank_multiplier, amount, measurement) VALUES ('Penne mit Basilikumsoße', 'Penne', 0, 270, 'g');
INSERT INTO ItemToRecipe (recipe, item, missing_rank_multiplier, amount, measurement) VALUES ('Penne mit Basilikumsoße', 'Basil', 0.85, 10, 'g');
INSERT INTO ItemToRecipe (recipe, item, missing_rank_multiplier, amount, measurement) VALUES ('Penne mit Basilikumsoße', 'Onion', 0.8, 1, '');
INSERT INTO ItemToRecipe (recipe, item, missing_rank_multiplier, amount, measurement) VALUES ('Penne mit Basilikumsoße', 'Italian Hard Cheese', 0.8, 40, 'g');
INSERT INTO ItemToRecipe (recipe, item, missing_rank_multiplier, amount, measurement) VALUES ('Penne mit Basilikumsoße', 'Porree', 0.5, 1, '');
INSERT INTO ItemToRecipe (recipe, item, missing_rank_multiplier, amount, measurement) VALUES ('Penne mit Basilikumsoße', 'Garlic', 0.8, 1, '');
INSERT INTO ItemToRecipe (recipe, item, missing_rank_multiplier, amount, measurement) VALUES ('Penne mit Basilikumsoße', 'Cooking Creme', 0.75, 225, 'g');
INSERT INTO ItemToRecipe (recipe, item, missing_rank_multiplier, amount, measurement) VALUES ('Penne mit Basilikumsoße', 'Carrot', 0.5, 2, '');
INSERT INTO ItemToRecipe (recipe, item, missing_rank_multiplier, amount, measurement) VALUES ('Penne mit Basilikumsoße', 'Oil', 0.3, 1, 'TS');
INSERT INTO ItemToRecipe (recipe, item, missing_rank_multiplier, amount, measurement) VALUES ('Penne mit Basilikumsoße', 'Big Pot', 0, 1, '');
INSERT INTO ItemToRecipe (recipe, item, missing_rank_multiplier, amount, measurement) VALUES ('Penne mit Basilikumsoße', 'Blender', 0.5, 1, '');
INSERT INTO ItemToRecipe (recipe, item, missing_rank_multiplier, amount, measurement) VALUES ('Penne mit Basilikumsoße', 'Sieve', 0.9, 1, '');
INSERT INTO ItemToRecipe (recipe, item, missing_rank_multiplier, amount, measurement) VALUES ('Stir Fry! Pfannengemüse mit Erdnuss-Chili-Soße', 'Basmatireis', 0, 150, 'g');
INSERT INTO ItemToRecipe (recipe, item, missing_rank_multiplier, amount, measurement) VALUES ('Stir Fry! Pfannengemüse mit Erdnuss-Chili-Soße', 'Champignons', 0.5, 200, 'g');
INSERT INTO ItemToRecipe (recipe, item, missing_rank_multiplier, amount, measurement) VALUES ('Stir Fry! Pfannengemüse mit Erdnuss-Chili-Soße', 'Bushbean', 0.6, 150, 'g');
INSERT INTO ItemToRecipe (recipe, item, missing_rank_multiplier, amount, measurement) VALUES ('Stir Fry! Pfannengemüse mit Erdnuss-Chili-Soße', 'Carrot', 0.6, 2, '');
INSERT INTO ItemToRecipe (recipe, item, missing_rank_multiplier, amount, measurement) VALUES ('Stir Fry! Pfannengemüse mit Erdnuss-Chili-Soße', 'Chilli', 0.9, 1, '');
INSERT INTO ItemToRecipe (recipe, item, missing_rank_multiplier, amount, measurement) VALUES ('Stir Fry! Pfannengemüse mit Erdnuss-Chili-Soße', 'Lime', 0.9, 1, '');
INSERT INTO ItemToRecipe (recipe, item, missing_rank_multiplier, amount, measurement) VALUES ('Stir Fry! Pfannengemüse mit Erdnuss-Chili-Soße', 'Spring Onion', 0.75, 1, '');
INSERT INTO ItemToRecipe (recipe, item, missing_rank_multiplier, amount, measurement) VALUES ('Stir Fry! Pfannengemüse mit Erdnuss-Chili-Soße', 'Coconut milk', 0.75, 180, 'ml');
INSERT INTO ItemToRecipe (recipe, item, missing_rank_multiplier, amount, measurement) VALUES ('Stir Fry! Pfannengemüse mit Erdnuss-Chili-Soße', 'Peanutbutter', 0.8, 25, 'g');
INSERT INTO ItemToRecipe (recipe, item, missing_rank_multiplier, amount, measurement) VALUES ('Stir Fry! Pfannengemüse mit Erdnuss-Chili-Soße', 'Peanuts', 0.75, 20, 'g');
INSERT INTO ItemToRecipe (recipe, item, missing_rank_multiplier, amount, measurement) VALUES ('Stir Fry! Pfannengemüse mit Erdnuss-Chili-Soße', 'Soysauce', 0.75, 25, 'ml');
INSERT INTO ItemToRecipe (recipe, item, missing_rank_multiplier, amount, measurement) VALUES ('Stir Fry! Pfannengemüse mit Erdnuss-Chili-Soße', 'Grater', 0.8, 1, '');
INSERT INTO ItemToRecipe (recipe, item, missing_rank_multiplier, amount, measurement) VALUES ('Stir Fry! Pfannengemüse mit Erdnuss-Chili-Soße', 'Penne', 0.9, 1, '');
INSERT INTO ItemToRecipe (recipe, item, missing_rank_multiplier, amount, measurement) VALUES ('Stir Fry! Pfannengemüse mit Erdnuss-Chili-Soße', 'Rice Cooker', 0.2, 1, '');
INSERT INTO ItemToRecipe (recipe, item, missing_rank_multiplier, amount, measurement) VALUES ('Stir Fry! Pfannengemüse mit Erdnuss-Chili-Soße', 'Big Pan', 0, 1, '');
INSERT INTO ItemToRecipe (recipe, item, missing_rank_multiplier, amount, measurement) VALUES ('Stir Fry! Pfannengemüse mit Erdnuss-Chili-Soße', 'Oil', 0.4, 2, 'TS');

-- Table: Recipe
CREATE TABLE Recipe (name TEXT PRIMARY KEY, image_link TEXT);
INSERT INTO recipe (name, image_link) VALUES ('Penne mit Basilikumsoße', 'https://img.hellofresh.com/w_640,q_auto,f_auto,c_limit,fl_lossy/q_auto/recipes/image/HF_Y24_R06_W13_DE_R2951-6_Main_low-2f4953c6.jpg');
INSERT INTO recipe (name, image_link) VALUES ('Stir Fry! Pfannengemüse mit Erdnuss-Chili-Soße', 'https://img.hellofresh.com/w_640,q_auto,f_auto,c_limit,fl_lossy/q_auto/recipes/image/R17_W13_DE_R2249-29_Main_low-67b7e1ad.jpg');

-- Table: RecipeTag
CREATE TABLE RecipeTag (recipe TEXT, tag TEXT, PRIMARY KEY (recipe, tag));
INSERT INTO recipeTag (recipe, tag) VALUES ('Penne mit Basilikumsoße', 'Vegetarian');
INSERT INTO recipeTag (recipe, tag) VALUES ('Stir Fry! Pfannengemüse mit Erdnuss-Chili-Soße', 'Vegetarian');

-- Table: Step
CREATE TABLE Step (recipe TEXT, step_nr NUMERIC, step TEXT NOT NULL, image TEXT, PRIMARY KEY (recipe, step_nr));
INSERT INTO Step (recipe, step_nr, step, image) VALUES ('Penne mit Basilikumsoße', 4, 'Cut Carrot in half circles', 'https://img.hellofresh.com/w_384,q_auto,f_auto,c_limit,fl_lossy/hellofresh_s3/653a601ae06ba9910276dd69/step-216e7e00.jpg');
INSERT INTO Step (recipe, step_nr, step, image) VALUES ('Penne mit Basilikumsoße', 1, 'Cut Porree in thin slices', 'https://img.hellofresh.com/w_384,q_auto,f_auto,c_limit,fl_lossy/hellofresh_s3/653a601ae06ba9910276dd69/step-216e7e00.jpg');
INSERT INTO Step (recipe, step_nr, step, image) VALUES ('Penne mit Basilikumsoße', 2, 'Fill big Pot with Water and salt, Cook Penne for ~10min', 'https://img.hellofresh.com/w_384,q_auto,f_auto,c_limit,fl_lossy/hellofresh_s3/653a601ae06ba9910276dd69/step-ea483720.jpg');
INSERT INTO Step (recipe, step_nr, step, image) VALUES ('Penne mit Basilikumsoße', 3, 'Put Basil, Cooking Cream, 50ml water and spices into Blender', 'https://img.hellofresh.com/w_384,q_auto,f_auto,c_limit,fl_lossy/hellofresh_s3/653a601ae06ba9910276dd69/step-fb79c730.jpg');
INSERT INTO Step (recipe, step_nr, step, image) VALUES ('Penne mit Basilikumsoße', 5, 'Cut Onion and dried Tomato', NULL);
INSERT INTO Step (recipe, step_nr, step, image) VALUES ('Penne mit Basilikumsoße', 6, 'Pour noodles and water through Sieve, put Oil and cut vegetables into newly emtpied pot, cook ~4min', NULL);
INSERT INTO Step (recipe, step_nr, step, image) VALUES ('Penne mit Basilikumsoße', 7, 'Put Blended sauce and Spices with the cooking vegetables', NULL);
INSERT INTO Step (recipe, step_nr, step, image) VALUES ('Penne mit Basilikumsoße', 8, 'Add Noodles back to pot, turn off heat, mix well, top with cheese, done!', NULL);
INSERT INTO Step (recipe, step_nr, step, image) VALUES ('Stir Fry! Pfannengemüse mit Erdnuss-Chili-Soße', 1, 'Cook Rice', 'https://img.hellofresh.com/w_384,q_auto,f_auto,c_limit,fl_lossy/hellofresh_s3/6513f153be675f371f89c5a5/step-f1c32a00.jpg');
INSERT INTO Step (recipe, step_nr, step, image) VALUES ('Stir Fry! Pfannengemüse mit Erdnuss-Chili-Soße', 2, 'Cut Garlic, Chilli and Ginger', NULL);
INSERT INTO Step (recipe, step_nr, step, image) VALUES ('Stir Fry! Pfannengemüse mit Erdnuss-Chili-Soße', 3, 'Mix 50ml Water, coconut milk, Soysauce, Peanutbutter, Garlic, Ginger, 1TS Oil, Chilli, Salt, Pepper and some Lime juice to a sauce', 'https://img.hellofresh.com/w_384,q_auto,f_auto,c_limit,fl_lossy/hellofresh_s3/6513f153be675f371f89c5a5/step-4b35bc30.jpg');
INSERT INTO Step (recipe, step_nr, step, image) VALUES ('Stir Fry! Pfannengemüse mit Erdnuss-Chili-Soße', 4, 'Cut Beans, Carrot, Champingions, Spring Onion, Chilli', 'https://img.hellofresh.com/w_384,q_auto,f_auto,c_limit,fl_lossy/hellofresh_s3/6513f153be675f371f89c5a5/step-e3a42d10.jpg');
INSERT INTO Step (recipe, step_nr, step, image) VALUES ('Stir Fry! Pfannengemüse mit Erdnuss-Chili-Soße', 5, 'Heat up 1TS Oil in Big Pan, Add Spring Onion, Champignions, Carrots and Beans, Cook for ~4min', 'https://img.hellofresh.com/w_384,q_auto,f_auto,c_limit,fl_lossy/hellofresh_s3/6513f153be675f371f89c5a5/step-a02c7f40.jpg');
INSERT INTO Step (recipe, step_nr, step, image) VALUES ('Stir Fry! Pfannengemüse mit Erdnuss-Chili-Soße', 6, 'Add Sauce to Pan, Cook till Sauce is thick enough', NULL);
INSERT INTO Step (recipe, step_nr, step, image) VALUES ('Stir Fry! Pfannengemüse mit Erdnuss-Chili-Soße', 7, 'Put Rice on Plates, Top with Sauce+Vegetables from Pan, Peanuts and Lime', 'https://img.hellofresh.com/w_384,q_auto,f_auto,c_limit,fl_lossy/hellofresh_s3/6513f153be675f371f89c5a5/step-147fda50.jpg');

-- Table: Substitution
CREATE TABLE Substitution (to_substitue TEXT, with_substitute TEXT, ranking NUMERIC DEFAULT (0.5), PRIMARY KEY (to_substitue, with_substitute));
INSERT INTO Substitution (to_substitue, with_substitute, ranking) VALUES ('Rice Cooker', 'Small Pot', 0.99);
INSERT INTO Substitution (to_substitue, with_substitute, ranking) VALUES ('Rice Cooker', 'Big Pot', 0.95);
INSERT INTO Substitution (to_substitue, with_substitute, ranking) VALUES ('Small Pot', 'Big Pot', 0.9);
INSERT INTO Substitution (to_substitue, with_substitute, ranking) VALUES ('Big Pot', 'Small Pot', 0.3);

-- Table: Tag
CREATE TABLE Tag (name TEXT PRIMARY KEY);
INSERT INTO Tag (name) VALUES ('Vegan');
INSERT INTO Tag (name) VALUES ('Vegetarian');
INSERT INTO Tag (name) VALUES ('Fast');
INSERT INTO Tag (name) VALUES ('Simple');
INSERT INTO Tag (name) VALUES ('Slow');
INSERT INTO Tag (name) VALUES ('Comlex');

-- Table: Type
CREATE TABLE Type (name TEXT PRIMARY KEY, parent TEXT, tobuy_rank_multiplier NUMERIC);
INSERT INTO Type (name, parent, tobuy_rank_multiplier) VALUES ('Ingredient', NULL, 0.75);
INSERT INTO Type (name, parent, tobuy_rank_multiplier) VALUES ('Implement', NULL, 0);
INSERT INTO Type (name, parent, tobuy_rank_multiplier) VALUES ('Pot', 'Implement', NULL);
INSERT INTO Type (name, parent, tobuy_rank_multiplier) VALUES ('Pan', 'Implement', NULL);
INSERT INTO Type (name, parent, tobuy_rank_multiplier) VALUES ('Cheese', 'Perishable', NULL);
INSERT INTO Type (name, parent, tobuy_rank_multiplier) VALUES ('Noodles', 'Ingredient', NULL);
INSERT INTO Type (name, parent, tobuy_rank_multiplier) VALUES ('Rice', 'Ingredient', NULL);
INSERT INTO Type (name, parent, tobuy_rank_multiplier) VALUES ('Spice', 'Ingredient', 0.9);
INSERT INTO Type (name, parent, tobuy_rank_multiplier) VALUES ('Perishable', 'Ingredient', 0.6);
INSERT INTO Type (name, parent, tobuy_rank_multiplier) VALUES ('Vegetable', 'Perishable', NULL);
INSERT INTO Type (name, parent, tobuy_rank_multiplier) VALUES ('Fruit', 'Perishable', NULL);
INSERT INTO Type (name, parent, tobuy_rank_multiplier) VALUES ('Beans', 'Vegetable', NULL);
INSERT INTO Type (name, parent, tobuy_rank_multiplier) VALUES ('Mushroom', 'Vegetable', NULL);
