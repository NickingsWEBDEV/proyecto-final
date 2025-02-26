<!-- enseña los datos del DB en un componente -->

<script lang="ts">
	import { onMount } from 'svelte';

	let articleNames: string[] = [];

	try {
		onMount(async () => {
			const response = await fetch('/api/articles');
			articleNames = await response.json();
		});
	} catch (err) {
		console.error('so se pudieron enseñar los articulos');
	}
</script>

<h1>Nombres de Artículos</h1>

<ul>
	{#each articleNames as name}
		<li>{name}</li>
	{/each}
</ul>
