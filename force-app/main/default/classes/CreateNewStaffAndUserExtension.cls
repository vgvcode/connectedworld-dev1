public class CreateNewStaffAndUserExtension {
    public Id accountId{get;set;}
    public String accountName{get;set;}
    public List<Account> accs{get;set;}
    private final User user;
    public CreateNewStaffAndUserExtension(ApexPages.StandardController controller)
    { 
      this.user= (User)controller.getrecord();
    }
 
    public List<selectOption> getLicense()
    {
        List<selectOption> options = new List<selectOption>(); //new list for holding all of the picklist options
        options.add(new selectOption('', '- None -')); //add the first option of '- None -' in case the user doesn't want to select a value or in case no values are returned from query below
          for (UserLicense users :[SELECT Id,Name FROM UserLicense])  
          {    
                options.add(new selectOption(users.Id, users.Name)); //for all records found - add them to the picklist options
          }
        return options; //return the picklist options
    }

    public List<selectOption> getProfile() {
        List<selectOption> options1 = new List<selectOption>(); //new list for holding all of the picklist options
        options1.add(new selectOption('', '- None -')); //add the first option of '- None -' in case the user doesn't want to select a value or in case no values are returned from query below
     //   for (User users : [SELECT Id,UserType FROM User]) { //query for User records with System Admin profile
         for(Profile users1 :[SELECT Id,Name FROM Profile])  {    
            options1.add(new selectOption(users1.Id, users1.Name)); //for all records found - add them to the picklist options
        }
        return options1; //return the picklist options
    }
 }