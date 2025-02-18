<script>
	import { onMount } from 'svelte';
	import Surreal from 'surrealdb.js';

	let count = 64;

	// Configura la conexión a tu servidor local de SurrealDB
	const db = new Surreal({
		url: 'http://localhost:8000/rpc',
		namespace: 'admin.de Articulos',
		database: 'ticulo'
	});

	onMount(async () => {
		// Inicia sesión en SurrealDB (usuario y contraseña de tu servidor)
		await db.signin({
			user: 'papush', // Cambia esto si usas otro usuario
			pass: 'root' // Cambia esto si usas otra contraseña
		});

		// Selecciona la base de datos y el namespace
		await db.use('admin.de Articulos', 'ticulo'); // Cambia 'test' por tu namespace y base de datos

		// Obtener el valor actual del contador
		const result = await db.select('counter');
		if (result.length > 0) {
			count = result[0].value;
		} else {
			// Si no existe, crear un nuevo contador
			await db.create('counter', { value: 0 });
		}
	});

	const increment = async () => {
		count += 1;
		await db.change('counter', { value: count });
	};

	const decrement = async () => {
		count -= 1;
		await db.change('counter', { value: count });
	};
</script>

<main>
	<h1>Contador: {count}</h1>
	<button on:click={increment}>Incrementar</button>
	<button on:click={decrement}>Decrementar</button>
</main>
