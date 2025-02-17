//define la forma de acceso del usuario
DEFINE ACCESS user ON DATABASE TYPE RECORD 
SIGNUP (
CREATE user CONTENT {
    name: $name,
    email: $email,
    password: crypto::argon2::generate($password)
}
)
SIGNIN (
SELECT * FROM user WHERE email = $email AND crypto::argon2::compare(password, $password) 
)
AUTHENTICATE {
    IF type::thing("token", $token.jti).revoked = true {
       THROW "this token has been revoked";
    };
   INSERT INTO token { id: $token.jti, exp: $token.exp, revoked: false };
   CREATE audit CONTENT { token: $token.jti, time: time::now() };
}
DURATION FOR TOKEN 15m, FOR SESSION 12h;
DEFINE TABLE user SCHEMAFULL
 PERMISSIONS
   FOR select WHERE $auth = id;

//define el los campos y tablas de user

DEFINE FIELD name ON TABLE user TYPE string;
DEFINE FIELD email ON TABLE user TYPE string ASSERT string::is::email($value);
DEFINE FIELD password_hash ON TABLE user TYPE string;


DEFINE INDEX unique_email ON TABLE user FIELDS email UNIQUE;