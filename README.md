# Warehouse Management System (WMS)

## Project Overview

This project focuses on identifying SQL-related vulnerabilities in a customized Warehouse Management System (WMS) using SQLMap and proposes effective patches and security upgrades. The primary goal is to demonstrate the detection and mitigation of SQL injection threats, alongside implementing data encryption to enhance the WMS's security. By addressing these vulnerabilities, we aim to significantly improve the overall security and integrity of the WMS.

## Technology Stack

- **PHP**: Server-side programming for application logic.
- **MySQL**: Database management for handling data storage and retrieval.
- **Bootstrap**: Ensures a responsive and user-friendly front-end design.

## Installation and Setup

1. **Code Launcher**: Install any local web server to serve the WMS application.
2. **Download the Project Code**: Clone the repository from GitHub. Alternatively, download the source code as a zip file and extract it.
3. **Start the Launcher**: Open your launcher control panel and start the "Apache" and "MySQL" services.
4. **Set Up the Project Folder**: Paste the folder into the right directory.
5. **Database Setup**:
    - Open phpMyAdmin in your browser by visiting http://localhost/phpmyadmin.
    - Create a new database named grocery.
    - Import the SQL file store.sql provided in the source code folder to set up the database structure and sample data.
6. **Run the WMS Application**: Open a web browser and go to http://localhost/grocery to access the WMS.

## Usage Instructions

Once the WMS is set up, you can use its features for grocery store management.

- **Login**: Access the login page and authenticate with admin credentials.
- **Inventory Management**: Manage inventory for adding, updating, and deleting items and categories.
- **Sales Module**: Add items to the cart, apply discounts, generate bills, and record sales.
- **Reporting**: Generate and print reports on sales transactions and inventory summaries.
- **Admin Functions**: Manage user authentication, profile updates, and site settings.

## Database Structure

The WMS database includes six main tables:

- **grocery_supplier**: Stores supplier information.
- **grocery_inventories**: Tracks inventory items, including pricing and supplier data.
- **grocery_categories**: Manages product categories.
- **grocery_users**: Stores user profiles, including authentication details.
- **grocery_sold**: Records sales transactions.
- **grocery_site**: Contains site-wide settings, such as store name and title.
