 ## Build
 
    docker build -t benit/openldap openldap/ &&  docker run -p 389:389 -p 636:636 --name openldap --detach --rm benit/openldap && docker ps

## Check

    ldapsearch -D "cn=admin,dc=mycompany,dc=com" -w admin -p 389 -h localhost -b "ou=Paris,ou=People,dc=mycompany,dc=com"