# Shell Script to Set Roles to Users Dynamically, using Auth pipeline Rules :

# Steps to use this script in your Rule

1.  To check for an Auth0 User and a Role. And Create one if not present.
2.  As the step two, simply navigate to the Auth Pipeline section present at the left side of the toolbar. 
3.  Click Rules ->  Select an EmptyRule 
4.  Use the following script there, with minor changes to it according to your requirements. 
    * Like changing the user.email.endsWith() endpoint 
    * And changing the role_id in roles array.

What this script will do is checks if the user is a valid user by checking its email endpoint in the if condition, then will assign the mentioned Role to all the User that are valid. And will also check in case of any error and will return the same.

