Feature: welcome to karate
  
  Scenario: how to print
    Given print "Hello world"
    When print "Hello world"
    Then print "Hello world"


    Scenario: more print
      Given print "Some words to print"
      * print 'My name is','Karate kid'
      # , --> concat two string +1 white space
      * print 2+9

    Scenario: variable
      * def name = 'Ahmed'
      * print 'My name is', name
      * def age = 33
      * print name, 'is',age,'years old.'

  Scenario: difficult parameters : json object
    * def student = {'name':'sam','owes_tuition':false}
    * print student
    * print student.name
    * print student.owes_tuition

  Scenario: json object 2
    * def student =
  """
      {
        "name":"Ahmed",
        "owes_tuition":false,
        "salary":7500
      }
    """
    * print student.salary


  Scenario: json array objects
    * def students =
    """
    [
     {
        "name":"Ahmed",
        "owes_tuition":false,
        "salary":7500
      },
       {
        "name":"Abdushukur",
        "owes_tuition":true,
        "salary":7900
      }
    ]
    """
    * print students
    * print students[0].name
    * print students[1].salary
