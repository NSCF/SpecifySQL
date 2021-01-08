/*  from https://stackoverflow.com/questions/35408854/how-to-know-relations-between-tables/35409080  */
SELECT   
  `REFERENCED_TABLE_NAME` as 'parent',                 -- Origin key table
  `REFERENCED_COLUMN_NAME` as 'parent col',                -- Origin key column
  `TABLE_NAME` as 'child',                            -- Foreign key table
  `COLUMN_NAME` as 'child col'                            -- Foreign key column
FROM
  `INFORMATION_SCHEMA`.`KEY_COLUMN_USAGE`  -- Will fail if user don't have privilege
WHERE
  `TABLE_SCHEMA` = SCHEMA()                -- Detect current schema in USE 
  AND `REFERENCED_TABLE_NAME` IS NOT NULL -- Only tables with foreign keys
ORDER BY `REFERENCED_TABLE_NAME`;