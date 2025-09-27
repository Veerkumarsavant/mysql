CREATE INDEX idx_customer_id ON retail (CustomerID);

CREATE INDEX idx_invoice_date ON retail (InvoiceDate);

CREATE INDEX idx_country_revenue ON retail (Country, (Quantity * UnitPrice) DESC);
