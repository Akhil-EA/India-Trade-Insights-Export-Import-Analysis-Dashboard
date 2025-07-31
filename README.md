# India-Trade-Insights-Export-Import-Analysis-Dashboard
This Power BI dashboard offers interactive insights into India's export and import trends. It visualizes trade value by country, commodity, and financial year. Data from India's Open Government Platform is cleaned, categorized in SQL Server, then presented in clear visuals.

**The Problem**
Global trade can be really confusing. There's a lot of raw information about exports and imports, scattered across many different tables and time periods. This makes it hard to see important patterns, find the biggest trading partners, or know which products are key. When you don't have a clear picture, it's tough to find new chances to grow, understand who you depend on for trade, or react quickly when trade situations change.

**Methodology**
Data Sourcing: The raw trade data was meticulously downloaded from the Open Government Data (OGD) Platform of India. This platform provides export and import data for various commodities.

Data Storage & Transformation (SQL Server): The downloaded CSV files were then uploaded to a SQL Server database. A crucial step in this phase was the addition of a new Category column directly within SQL, based on the Units of the commodities. This transformation categorized diverse trade items into more manageable groups like "Large Bulk", "Liquid", "Parts", "Smaller Bulk", "Surface Area", and "Others". This categorization significantly enhances the analytical capabilities of the dashboard.

Data Visualization (Power BI): Finally, Power BI Desktop was used to connect directly to the SQL Server. This live connection facilitated pulling the processed and categorized data into Power BI, where the interactive visuals were created.

**Dashboard Screenshots & Interaction**

Export Overview Page
This page provides an immediate understanding of India's top export partners and commodities by value, along with interactive filters for drilling down into specific financial years and commodity categories. 
<img width="968" height="552" alt="image" src="https://github.com/user-attachments/assets/37405f56-d28c-438c-8e58-6250949026f2" />


Import Overview Page
This page provides an immediate understanding of India's top import partners and commodities by value, along with interactive filters for drilling down into specific financial years and commodity categories. 
<img width="964" height="554" alt="image" src="https://github.com/user-attachments/assets/4240bc76-5971-44eb-9a54-b2d4706d7481" />


YOY Analysis
This section of the dashboard allows users to analyze export trends over different financial years, observing the overall growth or decline in export value and dynamically viewing top countries and commodities for selected periods. 
<img width="956" height="559" alt="image" src="https://github.com/user-attachments/assets/0406be5c-195a-44dc-984d-d6a48352d9c4" />



