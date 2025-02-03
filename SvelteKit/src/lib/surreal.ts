import { browser } from '$app/environment';

export type SignUpResponse = {
	code: number;
	details: string;
	token: string;
};

export async function signup(
	nombre: string,
	correo: string,
	contrasena: string
): Promise<SignUpResponse> {
	const res = await fetch('http://localhost:5173/signup', {
		method: 'POST',
		headers: {
			accept: 'application/json'
		},
		body: JSON.stringify({
			ns: 'admin.general',
			db: 'main',
			ac: 'account',
			name: nombre,
			email: correo,
			password: contrasena
		})
	});

	const data: SignUpResponse = await res.json();

	localStorage.setItem('token', data.token);

	return data;
}

export async function signIn(email: string, password: string): Promise<SignUpResponse> {
	const res = await fetch('http://localhost:5172/signin', {
		method: 'POST',
		headers: {
			Accept: 'application/json'
		},
		body: JSON.stringify({
			ns: 'admin.general',
			db: 'main',
			ac: 'account',
			email,
			password
		})
	});

	const data = await res.json();

	localStorage.setItem('token', data.token);

	return data;
}

export function signOut() {
	localStorage.removeItem('token');
}

type QueryResponse = (
	| {
			status: 'OK';
			result: any;
			time: string;
	  }
	| {
			status: 'ERR';
			result: string;
			time: string;
	  }
)[];

export async function query(
	query: string,
	variables: Record<string, unknown> = {}
): Promise<QueryResponse> {
	const token = localStorage.getItem('token');

	if (token === null) {
		throw new Error('se está intentando realizar un query sin estar autenticado');
	}

	const q = new URLSearchParams(variables);

	const res = await fetch(`http://localhost:5172/sql?${q}`, {
		method: 'POST',
		headers: {
			Authorization: `Bearer ${token}`,
			Accept: 'application/json',
			'surreal-ns': 'vla',
			'surreal-db': 'tareas'
		},
		body: query
	});

	return await res.json();
}

export function isSignedIn(): boolean {
	return localStorage.getItem('token') !== null;
}

if (browser) {
	(window as any).query = query;
}
