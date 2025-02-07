<script>
	import Background from '$lib/components/Background.svelte';
	import Articulos from '$lib/components/Articulos.svelte';
</script>

<!-- experimento,espero funcione -->

<!-- <enhanced:img src="./path/to/your/image.jpg" alt="An alt text" /> -->

<!-- cajas -->

<Background>
	<main class="flex min-h-screen items-center justify-center">
		<div class="flex-cols flex gap-64">
			<!-- caja de objetos -->
			<div class="bg-amber-200 p-3 shadow-sm shadow-black">
				<button class="flex items-end rounded bg-amber-500 p-2 text-white">Pasta Termica</button>
			</div>

			<div class="bg-amber-200 p-3 shadow-sm shadow-black">
				<button class="flex items-end rounded bg-amber-500 p-2 text-white">Pasta Termica</button>
			</div>

			<div class="bg-amber-200 p-3 shadow-sm shadow-black">
				<button class="flex items-end rounded bg-amber-500 p-2 text-white">Pasta Termica</button>
			</div>
			<Articulos><h1></h1></Articulos>
		</div>
	</main>
</Background>
