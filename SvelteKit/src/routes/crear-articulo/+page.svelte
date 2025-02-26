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
			class="text center flex flex-col gap-4 rounded-2xl border-2 border-lime-200 bg-orange-400 p-4 text-xl"
		>
			<h1
				class="flex items-center justify-center rounded-full border border-lime-200 bg-orange-300 p-3 text-center text-4xl text-white"
			>
				Nuevo Sub-Artículo
			</h1>

			<!-- donde se colocaran las cosas -->
			<input
				type="text"
				placeholder="Artículo"
				class="flex rounded bg-orange-300 p-2 hover:bg-orange-200"
			/>

			<input
				type="text"
				placeholder="Descripción"
				class="flex rounded bg-orange-300 p-2 hover:bg-orange-200"
			/>
			<input
				type="text"
				placeholder="Precio (No mas de 999.99)"
				class="flex rounded bg-orange-300 p-2 hover:bg-orange-200"
			/>

			<!-- botones de la parte baja -->

			<div class="flex flex-row space-x-5">
				<a href="/" class="flex items-end rounded bg-orange-300 p-2 text-white hover:bg-orange-200"
					><span class="material-symbols-outlined"> add </span></a
				>
				<h1 class="text-lg font-extralight text-white">|</h1>
			</div>
		</div>
	</main>
</Background>
