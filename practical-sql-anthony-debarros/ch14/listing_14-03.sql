-- Listing 14-3: Finding an array length

SELECT array_length(regexp_split_to_array('Phil Mike Tony Steve', ' '), 1);
