{
	accesses: {
		account: "DEFINE ACCESS account ON DATABASE TYPE RECORD SIGNIN (SELECT * FROM user WHERE email = $email AND crypto::argon2::compare(password_hash, $password)) WITH JWT ALGORITHM HS512 KEY '[REDACTED]' WITH ISSUER KEY '[REDACTED]' DURATION FOR TOKEN 15m, FOR SESSION 12h"
	},
	analyzers: {},
	apis: {},
	configs: {},
	functions: {},
	models: {},
	params: {},
	tables: {
		contador: 'DEFINE TABLE contador TYPE NORMAL SCHEMAFULL PERMISSIONS NONE',
		counter: 'DEFINE TABLE counter TYPE NORMAL SCHEMAFULL PERMISSIONS NONE',
		user: 'DEFINE TABLE user TYPE NORMAL SCHEMAFULL PERMISSIONS FOR select WHERE $auth, FOR create, delete WHERE $auth.is_admin, FOR update WHERE id = $auth OR $auth.is_admin'
	},
	users: {}
}