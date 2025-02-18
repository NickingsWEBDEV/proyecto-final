-- Define el unico usuario
CREATE user CONTENT {
    email:"novazero455@gmail.com",
    name:"D,Anthony Brown",
    password:"vampire123",
    password_hash: crypto::argon2::generate("vampire123"),
    
};

//define la forma de acceso del usuario
DEFINE ACCESS OVERWRITE user ON DATABASE TYPE RECORD 
SIGNIN (
SELECT * FROM user WHERE email = $email AND crypto::argon2::compare(password, $password) 
)
DURATION FOR TOKEN 15m, FOR SESSION 12h;


DEFINE TABLE OVERWRITE user SCHEMAFULL
 PERMISSIONS
   FOR select WHERE $auth = id;

//define el los campos y tablas de user

DEFINE FIELD OVERWRITE name ON TABLE user TYPE string;
DEFINE FIELD email OVERWRITE ON TABLE user TYPE string ASSERT string::is::email($value);
DEFINE FIELD password_hash OVERWRITE ON TABLE user TYPE string;


DEFINE INDEX OVERWRITE unique_email ON TABLE user FIELDS email UNIQUE;