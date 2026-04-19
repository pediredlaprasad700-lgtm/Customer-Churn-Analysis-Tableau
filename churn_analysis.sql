-- Customer Churn SQL Analysis

-- 1. Total Customers
SELECT COUNT(*) AS Total_Customers
FROM customer_churn_cleaned;

-- 2. Stayed Customers
SELECT COUNT(*) AS Stayed_Customers
FROM customer_churn_cleaned
WHERE Churn_Label = 'No';

-- 3. Churned Customers
SELECT COUNT(*) AS Churned_Customers
FROM customer_churn_cleaned
WHERE Churn_Label = 'Yes';

-- 4. Churn by Contract Type
SELECT Contract,
COUNT(*) AS Churned_Customers
FROM customer_churn_cleaned
WHERE Churn_Label = 'Yes'
GROUP BY Contract
ORDER BY Churned_Customers DESC;

-- 5. Churn by Internet Service
SELECT Internet_Service,
COUNT(*) AS Churned_Customers
FROM customer_churn_cleaned
WHERE Churn_Label = 'Yes'
GROUP BY Internet_Service
ORDER BY Churned_Customers DESC;

-- 6. Churn by Payment Method
SELECT Payment_Method,
COUNT(*) AS Churned_Customers
FROM customer_churn_cleaned
WHERE Churn_Label = 'Yes'
GROUP BY Payment_Method
ORDER BY Churned_Customers DESC;