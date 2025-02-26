import { Surreal } from 'surrealdb.js';

// conectarme con la base de datos

const db = new Surreal();

async function connect() {
	try {
		await db.signin({
			//mi usuario de surrealdb
			username: 'papush',
			password: 'root'
		});

		await db.use({
			//la ubicacion de los datos,superficialmente
			namespace: 'admin.general',
			database: 'main'
		});
	} catch (err) {
		console.error('hubo un error cerrando sesiòn');
	}
}
export { db, connect };
