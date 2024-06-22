# Grafana-monitoring-dockers
Master-slave version to create an environment with Docker containers

=================================================================================================================================================
=================================================================================================================================================

On a server, we will launch the containers with docker compose up -d which will get Grafana, Prometheus, and Loki running.

On the clients where we want to launch the same command to have the instances of Loki and Prometheus as endpoints, and the instances of Node_exporter and Cadvisor, in addition to configurations so that Loki extracts system logs such as History, Syslog, and the apps we put in.

We must previously configure the Prometheus.yml file with the instances of the clients we want to add and the variables, in the server folder:
      # ------------------------------------- #
      - targets: [ '192.168.0.90:9090']  # DES
        labels:
          country: ES
          environment: DES
          client: client1
          hostname: client1

Additionally, on each client, add the previous variables to the .env file:
      country=ES           #ES
      environment=DES        #DES/DES1
      client=client1        #client1/client2
      hostname=cliente1       #client1
      lokiURL=http://192.168.0.88:3100

This makes our own variables work so they can be used in Grafana panels.


=================================================================================================================================================
=================================================================================================================================================

En un servidor, lanzaremos los containers con docker compose up -d que nos pondrán a funcionar Grafana, Prometheus y Loki

En los clientes que queramos lanzaremos el mismo comando para tener las intancias de Loki, Prometheus como endpoints, y las instancias de Node_exporter y Cadvisor, además de configuraciones para que Loki nos saque logs del sistema tales como History, Syslog y las apps que le pongamos.

Previamente debemos configurar el archivo de Prometheus.yml con las instancias de los clientes que queramos añadir y las variables, en la carpeta de servidor:
      # ------------------------------------- #
      - targets: [ '192.168.0.90:9090']  # DES
        labels:
          pais: ES
          entorno: DES
          cliente: cliente1
          hostname: cliente1

Además de configurar en cada cliente añadir las variables anteriores en el archivo .env:
        pais=ES           #ES
        entorno=DES        #DES/DES1
        cliente=cliente1        #cliente1/cliente2
        hostname=cliente1       #cliente1
        lokiURL=http://192.168.0.88:3100

Esto hace que nos funcionen las variables propias para poder usarlas en los paneles de Grafana.

