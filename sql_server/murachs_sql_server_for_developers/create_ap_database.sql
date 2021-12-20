CREATE DATABASE AP;

CREATE TABLE Invoices
(
    InvoiceID            INT            NOT NULL IDENTITY PRIMARY KEY,
	VendorID             INT            NOT NULL REFERENCES Vendor(VendorID),
	InvoiceNumber        INT            NOT NULL,
	InvoiceDate          INT            NOT NULL,
	InvoiceTotal         MONEY          NOT NULL,
	PaymentTotal         MONEY          NOT NULL DEFAULT 0,
	CreditTotal          MONEY          NOT NULL DEFAULT 0,
	TermsID              INT            NOT NULL REFERENCES Terms(TermsID),
	InvoiceDueDate       DATE           NOT NULL,
	PaymentDate          DATE           NULL
)

ALTER TABLE Invoices
ADD BalanceDue MONEY NOT NULL;

ALTER TABLE Invoices
DROP COLUMN BalanceDue;

CREATE INDEX IX_Invoices_VendorID
    ON Invoices (VendorID);


SELECT InvoiceNumber, InvoiceDate, InvoiceTotal,
    PaymentTotal, CreditTotal, 
	InvoiceTotal - PaymentTotal - CreditTotal AS BalanceDue
FROM Invoices
WHERE InvoiceTotal - PaymentTotal - CreditTotal > 0
ORDER BY InvoiceDate;

SELECT VendorName, InvoiceNumber, InvoiceDate, InvoiceTotal
FROM Vendors
INNER JOIN Invoices
    ON Vendors.VendorID = Invoices.VendorID
WHERE InvoiceTotal >= 500
ORDER BY VendorName, InvoiceTotal DESC;



