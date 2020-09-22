Question1:
SELECT Invoice.BillingCountry AS I_B, COUNT(Customer.Country) AS C_C
FROM Invoice
JOIN Customer
ON Invoice.CustomerId= Customer.CustomerId
WHERE Invoice.CustomerId = Customer.CustomerId
GROUP BY I_B
ORDER BY C_C DESC

Question2:
SELECT Invoice.BillingCity AS I_B, SUM(Invoice.total) AS C_C
FROM Invoice
join Customer
ON Invoice.CustomerId= Customer.CustomerId
WHERE Invoice.CustomerId = Customer.CustomerId
GROUP BY I_B
ORDER BY C_C DESC

Question3:
SELECT Invoice.CustomerId AS I_C, SUM(Invoice.total) AS I_T
FROM Invoice
JOIN Customer
ON Invoice.CustomerId= Customer.CustomerId
GROUP BY I_C
ORDER BY I_T DESC

Question4:
SELECT Genre.Name , Customer.FirstName,Customer.LastName,Customer.Email
FROM Genre
JOIN Track
ON Genre.GenreId = Track.GenreId
JOIN InvoiceLine
ON InvoiceLine.TrackId = Track.TrackId
JOIN Invoice
ON InvoiceLine.InvoiceId = Invoice.InvoiceId
JOIN Customer
ON Customer.CustomerId = Invoice.CustomerId

ORDER BY Email
LIMIT 100




