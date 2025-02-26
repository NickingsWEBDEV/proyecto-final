<script>
	import { goto } from '$app/navigation';
	import Articulos from '$lib/components/Articulos.svelte';
	import Background from '$lib/components/Background.svelte';
	import { signOut } from '$lib/surreal';

	function handleClick() {}

	let mostrarErrorGenerico = $state(false);
</script>

<!-- Pagina Principal -->

<main
	style="background: linear-gradient(to bottom, #7f4ca5 20%, #721422 80%);"
	class="flex min-h-screen flex-col"
>
	<form
		onsubmit={async (e) => {
			e.preventDefault();

			try {
				signOut();

				goto('/iniciar-sesion');
			} catch (err) {
				mostrarErrorGenerico = true;
			}
		}}
	>
		<!-- Nombre de la compañia -->

		<ul
			class="flex gap-4 rounded border-2 border-lime-300 bg-orange-400 p-4 text-center text-white shadow-sm shadow-lime-200"
		>
			<div class="text-5xl">PapuTech</div>

			<!-- Boton de la parte superior -->

			<!-- distintos botones -->

			<footer class="flex flex-grow flex-row justify-end gap-5 text-4xl">
				<!-- boton del tutorial -->

				<div class="flex rounded-full border-2 bg-orange-300 p-3 text-white hover:bg-orange-200">
					<a href="/mini-tutorial">
						<span class="material-symbols-outlined"> question_mark </span>
					</a>
				</div>

				<!-- boton de agregar nuevos articulos -->

				<div
					class="flex justify-end gap-5 rounded-full border-2 bg-orange-300 p-3 text-4xl text-white hover:bg-orange-200"
				>
					<a href="/crear-articulo">
						<span class="material-symbols-outlined"> list_alt_add </span>
					</a>
				</div>
				<!-- boton de un listado de todos los articulos -->

				<div
					class="flex justify-end gap-5 rounded-full border-2 bg-orange-300 p-3 text-4xl text-white hover:bg-orange-200"
				>
					<a href="/lista-articulos">
						<span class="material-symbols-outlined"> list </span>
					</a>
				</div>

				<!-- boton para cerrar sesion -->
				<div
					class="flex justify-end gap-5 rounded-full border-2 bg-orange-300 p-3 text-4xl text-white hover:bg-orange-200"
				>
					<button onclick={signOut}>
						<span class="material-symbols-outlined"> logout </span>
					</button>
				</div>
			</footer>
		</ul>

		<!-- Frase -->

		<h1 class="text-col flex p-2 text-xl text-white">|</h1>

		<nav class="text-center text-3xl">
			<!-- disttintos articulos -->

			<div class="flex-cols flex gap-60 p-60 text-center text-3xl">
				<div
					class="rounded-md border-2 bg-orange-400 p-8 shadow-sm shadow-black transition-colors hover:bg-orange-300"
				>
					<a
						href="/procesador"
						class="flex items-end rounded bg-orange-300 p-3 text-white transition-colors hover:bg-orange-400"
						>Procesador</a
					>
				</div>

				<div
					class="rounded-md border-2 bg-orange-400 p-8 shadow-sm shadow-black transition-colors hover:bg-orange-300"
				>
					<a
						href="/ram"
						class="flex items-end rounded bg-orange-300 p-3 text-white transition-colors hover:bg-orange-400"
						>RAM</a
					>
				</div>

				<div
					class="rounded-md border-2 bg-orange-400 p-8 shadow-sm shadow-black transition-colors hover:bg-orange-300"
				>
					<a
						href="/ventilador"
						class="flex items-end rounded bg-orange-300 p-3 text-white transition-colors hover:bg-orange-400"
						>Disipadores</a
					>
				</div>
			</div>
		</nav>
	</form>
</main>
