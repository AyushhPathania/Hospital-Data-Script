<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <!-- <title>Hospital Revenue Trend Analysis – SQL (Task 6)</title> -->
</head>
<body style="font-family: Arial, sans-serif; line-height: 1.6; padding: 20px; background-color: #f9f9f9;">

  <h1>🏥 Hospital Revenue Trend Analysis – SQL Aggregation (Task 6)</h1>

  <p>This project is part of my <strong>Data Analyst Internship (Task 6)</strong>, where I analyzed monthly hospital revenue and order volume using <strong>SQL aggregation functions</strong>.</p>

  <hr>

  <h2>🎯 Objective</h2>
  <p>The goal is to perform time-series analysis by grouping data month-wise and calculating:</p>
  <ul>
    <li>Total Revenue (monthly)</li>
    <li>Total Appointments / Orders (monthly)</li>
  </ul>

  <h2>🛠️ Tools & Environment</h2>
  <ul>
    <li><strong>SQL Dialect:</strong> PostgreSQL (adaptable to MySQL/SQLite)</li>
    <li><strong>Dataset:</strong> Hospital_Data.csv</li>
    <li><strong>Platform:</strong> DBeaver / pgAdmin / SQLite browser</li>
  </ul>

  <h2>📁 Project Structure</h2>
  <table border="1" cellpadding="8" cellspacing="0">
    <tr>
      <th>File Name</th>
      <th>Description</th>
    </tr>
    <tr>
      <td><code>Hospital.sql</code></td>
      <td>SQL script with all aggregation queries</td>
    </tr>
    <tr>
      <td><code>Hospital_Data.csv</code></td>
      <td>Hospital data with revenue and order details</td>
    </tr>
    <tr>
      <td><code>screenshots/</code></td>
      <td>Folder containing query result screenshots</td>
    </tr>
    <tr>
      <td><code>README.html</code></td>
      <td>This documentation file</td>
    </tr>
  </table>

  <h2>🧠 SQL Concepts Used</h2>
  <ul>
    <li><code>EXTRACT(MONTH FROM order_date)</code> – to group by month</li>
    <li><code>SUM(amount)</code> – for monthly revenue</li>
    <li><code>COUNT(DISTINCT order_id)</code> – for unique appointments/orders</li>
    <li><code>GROUP BY</code> and <code>ORDER BY</code> – to structure trends</li>
    <li><code>LIMIT</code> – to identify top-performing months</li>
  </ul>

  <h2>📊 Sample SQL Query</h2>
  <pre><code>
SELECT 
  EXTRACT(YEAR FROM order_date) AS year,
  EXTRACT(MONTH FROM order_date) AS month,
  SUM(amount) AS monthly_revenue,
  COUNT(DISTINCT order_id) AS total_orders
FROM 
  hospital_data
GROUP BY 
  year, month
ORDER BY 
  year, month;
  </code></pre>

  <h2>📸 Output Screenshots</h2>
  <p>All query outputs are available inside the <code>screenshots/</code> folder for visual reference and validation.</p>

  <h2>✅ Key Insights</h2>
  <ul>
    <li>Monthly revenue peaked in certain periods based on query results.</li>
    <li>Appointments/orders increased progressively across several months.</li>
    <li>Top 3 revenue months identified using <code>LIMIT</code> query.</li>
  </ul>


</body>
</html>
