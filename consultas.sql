SELECT * FROM principal

SELECT DISTINCT Dep_Time
FROM voo;

SELECT (Airline,Day_of_Journey) FROM voo
WHERE Total_Stops = '0'

SELECT price,id_voo FROM voo
ORDER BY Price DESC

SELECT *
FROM voo v
INNER JOIN rota r
ON v.id_Rota = r.ID_Rota 

SELECT * FROM principal
WHERE id_aeroporto != 1
LIMIT 12

SELECT id_info_adicional, id_aeroporto, rota.route 
FROM principal
JOIN voo
ON principal.id_voo = voo.id_voo
JOIN rota
ON voo.id_rota = rota.id_rota
WHERE rota.route LIKE '%MAA_CCU%'

SELECT id_info_adicional, id_voo, aeroporto.nome_aeroporto
FROM principal
INNER JOIN aeroporto
ON principal.id_aeroporto = aeroporto.id_aeroporto
WHERE aeroporto.nome_aeroporto LIKE '%Mumbai%'

SELECT COUNT(id_voo), airline
FROM voo
GROUP BY voo.airline

SELECT COUNT(id_voo), price
FROM voo
GROUP BY voo.price
HAVING price > 30000