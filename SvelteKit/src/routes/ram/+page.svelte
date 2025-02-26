<script>
	import Background from '$lib/components/Background.svelte';
	import Articulos from '$lib/components/Articulos.svelte';
	import Regreso from '$lib/components/Regreso.svelte';
</script>

<Background>
	<Regreso>s</Regreso>
	<h1 class="flex items-end justify-end p-1 text-xl text-white">|</h1>

	<main class="flex min-h-screen items-center justify-center">
		<div class="flex-cols flex gap-64 text-2xl">
			<!-- caja de objetos -->

			<a href="/artic-kingstone">
				<Articulos>Kingstone</Articulos>
			</a>
			<a href="/artic-adata">
				<Articulos>ADATA</Articulos>
			</a>

			<a href="/artic-knowhare">
				<Articulos>Knowhare</Articulos>
			</a>
			<!-- el de arriba es inventado -->
		</div>
	</main>
</Background>
