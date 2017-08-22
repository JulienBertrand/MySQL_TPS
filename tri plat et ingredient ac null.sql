use ma_base;

SELECT plat.nom as 'Nom du Plat', Ingredient.nom as 'Ingredient'
	FROM plat_ingredient
	right join Plat on Plat.ID_P_Plat=plat_ingredient.ID_P_Plat_ingredient
	left join Ingredient on Ingredient.ID_I_ingredient=plat_ingredient.ID_I_plat_ingredient;