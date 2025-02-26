<script>
	import Background from '$lib/components/Background.svelte';
	import Productos from '$lib/components/productos.svelte';
	import Regreso from '$lib/components/Regreso.svelte';

	// bases del contador

	let count = 15;
	const minCount = 0;

	function increment() {
		count++;
	}

	function decrement() {
		if (count > minCount) {
			count--;
		}
	}
</script>

<Background>
	<!-- vuelta al page anterior -->

	<button class="flex flex-col items-center justify-center text-center text-3xl">
		<a
			href="/procesador"
			class="
		  rounded-full border-2 border-lime-200 bg-orange-400 p-2 text-white hover:bg-orange-300"
			><span class="material-symbols-outlined"> arrow_back </span>
		</a>
	</button>

	<!-- titulo -->
	<h1 class="flex justify-center text-white">|</h1>

	<main class="flex min-h-screen items-center justify-center gap-4 rounded-full">
		<div class={'rounded-md bg-orange-400 p-3 shadow-sm shadow-black'}>
			<!-- imagen del articulo -->

			<img
				src="/image/amdCore.jpeg"
				alt="AMD"
				class="flex items-end rounded bg-orange-300 p-2 text-white"
			/>
			<!-- contador -->
			<h1
				class="flex items-center justify-center rounded-full border-2 bg-orange-500 p-2 text-white"
			>
				QTY: {count}
			</h1>

			<!-- texto que describe el articulo -->

			<h1 class="w-full max-w-sm gap-4 bg-orange-400 p-3 text-sm">
				| Esta marca es una de las que mayor demanda poseen, si a este artículo se le agotan las
				existencias escribeme inmediatamente.
			</h1>
		</div>

		<!-- botones para agregar y restar inventario -->
		<div class="flex flex-col gap-4">
			<button
				onclick={increment}
				class="flex rounded bg-orange-400 p-4 text-2xl text-white hover:bg-orange-300"
			>
				+
			</button>
			<button
				onclick={decrement}
				class="flex rounded bg-orange-400 p-4 text-2xl text-white hover:bg-orange-300"
			>
				-
			</button>
		</div>

		<!-- qr code generator -->

		<button class="flex rounded bg-orange-400 p-4 text-white hover:bg-orange-300">
			<a href="artic-amd/qr-amd"> QR Escaner </a>
		</button>
	</main>
</Background>
