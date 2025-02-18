import { Surreal } from 'surrealdb';
import { browser } from '$app/environment';

const db = new Surreal();

await db.connect('http://localhost:8000', { namespace: 'admin.general', database: 'main' });

let isSignedIn = false;

const token = browser && localStorage.getItem('token');

if (token) {
	try {
		await db.authenticate(token);
		isSignedIn = true;
	} catch (err) {
		console.error('no se pudo restablecer la sesiòn', err);
	}
}

export async function signIn(email: string, password: string) {
	try {
		const token = await db.signin({
			namespace: 'admin.general',
			database: 'main',
			access: 'user',
			variables: { email, password }
		});

		localStorage.setItem('token', token);
		isSignedIn = true;
	} catch (err) {
		console.error('no se pudo conectar a la base de datos', err);
		throw err;
	}
}

export async function signOut() {
	isSignedIn = false;
	localStorage.removeItem('token');

	try {
		await db.invalidate();
	} catch (err) {
		console.error('hubo un error cerrando sesiòn');
	}
}

export { db, isSignedIn };
