function (user, context, callback) {
  if (user.email.endsWith('@knoldus.com')) {
    
  	var ManagementClient = require('auth0@2.17.0').ManagementClient;
  	var management = new ManagementClient({
    	token: auth0.accessToken,
    	domain: auth0.domain
  	});

  	management.assignRolestoUser(
    	{ id : user.user_id}, 
    	{ "roles" :["rol_LyaQ7o6T9CRO9qIm"]},  // sample role ID of "Standard API Enduser"
    	function (err) {
      	if (err) {
        	console.log('Error assigning role: ' + err);
      	}    
      	callback(null, user, context);
  	});
  }
}

