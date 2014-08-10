	
	 _______                                     
	(_______)                                    
	 _______  ____ ____  _____                   
	|  ___  |/ ___)    \| ___ |                  
	| |   | ( (___| | | | ____|                  
	|_|   |_|\____)_|_|_|_____)                  
                                             
	 _______          _                  _       
	(_______)        (_)                (_)      
	 _     _  ___     _       ___   ____ _ ____  
	| |   | |/ _ \   | |     / _ \ / _  | |  _ \ 
	| |   | | |_| |  | |____| |_| ( (_| | | | | |
	|_|   |_|\___/   |_______)___/ \___ |_|_| |_|
	                              (_____|        
	
	by Websecurify (pdp)
	

The following application, written on top of MongoDB and NodeJS, demonstrates a simple but not too obvious vulnerability in the this particular technology stack that can be used to successfully bypass the login prompt.

# System Requirements

You will need docker installed and fully functional.

# How To Build

Run the following command:

	make docker-build

# How To Use

Run the following command:

	make docker-run

The application will be available on localhost:49090.
