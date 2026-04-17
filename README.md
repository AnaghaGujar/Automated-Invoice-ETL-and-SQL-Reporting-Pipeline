# Automated-Invoice-ETL-and-SQL-Reporting-Pipeline
1. The Business Problem
   The goal was to automate the extraction of financial data from inconsistent, unstructured PDF invoices to eliminate manual entry errors and prepare data for daily "SRT" (Service Reporting Tool) reports.

3. Technical Stack
  Language: Python.

  Libraries: pdfplumber (Extraction), pandas (Transformation), re (Regular Expressions), dateutil (Parsing).

  Database: SQLite / SQL.

  Environment: Jupyter Notebook.

3. Key Challenges & Solutions

  Unstructured Formats: Developed advanced Regular Expressions (Regex) to capture Invoice IDs (e.g., #1234 vs INV-100) across different document layouts.

  Data Ambiguity: Implemented Positional Logic (using findall and index targeting) to distinguish between "Subtotal," "Tax," and the final "Total Due".

  Standardization: Used fuzzy date parsing to convert various formats (e.g., 11/15/2019 and January 25, 2016) into a uniform YYYY-MM-DD SQL-ready format.

  Data Integrity: Applied type-validation and string-cleaning logic to handle thousand-separators (commas) and ensure all financial figures were stored as mathematical floats.

4. Results & Impact
   
  Database Integration: Successfully loaded processed data into a relational SQL database for downstream reporting.

  Actionable Insights: Built SQL queries to generate Monthly Business Reviews, identifying total spend trends and invoice volumes automatically.

  Scalability: Created a "loop-based" architecture that can process hundreds of PDFs in seconds, significantly faster than manual processing.
