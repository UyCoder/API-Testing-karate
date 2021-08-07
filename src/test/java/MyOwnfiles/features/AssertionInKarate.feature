Feature: Using match keyword


  Scenario: some matching example
    * def name = 'ahmed'
    * match name == 'ahmed'
    # similar to Assert.assertEquals(name,"ahmed");
    * match name != 'Bughra'

  Scenario: more matching example
    * def employee =
  """
    {
    "firstName" : "Ahmed",
    "LastName" : "Bughra",
    "Salary" : 80000,
    "Active" : true
    }
    """
    * def employee_Name = employee.firstName
    * match employee_Name == "Ahmed"
    * print employee.Salary
    * match employee.Salary == 80000
    * match employee.Salary != 90000

  Scenario: Fuzzy matching
    * def employee =
  """
        {
    "firstName" : "Ahmed",
    "LastName" : "Bughra",
    "Salary" : 80000,
    "Active" : true
    }
    """
    * match employee.firstName == '#string'
    * match employee.LastName == '#string'
    * match employee.LastName == '#present'
    * match employee.Salary == '#number'
    * match employee.Active == '#boolean'

    * match employee.MiddleName != '#present'
    * match employee.MiddleName == '#notpresent'



  Scenario: contains matching
    * def employee =
  """
   [
   {
    "firstName" : "Ahmed",
    "LastName" : "Bughra",
    "Salary" : 80000,
    "Active" : true
      },
     {
    "firstName" : "Abdushukur",
    "LastName" : "Bughra",
    "Salary" : 90000,
    "Active" : true
         }
    ]
    """
    * def length = employee.length
    * print length
    * match length == 2
    * match employee contains {"firstName" : "Abdushukur","LastName" : "Bughra","Salary" : 90000,"Active" : true}
