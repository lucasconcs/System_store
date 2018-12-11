
package br.data.crud;

import java.util.HashMap;
import java.util.Map;

public class EMNames {
    public static final String EMN1 = "post";

    public static Map<String, String> getEMN1Props() {

        String heroku_db = System.getenv("DATABASE_URL"); 
        Map<String, String> properties = new HashMap<>();

        if (heroku_db == null) { 
            properties.put("javax.persistence.jdbc.url", "jdbc:postgresql://localhost:5432/store");
            properties.put("javax.persistence.jdbc.user", "postgres");
            properties.put("javax.persistence.jdbc.driver", "org.postgresql.Driver");
            properties.put("javax.persistence.jdbc.password", "postgresql");
        } else { 
            String jdbc_database_url = System.getenv("JDBC_DATABASE_URL");
            String jdbc_database_username = System.getenv("JDBC_DATABASE_USERNAME");
            String jdbc_database_password = System.getenv("JDBC_DATABASE_PASSWORD");

            properties.put("javax.persistence.jdbc.url", jdbc_database_url);
            properties.put("javax.persistence.jdbc.user", jdbc_database_username);
            properties.put("javax.persistence.jdbc.password", jdbc_database_password);
            properties.put("javax.persistence.jdbc.driver", "org.postgresql.Driver"); 
        }
        return properties;
    }
}
