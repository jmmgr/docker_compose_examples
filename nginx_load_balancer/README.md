# Example nginx load balancer

The idea is to to create 2 back end servers and use nginx as a load balancer between them.

We are using the default load balancer, so it will use round robin, each time we execute
```
curl localhost:9090
```
The different containers Ids will take turns in respond us.
