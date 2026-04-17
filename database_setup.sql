CREATE TABLE IF NOT EXISTS processed_invoices (
    invoice_no TEXT PRIMARY KEY,   
    date DATE,                    
    amount FLOAT,                  
    file_name TEXT                 
);