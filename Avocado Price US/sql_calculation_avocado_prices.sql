SELECT
	Date,
    `Region`,
    Small_Bags,
    Large_Bags,
    XLarge_Bags,
    Total_Bags,
    ROUND(Small_Bags + Large_Bags + XLarge_Bags, 2) AS Total_Bags_Calc

FROM `avocado_prices`.`avocado`;

ALTER TABLE avocado
RENAME COLUMN `Total Bags` TO `Total_Bags`;

/* Calculate the percentage of small bags
*/

SELECT 
	Date,
    Region,
    Total_Bags,
    Small_Bags,
    Small_Bags / Total_Bags * 100 AS Small_Bags_Percent
FROM `avocado_prices`.`avocado`
WHERE
	Total_Bags <> 0;