#Llista el total de factures d'un client/a en un període determinat.
SELECT * FROM optica.`clients/es`
JOIN optica.comandes
ON `clients/es`.`clients/es_id` = `clients/es_clients/es_id`
WHERE `clients/es_registre` > 2022-01-01;
#Llista els diferents models d'ulleres que ha venut un empleat/da durant un any.
SELECT comandes_id, comandes_data, ulleres_id, ulleres_preu, `venedor/a_nom` FROM optica.comandes, optica.`venedor/a`, optica.ulleres
WHERE `venedor/a_id` = `venedor/a_venedor/a_id` AND comandes_comandes_id = comandes_id AND `venedor/a_nom` = "Adrià";
#Llista els diferents proveïdors que han subministrat ulleres venudes amb èxit per l'òptica.
SELECT DISTINCT proveidor_id, proveïdor_telefon, proveïdor_fax, proveïdor_NIF, adreça_adreça_id
FROM optica.proveïdor, optica.comandes, optica.ulleres, optica.marca
WHERE comandes_comandes_id = comandes_id AND marca_marca_id = marca_id AND proveidor_id = proveïdor_proveidor_id;




