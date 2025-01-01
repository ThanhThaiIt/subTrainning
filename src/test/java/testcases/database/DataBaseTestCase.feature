Feature:
  Background:
    * def dbHelper = Java.type('common.helper.java.DatabaseHelper')
    * def dbHelperObj = new dbHelper()
    * def dbType = Java.type('common.helper.java.DatabaseHelper.DatabaseType')

    * def helperP =  Java.type('common.helper.java.DataHelper')
    * def dataHelper = new helperP()


  Scenario:
#    * def scriptCreateDb = "CREATE database classicmodels;"
#    * def excuse = dbHelperObj.executeQuery(scriptCreateDb, dbType.MYSQL)

    * def createTblScript = "CREATE TABLE employees11 (employee_id INT AUTO_INCREMENT PRIMARY KEY,first_name VARCHAR(50) NOT NULL,last_name VARCHAR(50) NOT NULL,email VARCHAR(100) UNIQUE NOT NULL,hire_date DATE NOT NULL,salary DECIMAL(10,2) DEFAULT 0.00,department VARCHAR(50));"
    * def excuse = dbHelperObj.executeUpdate(createTblScript, dbType.MYSQL)
    * def insertTblScript = "INSERT INTO employees11 (first_name, last_name, email, hire_date, salary, department)VALUES('John', 'Doe', 'john.doe@example.com', '2023-01-15', 60000, 'Engineering'),('Jane', 'Smith', 'jane.smith@example.com', '2022-11-01', 72000, 'HR'),('Bob', 'Johnson', 'bob.johnson@example.com', '2023-03-20', 55000, 'Sales');"
    * def excuse2 = dbHelperObj.executeUpdate(insertTblScript, dbType.MYSQL)
    * def selectHrTblScript = "SELECT * FROM employees11 as e WHERE e.department = 'HR';"
    * print 'hello ' + dbHelperObj.executeQuery(selectHrTblScript, dbType.MYSQL)

    * def updateEngSalary = "UPDATE employees11 SET salary = salary * 1.10 WHERE department = 'Engineering';"
    * dbHelperObj.executeUpdate(updateEngSalary, dbType.MYSQL)
    * print 'hello ' + dbHelperObj.executeQuery("SELECT * FROM employees11 WHERE department = 'Engineering';", dbType.MYSQL)


    * def deleteEngSalary = "DELETE FROM employees11 WHERE email = 'bob.johnson@example.com';"
    * dbHelperObj.executeUpdate(deleteEngSalary, dbType.MYSQL)

    * def countEmpTbl = "SELECT COUNT(*) AS employees_count FROM employees11;"
    * print 'count is ' + dbHelperObj.executeQuery(countEmpTbl, dbType.MYSQL)




