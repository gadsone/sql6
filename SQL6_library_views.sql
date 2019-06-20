use our_recipes;

/* Query 1*/
/* SHOWS ALL RECIPES AND ALL INGREDIENTS, SORTED BY TWO CONDITIONS*/
CREATE or replace VIEW whatCanIMake AS
	SELECT
		CONCAT(last_name, ', ', first_name) as 'Full Name',
		recipe_name AS 'Recipe Name',
		group_concat(concat(' ',quantity, ' ', units, ' of ',ingredient_name) separator ', ') AS 'Ingredients'
	FROM recipes
		JOIN measurements USING (recipe_id)
			JOIN chef ON
			recipes.chef_id = chef.chef_id
				JOIN ingredients ON
				measurements.ingredient_id = ingredients.ingredient_id
	group by recipe_id
	ORDER BY 'Recipe Name' DESC, last_name DESC;




/* Query 2*/
/*SHOWS RECIPES CONTAINING THE INGREDIENT NOODLES*/
USE our_recipes;

CREATE or replace VIEW sendNoods AS
	SELECT
		CONCAT(last_name, ', ', first_name) as 'Full Name',
		recipe_name AS 'Recipe Name',
		ingredient_name AS 'Ingredient',
		quantity AS 'Quantity',
		units AS 'Units'
	FROM recipes
		JOIN measurements USING (recipe_id)
			JOIN chef ON
			recipes.chef_id = chef.chef_id
				JOIN ingredients ON
				measurements.ingredient_id = ingredients.ingredient_id
	WHERE ingredient_name = 'noodles'
	ORDER BY 'Recipe Name' DESC, last_name DESC;




/* Query 3*/
/* SHOWS RECIPES BY CHEFS WITH THE LAST NAME ALBANNA*/
USE our_recipes;

CREATE or replace VIEW theAlbannaBrothers AS
	SELECT
		CONCAT(last_name, ', ', first_name) as 'Full Name',
		recipe_name AS 'Recipe Name'
	FROM recipes
		JOIN chef ON
		recipes.chef_id = chef.chef_id
	WHERE last_name = 'Albanna'
	GROUP BY recipe_name
	ORDER BY 'Recipe Name' DESC, last_name DESC;



/* Query 4*/
/* SHOWS NUMBER OF INGREDIENTS IN A RECIPE, EXCLUDES RECIPES BY first_name Alison*/
USE our_recipes;

CREATE or replace VIEW numberOfIngredients AS
	SELECT
		CONCAT(last_name, ', ', first_name) as 'Full Name',
		recipe_name AS 'Recipe Name',
		count(ingredient_name) AS 'Number of Ingredients'
	FROM recipes
	JOIN measurements USING (recipe_id)
		JOIN chef ON
		recipes.chef_id = chef.chef_id
			JOIN ingredients ON
			measurements.ingredient_id = ingredients.ingredient_id
	WHERE first_name != 'Alison'
	GROUP BY recipe_name
	ORDER BY last_name ASC, 'Recipe Name' ASC;




/* Query 5*/
use our_recipes;


#find name of recipes and media from food network that are soups
create or replace view soups_from_foodnetwork as
	select recipes.recipe_id as 'Recipe Id', recipes.recipe_name as 'Recipe Name', media.media_link as 'Media'
	from recipes join media using(recipe_id)
		join recipe_tag using(recipe_id)
			join tags using(tag_id)
	where 'foodnetwork' in (select website.website_name from website join recipes using(website_id)) and tag_name = 'soup'
	group by media_id
	order by recipe_id;
    
