FROM osixia/openldap
COPY data-500-users.ldif /container/service/slapd/assets/config/bootstrap/ldif
ENV LDAP_ORGANISATION "My company"
ENV LDAP_DOMAIN "mycompany.com"
ENV LDAP_ADMIN_PASSWORD "admin"