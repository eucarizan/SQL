-- Listing 14-20: Creating a GIN index for text search

CREATE INDEX search_idx ON president_speeches USING gin(search_speech_text);
