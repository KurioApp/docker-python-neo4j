# [Neo4j with Python Image](https://hub.docker.com/r/aongko/python-neo4j/)

[*Neo4j*](https://neo4j.com/) is a graph database.

This image is intended to be used in development environments, such as for testing and it **SHOULD NOT** be used in production environments.

## Usage
The following shell statement will start the *Neo4j* on port 7474 and 7687.

```sh
docker run --rm -it -p 7474:7474 -p 7687:7687 aongko/python-neo4j python
```

For more information, please refer to: [https://hub.docker.com/_/neo4j/](https://hub.docker.com/_/neo4j/)
