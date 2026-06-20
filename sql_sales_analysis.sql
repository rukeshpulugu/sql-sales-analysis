/*
Project:E-Commerce Sales Analysis
Author :Rukesh Pulugu 
Dataset: SuperStore 
*/

/*     Phase 1 : Exploratory analysis    */



/*     Count Total Records in the Dataset    */
SELECT COUNT(*) FROM superstore;

/*     Count Unique Customers      */
SELECT COUNT(DISTINCT 'Customer Name')
FROM superstore;

/*     Count Unique Products       */
SELECT COUNT(DISTINCT 'Product Name')
FROM superstore;

/*     Calculate Total Sales Revenue   */ 
SELECT SUM(Sales)
FROM superstore;

/*     Calculate Total Profit Earned    */
SELECT SUM(Profit)
FROM superstore;



/*      Phase 2: Sales Analysis       */

/*      Top 10 Products       */
SELECT 'Product Name',
SUM(Sales) AS Revenue
FROM superstore
GROUP BY 'Product Name'
ORDER BY Revenue DESC
LIMIT 10;


/*    Top categories      */
SELECT Category,
SUM(Sales) AS Sales
FROM superstore
GROUP BY Category
ORDER BY Sales DESC;


/*     Top Regions          */
SELECT Region,
SUM(Sales) AS Sales
FROM superstore
GROUP BY Region
ORDER BY Sales DESC;


/*     Phase 3 : Profit Analysis      */


/*  Most Profitable Category  */
SELECT Category,
SUM(Profit) AS Profit
FROM superstore
GROUP BY Category
ORDER BY Profit DESC;


/*   Loss Making Products   */ 
SELECT 'Product Name',
SUM(Profit) AS Profit
FROM superstore
GROUP BY 'Product Name'
HAVING SUM(Profit) < 0
ORDER BY Profit;


/* Phase 4 : Customer Analysis     */


/*    Top 10 Customers     */
SELECT 'Customer Name',
SUM(Sales) AS Revenue
FROM superstore
GROUP BY 'Customer Name'
ORDER BY Revenue DESC
LIMIT 10;


/*    Most Profitable Customers     */
SELECT 'Customer  Name',
SUM(Profit) AS Profit
FROM superstore
GROUP BY 'Customer Name'
ORDER BY Profit DESC
LIMIT 10;
