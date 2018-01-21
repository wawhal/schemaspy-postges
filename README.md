# Schemaspy with Hasura

[Schemaspy](http://schemaspy.sourceforge.net/) is a tool that analyzes the metadata of a schema in a database and generates a visual representation of it in a browser-displayable format. It lets you click through the hierarchy of database tables via child and parent table relationships as represented by both HTML links and entity-relationship diagrams. It's also designed to help resolve the obtuse errors that a database sometimes gives related to failures due to constraints.

This is a starter project for Schemaspy with Hasura backend. It comes with an article and author table. You can get this application running by just the three following steps:

- Quickstart the project.

```
$ hasura quickstart rishi/schemaspy-postgres
```

- Push the project to your cluster

```
$ git add && git commit -m "First commit"
$ git push hasura master
```

- On success, you can view your schema awesomely at https://schemaspy.clustername.hasura-app.io  

## Getting Schemaspy in your Hasura Project

If you have an existing hasura project, you might want to get schemaspy on your project to view your schema systematically. You can just add an extra microservice called schemaspy from the microservice templates.

```
$ hasura microservice create schemaspy --template=schemaspy
$ hasura conf generate-route schemaspy >> conf/routes.yaml
$ hasura conf generate-conf schemaspy >> conf/ci.yaml
```

Then commit and push the changes to the cluster. You will have schemaspy for your cluster running at https://schemaspy.cluster-name.hasura-app.io

## Files and Directories

The project (a.k.a. project directory) has a particular directory structure and it has to be maintained strictly, else `hasura` cli would not work as expected. A representative project is shown below:

```
.
├── hasura.yaml
├── clusters.yaml
├── conf
│   ├── authorized-keys.yaml
│   ├── auth.yaml
│   ├── ci.yaml
│   ├── domains.yaml
│   ├── filestore.yaml
│   ├── gateway.yaml
│   ├── http-directives.conf
│   ├── notify.yaml
│   ├── postgres.yaml
│   ├── routes.yaml
│   └── session-store.yaml
├── migrations
│   ├── 1504788327_create_table_userprofile.down.yaml
│   ├── 1504788327_create_table_userprofile.down.sql
│   ├── 1504788327_create_table_userprofile.up.yaml
│   └── 1504788327_create_table_userprofile.up.sql
└── microservices 
    └── schemaspy
        ├── app/
        ├── k8s.yaml
        └── Dockerfile
```
