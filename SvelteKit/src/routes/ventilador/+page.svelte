<script>
	import Background from '$lib/components/Background.svelte';
	import Articulos from '$lib/components/Articulos.svelte';
	import Regreso from '$lib/components/Regreso.svelte';
</script>

<Background>
	<Regreso>s</Regreso>
	<h2 class="p-2 text-center text-xl text-white">|</h2>
	<main class="flex min-h-screen items-center justify-center">
		<div class="flex-cols flex gap-64 text-2xl">
			<!-- caja de objetos -->

			<a href="/artic-estampados">
				<Articulos>Disipadores Estampados</Articulos>
			</a>

			<a href="artic-forjado">
				<Articulos>Disipadores Forjados</Articulos>
			</a>
			<a href="artic-fin">
				<Articulos>Disipadores Skived-fin</Articulos>
			</a>
		</div>
	</main>
</Background>
