-- Listing 14-17: Querying a tsvector type with a tsquery

SELECT to_tsvector('english', 'I am walking across the sitting room') @@
       to_tsquery('english', 'walking & sitting');

SELECT to_tsvector('english', 'I am walking across the sitting room') @@ 
       to_tsquery('english', 'walking & running');
