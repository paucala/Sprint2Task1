#Llista quants productes de categoria 'Begudes' s'han venut en una determinada localitat
SELECT COUNT(categoria_id), localitat_localitat_id, categoria_nom, localitat_nom
FROM comanda, botiga, categoria, comanda_has_producte, producte, localitat
WHERE comanda_id = comanda_comanda_id AND categoria_id = 4 AND localitat_localitat_id = 1 
AND categoria_id = categoria_categoria_id AND producte_id = producte_producte_id AND localitat_id = localitat_localitat_id;
#Llista quantes comandes ha efectuat un determinat empleat/da.
SELECT COUNT(comanda_id), empleat_nom
FROM comanda, comanda_has_empleat, empleat
WHERE comanda_id = comanda_comanda_id AND empleat_nom = "f" AND empleat_id = empleat_empleat_id;
