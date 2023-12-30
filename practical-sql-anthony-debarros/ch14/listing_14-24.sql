-- Listing 14-24: Finding speeches where "defense" follows "military"

SELECT president,
       speech_date,
       ts_headline(speech_text, 
                   to_tsquery('english', 'military <-> defense'),
                   'StartSel = <,
                    StopSel = >,
                    MinWords=5,
                    MaxWords=7,
                    MaxFragments=1')
FROM president_speeches
WHERE search_speech_text @@ 
      to_tsquery('english', 'military <-> defense')
ORDER BY speech_date;
