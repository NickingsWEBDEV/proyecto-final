<script>
	import Background from '$lib/components/Background.svelte';
	import Items from '$lib/components/Items.svelte';
	import Regreso from '$lib/components/Regreso.svelte';
</script>

<main
	class="min-h-screen p-4"
	style="background: linear-gradient(to bottom, #7f4ca5 20%, #721422 80%);"
>
	<!-- vuelta al page anterior -->

	<button class="flex flex-col items-center justify-center text-center text-3xl">
		<a
			href="/"
			class="
	  rounded-full border-2 border-lime-200 bg-orange-400 p-2 text-white hover:bg-orange-300"
			><span class="material-symbols-outlined"> arrow_back </span>
		</a>
	</button>

	<main class="flex min-h-screen flex-col items-center justify-center">
		<!-- background de la caja -->
		<div
			class="flex flex-col gap-7 rounded-2xl border-2 border-lime-300 bg-orange-400 p-7 text-xl shadow shadow-lime-200"
		>
			<h1 class="rounded-md bg-orange-300 p-2 text-center text-3xl text-white">
				Lista de Articulos
			</h1>

			<!-- contenido de la caja -->

			<div
				class="text center border-lime-2x00 flex w-full max-w-sm flex-col gap-4 rounded-2xl border-2 bg-orange-300 p-3 text-xl text-white"
			>
				<Items />
			</div>
		</div>
	</main>
</main>
