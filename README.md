# guacamoledockerlab
Initial attempt at a docker swarm for Apache guacamole.

If you need to add additional extensions see the documentation here. https://guacamole.apache.org/doc/gug/guacamole-docker.html#guacamole-docker-guacamole-home

Additional reading https://hub.docker.com/r/guacamole/guacamole

The docker swarm will automatically load balance across the guacd daemons. Increase the replicas as needed.

Secrets need to be added for the MySQL passwords. Place them in the file in .gitignore.

You can a database backups to the docker-entrypoint-initdb.d and it will be automatically restored when the MySQL container is initialized.

It is possible to point to an external data source as well. You'd want to remove the mysql service and reference you server in the YAML for the guacamole server.

You'll need to setup an app registration in AzureAD and populate the relevant OpenID field in the YAML file. Make sure you add yourself as the initial administrator.
