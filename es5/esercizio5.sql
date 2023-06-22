 --funzione che restituisce una stringa 'concatenando' i valori dati in input, quindi crea una nuova colonna
 CONCAT(COLUMN1, COLUMN2) AS ALIAS_NAME
 -- funzione che converte il testo in lower-case
 LOWER(COLUMN)
 --funzione che converte il testo in upper-case
 UPPER(COLUMN)
 -- funzione che rimuove gli spazi all'inizio e alla fine di una stringa
 TRIM(COLUMN)
 -- funzione che ritorna il numero di caratteri di una stringa
 LENGTH(COLUMN)
 -- funzione che restituisce una stringa formata da caratteri di una stringa pre-esistente
 SUBSTRING(COLUMN, START, LENGTH)
 -- funzione che arrotonda un valore numerico in base alla lunghezza che gli diamo in input
 ROUND(COLUMN, DECIMAL_PLACES)
 -- funzione che ritorna la data aggiungendo il valore dato in input
 DATE_ADD(COLUMN, INTERVAL EXPRESSION UNIT)
 -- funzione che ritorna la data sottraendo il valore dato in input
 DATE_SUB(COLUMN, INTERVAL EXPRESSION UNIT)
 -- funzione che formatta il valore dato in input nel formato dato come 'secondo argomento'
 FORMAT(COLUMN, FORMAT_STRING)





 -- Qui ho creato la colonna per il mio compleanno; l'esercizio è stato eseguito il 12/06 ed il mio compleanno sarà il 06/07
 SELECT DATE_ADD(DATE_ADD(NOW(), INTERVAL 7 DAY), INTERVAL 17 DAY) as BIRTHDAY_DATE
