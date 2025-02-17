<script>
	import Background from '$lib/components/Background.svelte';
	import Articulos from '$lib/components/Articulos.svelte';
	import Regreso from '$lib/components/Regreso.svelte';
</script>

<Background>
	<a href="/procesador">
		<Regreso>s</Regreso>
	</a>

	<h1 class="flex items-end justify-end p-1 text-xl text-neutral-400">
		|"Pienso, luego existo" -René Descartes
	</h1>

	<main class="flex min-h-screen items-center justify-center">
		<div class="flex-cols flex gap-64 text-2xl">
			<!-- caja de objetos -->
			<a href="/artic-intel">
				<Articulos>Intel</Articulos>
			</a>

			<a href="/artic-qualcomm">
				<Articulos>Qualcomm</Articulos>
			</a>
			<a href="/artic-amd">
				<Articulos>AMD</Articulos>
			</a>
		</div>
	</main>
</Background>
