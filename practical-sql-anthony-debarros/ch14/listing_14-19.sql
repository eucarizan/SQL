-- Listing 14-19: Converting speeches to tsvector in the search_speech_text column

UPDATE president_speeches
SET search_speech_text = to_tsvector('english', speech_text);
