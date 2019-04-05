Bamboo in Docker compose
# Steps: 

**1. Run server**

`docker-compose -f server.yaml up -d`


**2. Grap the hostname**
- You will find it in "http://localhost:8085/admin/globalConfiguration.action"
 
- The value of "Broker client URL"
- Put the hostname of that URL in .env, key `SERVER_BROKER_IP_OR_HOSTNAME`.

**3. Run the first agent**

`docker-compose up -d`

**4. Run post commands**


```sh
export $(cat .env | xargs) ;

docker-compose exec agent_dind /usr/bin/postrun ${AGENT_DIND_BUILD_DIR}

docker-compose exec agent_dind2 /usr/bin/postrun ${AGENT_DIND_BUILD_DIR}

docker-compose restart agent_dind agent_dind2
```