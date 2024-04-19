-- Listing 14-21: Finding speeches containing the word "Vietnam"

SELECT president, speech_date
FROM president_speeches
WHERE search_speech_text @@ to_tsquery('english', 'Vietnam')
ORDER BY speech_date;
