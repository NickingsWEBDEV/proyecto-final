<script>
	import Background from '$lib/components/Background.svelte';
	import Articulos from '$lib/components/Articulos.svelte';
</script>

<Background>
	<a href="/" class="flex">devuelta al OG</a>

	<main class="flex min-h-screen items-center justify-center">
		<div class="flex-cols flex gap-64">
			<!-- caja de objetos -->
			<Articulos>pasta termica</Articulos>
			<Articulos>pasta termica</Articulos>
			<Articulos>pasta termica</Articulos>
		</div>
	</main>
</Background>
