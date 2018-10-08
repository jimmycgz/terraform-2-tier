# Issue Log
	
  ## Bug1 from the original code: The webserver VM can't access internet
  Resolution: Opened the missing emgress port 80 in the Security Group for public subnet
  
  ## Bug2 from the orininal code: got error message saying ssh key file missing
  Resolution: In terraform.tfvars, found a predefined path as aws_key_path = "~/.ssh/" for ssh key file which should leave empty if you refer to the default key file of your AWS cloud account.
  
  ## Bug3 from the orininal code: the name of ssh key file incorrectly shows as :keyname.pem.pem
  Resolution: Remove the extension .pem from terraform.tfvars
  
  
