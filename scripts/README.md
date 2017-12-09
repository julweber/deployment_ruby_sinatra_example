# List of useful cf scripts

## Configuration
```
cp private_settings.sh.example private_settings.sh

# edit login credentials, api endpoint, org and space + app configuration
nano private_settings.sh
```

## Execution

Always execute the 0_login.sh script first to connect to your org and space!

```
cd scripts
bash 0_login.sh

# then e.g.
bash base_deployment.sh
```

## Scripts

* 0_login.sh - performs login based on configuration in private_settings.sh
* base_deployment.sh - performs a deployment based on the settings in manifest.yml and private_settings.sh
* bind_service.sh - binds a service to the application
* blue_green_deployment.sh - execute a blue green deployment with manifest.multi.yml config file
* create_route.sh - create a route within the space
* create_service.sh - create a service instance
* delete_app.sh - delete the application from space
* delete_service.sh - delete the service instance from space
* list_available_services.sh - lists available services in the marketplace
* logs_recent.sh - Show recent logs
* logs_tail.sh - Tail log stream from application
* map_route.sh - Map a route to the application
* private_settings.sh.example - Example file for configuring deployment script settings
* unbind_service.sh - Unbind a service from the application
* unmap_route.sh - Unmap a route from the application
