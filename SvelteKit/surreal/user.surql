//define la forma de acceso del usuario
DEFINE ACCESS OVERWRITE account ON DATABASE TYPE RECORD 
SIGNIN (
SELECT * FROM user WHERE email = $email AND crypto::argon2::compare(password_hash, $password) )
DURATION FOR TOKEN 15m, FOR SESSION 12h;


DEFINE TABLE OVERWRITE user SCHEMAFULL
 PERMISSIONS
   FOR select WHERE $auth
   FOR update WHERE id = $auth OR $auth.is_admin
   FOR create, delete WHERE $auth.is_admin;

//define el los campos y tablas de user

DEFINE FIELD OVERWRITE name ON TABLE user TYPE string;
DEFINE FIELD OVERWRITE email ON TABLE user TYPE string ASSERT string::is::email($value);
DEFINE FIELD OVERWRITE is_admin ON TABLE user TYPE bool DEFAULT false;
DEFINE FIELD OVERWRITE password_hash ON TABLE user TYPE string;


DEFINE INDEX OVERWRITE unique_email ON TABLE user FIELDS email UNIQUE;


-- Define el unico usuario
CREATE user CONTENT {
    email:"novazero455@gmail.com",
    name:"D,Anthony Brown",
    password_hash: crypto::argon2::generate("vampire123"),
    
};