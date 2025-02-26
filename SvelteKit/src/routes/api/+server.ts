import { json } from '@sveltejs/kit';
import { connect, db } from '$lib/item';

// obtiene la info de la base de datos

export async function GET() {
	try {
		await connect();
		const articles = await db.select('item');

		return json(articles.map((article: any) => article.name));
	} catch (err) {
		console.error('no se pudo enseñar los datos');
	}
}
