package resources.data.objects;

public class Employee {
    private String first_name;
    private String last_name;
    private String email;
    private String hire_date;
    private int salary;
    private String department;

    public Employee() {
    }

    public Employee(String first_name, String last_name, String hire_date, String email, int salary, String department) {
        this.first_name = first_name;
        this.last_name = last_name;
        this.hire_date = hire_date;
        this.email = email;
        this.salary = salary;
        this.department = department;
    }

    public String getFirst_name() {
        return first_name;
    }

    public void setFirst_name(String first_name) {
        this.first_name = first_name;
    }

    public String getLast_name() {
        return last_name;
    }

    public void setLast_name(String last_name) {
        this.last_name = last_name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getHire_date() {
        return hire_date;
    }

    public void setHire_date(String hire_date) {
        this.hire_date = hire_date;
    }

    public int getSalary() {
        return salary;
    }

    public void setSalary(int salary) {
        this.salary = salary;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }
}
