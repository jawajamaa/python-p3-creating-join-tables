SELECT cat_owners.owner_id
FROM cat_owners
WHERE cat_id=3;
-- above queries cat_owner table who owns the cat with an id of 3

SELECT cat_owners.cat_id
FROM cat_owners
WHERE owner_id=2;
-- above queries cat_owner table which cats (via cat_id) the owner with an id of 2

SELECT owners.name
FROM owners
INNER JOIN cat_owners
ON owners.id = cat_owners.owner_id
WHERE cat_owners.cat_id = 3;
-- above query is starting to get more complicated; as the owner id is much more difficult to associate when there are more records, this query will show the same information as the query above, but showing the owner.name instead of id

SELECT cats.name 
FROM cats
INNER JOIN cat_owners
ON cats.id = cat_owners.cat_id
WHERE cat_owners.owner_id = 2;
-- above query returns the names of the two cats owned by cat_owner with the id of 2

SELECT 
    cats.name AS cat_name, 
    owners.name AS owner_name 
FROM cats
INNER JOIN cat_owners
    ON cats.id = cat_owners.cat_id
INNER JOIN owners
    ON cat_owners.owner_id = owners.id;
-- above query returns the names of the cats with listed owners and the corresponding owners name listed 
