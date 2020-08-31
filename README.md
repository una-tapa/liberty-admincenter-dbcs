# Sample Liberty server that use DBCS userid for admincenter

## Creating Liberty image that has adminconsole configuration with users
```
$ docker build -t dbcs . 
$ docker run -it -p 29082:29082 -p 29445:29445 dbcs
```
## Inside the container

### Run the server

```
root@418e62b127b5:/opt/ibm/wlp/bin# ./server run defaultServer
```
Server startup..
```
Launching defaultServer (WebSphere Application Server 20.0.0.8/wlp-1.0.43.cl200820200721-1900) on IBM J9 VM, version 8.0.6.15 - pxa6480sr6fp15-20200724_01(SR6 FP15) (en_US)
[AUDIT   ] CWWKE0001I: The server defaultServer has been launched.
[AUDIT   ] CWWKE0100I: This product is licensed for development, and limited production use. The full license terms can be viewed here: https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/license/base_ilan/ilan/20.0.0.8/lafiles/en.html
[AUDIT   ] CWWKG0093A: Processing configuration drop-ins resource: /opt/ibm/wlp/usr/servers/defaultServer/configDropins/defaults/keystore.xml
[AUDIT   ] CWWKZ0058I: Monitoring dropins for applications.
[AUDIT   ] CWWKS4104A: LTPA keys created in 1.872 seconds. LTPA key file: /opt/ibm/wlp/output/defaultServer/resources/security/ltpa.keys
[AUDIT   ] CWPKI0803A: SSL certificate created in 2.270 seconds. SSL key file: /opt/ibm/wlp/output/defaultServer/resources/security/key.p12
[AUDIT   ] CWWKF0012I: The server installed the following features: [adminCenter-1.0, beanValidation-1.1, cdi-1.2, jaxrs-2.0, jaxrsClient-2.0, jdbc-4.1, jpa-2.1, jpaContainer-2.1, jsf-2.2, jsonp-1.0, restConnector-1.0, servlet-3.1, webProfile-7.0].
[AUDIT   ] CWWKF0013I: The server removed the following features: [appClientSupport-1.0, appSecurity-3.0, batch-1.0, beanValidation-2.0, cdi-2.0, concurrent-1.0, ejb-3.2, ejbHome-3.2, ejbPersistentTimer-3.2, ejbRemote-3.2, j2eeManagement-1.1, jacc-1.5, jaspic-1.1, javaMail-1.6, javaee-8.0, jaxb-2.2, jaxrs-2.1, jaxrsClient-2.1, jaxws-2.2, jca-1.7, jcaInboundSecurity-1.0, jdbc-4.2, jms-2.0, jpa-2.2, jpaContainer-2.2, jsf-2.3, jsonb-1.0, jsonp-1.1, jwt-1.0, mdb-3.2, microProfile-3.0, mpConfig-1.3, mpFaultTolerance-2.0, mpHealth-2.0, mpJwt-1.1, mpMetrics-2.0, mpOpenAPI-1.1, mpOpenTracing-1.3, mpRestClient-1.3, opentracing-1.3, servlet-4.0, wasJmsClient-2.0, wasJmsSecurity-1.0, wasJmsServer-1.0, webProfile-8.0].
[AUDIT   ] CWWKF0011I: The defaultServer server is ready to run a smarter planet. The defaultServer server started in 37.766 seconds.
[AUDIT   ] CWWKT0016I: Web application available (default_host): http://localhost:29082/ibm/api/
[AUDIT   ] CWWKT0016I: Web application available (default_host): http://localhost:29082/IBMJMXConnectorREST/
[AUDIT   ] CWWKT0016I: Web application available (default_host): http://localhost:29082/ibm/adminCenter/explore-1.0/
[AUDIT   ] CWWKT0016I: Web application available (default_host): http://localhost:29082/ibm/adminCenter/serverConfig-1.0/
[AUDIT   ] CWWKT0016I: Web application available (default_host): http://localhost:29082/adminCenter/
```
### Login to the server

Once the server started, in a browser, point to http://localhost:29082/adminCenter/

```
userid  password 
------------------
管理者    password
utle     utle
```

### Debugging 

Debug - bootstrap.propertis
JVM   - UTF-8 option is important
serve.xml - basic auth and admincenter

### Reference
The property has been documented. 
https://www.ibm.com/support/knowledgecenter/SSEQTP_liberty/com.ibm.websphere.wlp.doc/ae/twlp_ui_setup.html
