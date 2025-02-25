<script>
	import Articulos from '$lib/components/Articulos.svelte';
	import Background from '$lib/components/Background.svelte';
</script>

<!-- Pagina Principal -->

<main class="flex min-h-screen flex-col bg-zinc-800">
	<!-- Nombre de la compañia -->

	<ul
		class="flex gap-4 rounded border-2 border-stone-700 bg-stone-900 p-4 text-center text-zinc-300"
	>
		<div class="text-5xl">Hip-Shop</div>

		<!-- Boton de la parte superior -->

		<!-- distintos botones -->

		<footer class="flex flex-grow flex-row justify-end gap-5 text-4xl">
			<!-- boton del tutorial -->

			<div class="flex rounded-full border-2 bg-neutral-600 p-3 hover:bg-neutral-500">
				<a href="/mini-tutorial">
					<span class="material-symbols-outlined"> question_mark </span>
				</a>
			</div>

			<!-- boton de agregar nuevos articulos -->

			<div
				class="flex justify-end gap-5 rounded-full border-2 bg-neutral-600 p-3 text-4xl hover:bg-neutral-500"
			>
				<a href="/crear-articulo">
					<span class="material-symbols-outlined"> list_alt_add </span>
				</a>
			</div>
			<!-- boton de un listado de todos los articulos -->

			<div
				class="flex justify-end gap-5 rounded-full border-2 bg-neutral-600 p-3 text-4xl hover:bg-neutral-500"
			>
				<a href="/lista-articulos">
					<span class="material-symbols-outlined"> list </span>
				</a>
			</div>
		</footer>
	</ul>

	<!-- Frase -->

	<h1 class="text-col flex p-2 text-neutral-400">
		|"The world still holds infinite posibilities, that you are yet to know"
	</h1>

	<nav class="text-center text-3xl">
		<!-- disttintos articulos -->

		<div class="flex-cols flex gap-60 p-60 text-center text-3xl">
			<div
				class="rounded-md border-2 bg-neutral-600 p-8 shadow-sm shadow-black transition-colors hover:bg-gray-500"
			>
				<a
					href="/procesador"
					class="flex items-end rounded bg-gray-500 p-3 text-white transition-colors hover:bg-gray-400"
					>Procesador</a
				>
			</div>

			<div
				class="rounded-md border-2 bg-neutral-600 p-8 shadow-sm shadow-black transition-colors hover:bg-gray-500"
			>
				<a
					href="/ram"
					class="flex items-end rounded bg-gray-500 p-3 text-white transition-colors hover:bg-gray-400"
					>RAM</a
				>
			</div>

			<div
				class="rounded-md border-2 bg-neutral-600 p-8 shadow-sm shadow-black transition-colors hover:bg-gray-500"
			>
				<a
					href="/ventilador"
					class="flex items-end rounded bg-gray-500 p-3 text-white transition-colors hover:bg-gray-400"
					>Disipadores</a
				>
			</div>
		</div>
	</nav>
</main>
