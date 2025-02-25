<script>
	import Background from '$lib/components/Background.svelte';
	import Regreso from '$lib/components/Regreso.svelte';
</script>

<!-- Pagina de crear cuenta -->

<Background>
	<Regreso>a</Regreso>

	<main class="flex min-h-screen items-center justify-center">
		<!-- caja principal -->

		<!-- titulo -->

		<div
			class="text center flex flex-col gap-4 rounded-2xl border-2 border-stone-400 bg-neutral-600 p-4 text-xl"
		>
			<h1
				class="flex items-center justify-center rounded-full border border-zinc-600 bg-gray-700 p-3 text-center text-4xl text-white"
			>
				Lista de Articulos
			</h1>

			<!-- donde se colocaran las cosas -->
			<input
				type="text"
				placeholder="•"
				class="flex rounded bg-slate-900 p-2 text-white hover:bg-slate-800"
			/>
		</div>
	</main>
</Background>
