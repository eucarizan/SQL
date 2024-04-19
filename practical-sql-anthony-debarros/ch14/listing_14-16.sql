-- Listing 14-16: Converting search terms to tsquery data

SELECT to_tsquery('english', 'walking & sitting');
