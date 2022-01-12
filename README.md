# SQL Work

![sql.png](sql.png)

## Data Analysis/Engineering with SQl

In this projects, I designed tables with data from CSVs from Old employee Company information, then imported the CSVs into a SQL database, and quiered the data. 
![Screen Shot 2022-01-12 at 4 20 17 AM](https://user-images.githubusercontent.com/33403205/149118166-e1ebbdc9-112c-4237-b40c-4706adaeb47b.png)




#### Data Modeling

Here is where I used the tools to  Inspect the CSVs and sketch out an Entity Relational Diagram (EDRD) and constructed them into tables.
![QuickDBD-Free Diagram](https://user-images.githubusercontent.com/33403205/147866016-62f28f19-00a4-4c4b-a900-bca2be3b83c0.png)
#### Data Engineering

* Use the information you have to create a table schema for each of the six CSV files. Remember to specify data types, primary keys, foreign keys, and other constraints.

  * For the primary keys check to see if the column is unique, otherwise create a [composite key](https://en.wikipedia.org/wiki/Compound_key). Which takes to primary keys in order to uniquely identify a row.
  * Be sure to create tables in the correct order to handle foreign keys.

* Import each CSV file into the corresponding SQL table. **Note** be sure to import the data in the same order that the tables were created and account for the headers when importing to avoid errors.

#### Data Analysis

After organizing the Data in the CSV, SQL was used to organize the Data details from categories of each Employee,Emplyee number,Last name, First Name , Sex and Salary.



Also List were made with the following details of each manager,and listed Department number,department name,and the Managers employeee number along with Last and First names. Categorized the following..

* List the department of each employee with the following information: employee number, last name, first name, and department name.

* List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

* List all employees in the Sales department, including their employee number, last name, first name, and department name.

* List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

* In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

![Screen Shot 2022-01-12 at 4 26 00 AM](https://user-images.githubusercontent.com/33403205/149108132-2b76f7b3-a97d-445f-82eb-4303b9bc2711.png)


1. Import the SQL database into Pandas. (Yes, you could read the CSVs directly in Pandas, but you are, after all, trying to prove your technical mettle.) This step may require some research. Feel free to use the code below to get started. Be sure to make any necessary modifications for your username, password, host, port, and database name:

   ```sql
   from sqlalchemy import create_engine
   engine = create_engine('postgresql://localhost:5432/<your_db_name>')
   connection = engine.connect()
   ```

* Consult [SQLAlchemy documentation](https://docs.sqlalchemy.org/en/latest/core/engines.html#postgresql) for more information.



2. Create a histogram to visualize the most common salary ranges for employees.

3. Create a bar chart of average salary by title.


