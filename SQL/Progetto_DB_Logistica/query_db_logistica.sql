-- QUERY 1: Viaggi totali per ogni autista per l'anno 2000
SELECT autista, au.nome, au.cognome, COUNT(*) AS Viaggi_totali
FROM viaggi AS vi
INNER JOIN autisti AS au
ON au.id_autista=vi.autista
WHERE data_partenza BETWEEN '2000-01-01' AND '2000-12-31'
GROUP BY autista, au.nome, au.cognome;

-- QUERY 2: Elenco dei trasporti partiti da una specifica città
SELECT *
FROM viaggi AS vi
INNER JOIN prenotazioni AS pr
ON pr.id_prenotazione=vi.prenotazione_id
WHERE pr.citta_partenza LIKE "%Roma%";

-- QUERY 3: Elenco autisti che hanno fatto più di 2 Viaggi
SELECT *
FROM (SELECT COUNT(*) AS totale_viaggi, au.nome, au.cognome
		FROM viaggi AS vi
		INNER JOIN autisti AS au
		ON au.id_autista=vi.autista
		GROUP BY au.nome, au.cognome) AS tot
WHERE totale_viaggi >=2;

-- QUERY 4: Elenco dei clienti raggruppati per la somma totale del peso dei colli da loro spediti in ordine decrescente
SELECT pr.mittente_id, cl.ragione_sociale, SUM(pr.peso) AS Somma_peso
FROM prenotazioni AS pr
INNER JOIN clienti AS cl
ON pr.mittente_id=cl.id_cliente
GROUP BY pr.mittente_id, cl.ragione_sociale
ORDER BY Somma_peso DESC;

-- QUERY 5: Il numero di autisti per ogni settore di trasporto
SELECT COUNT(*) AS totale_autisti, settore.nome
FROM autisti
INNER JOIN settore
ON settore.id_settore=autisti.settore
GROUP BY settore, settore.nome;

-- QUERY 6: Elenco dei mezzi categoria "Autobotte" partiti nel 2000
SELECT mezzi.id_mezzo, mezzi.targa, mezzi.marca, mezzi.modello, mezzi.categoria,categoria_mezzo.nome, viaggi.data_partenza
FROM mezzi
INNER JOIN categoria_mezzo
ON id_categoria=mezzi.categoria
INNER JOIN viaggi
ON viaggi.mezzo=mezzi.id_mezzo
WHERE YEAR(data_partenza)="2000" AND categoria_mezzo.nome LIKE "%Autobotte%";

-- QUERY 7: Numero delle prenotazioni per ogni anno
SELECT COUNT(id_prenotazione) as numero_prenotazioni, YEAR(data_prenotazione) as anno_prenotazione
FROM prenotazioni
GROUP BY YEAR(data_prenotazione)
ORDER BY COUNT(id_prenotazione) asc;

-- QUERY 8: Clienti che hanno spedito più di 4 colli
SELECT ragione_sociale, SUM(num_colli) as somma_colli
FROM prenotazioni
INNER JOIN clienti
ON clienti.id_cliente=mittente_id
GROUP BY ragione_sociale
HAVING somma_colli >=4;

-- QUERY 9: Quanti contratti di tipo "Semestrale" sono stati fatti ogni anno
SELECT COUNT(tipo_contratto) as totale_contratti, YEAR(data_iscrizione) as anno_iscrizione, tipo_contratto
FROM contratto
INNER JOIN	clienti
ON id_contratto=clienti.contratto
WHERE	tipo_contratto="Semestrale"
GROUP BY YEAR(data_iscrizione), tipo_contratto;

-- QUERY 10: Tutti i viaggi partiti in data odierna (12/03/2023) riportanto nome e cognome autista, targa del mezzo, cliente mittente, citta di partenza e arrivo
SELECT id_viaggi, concat(au.nome," ",au.cognome) as nome_autista, targa, ragione_sociale, citta_partenza, citta_arrivo, data_partenza
FROM viaggi
LEFT JOIN	autisti as au
ON viaggi.autista=au.id_autista
LEFT JOIN mezzi as me
ON viaggi.mezzo=me.id_mezzo
LEFT JOIN (SELECT ragione_sociale, id_prenotazione
			FROM clienti as cl
			INNER JOIN prenotazioni as pr
			ON pr.mittente_id=cl.id_cliente) as cliente
ON viaggi.prenotazione_id=cliente.id_prenotazione
LEFT JOIN prenotazioni
ON viaggi.prenotazione_id=prenotazioni.id_prenotazione
WHERE data_partenza >= current_date();
