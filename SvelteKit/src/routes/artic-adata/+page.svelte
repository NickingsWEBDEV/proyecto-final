<script>
	import Background from '$lib/components/Background.svelte';
	import Productos from '$lib/components/productos.svelte';

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
			href="/ram"
			class="rounded-full border-2 border-neutral-600 bg-neutral-500 p-2 text-white transition-colors hover:bg-neutral-300"
			>«
		</a>
	</button>

	<!-- titulo -->
	<h1 class="flex justify-end text-xl text-neutral-400">
		|"Aquel que posea un que, puede superar cualquier como"
	</h1>

	<main class="flex min-h-screen items-center justify-center gap-4 rounded-full">
		<div class={'rounded-md bg-neutral-500 p-3 shadow-sm shadow-black'}>
			<!-- imagen del articulo -->
			<img
				src="/image/adata.jpeg"
				alt="come and get your love"
				class="flex items-center justify-center rounded bg-slate-700 p-2 text-white"
			/>

			<!-- cantidad del articulo -->
			<h1 class="flex items-center justify-center rounded-full border-2 bg-slate-700 p-2">
				QTY: {count}
			</h1>

			<!-- texto que describe el articulo -->
			<h1 class="w-full max-w-sm gap-4 bg-slate-600 p-3 text-sm">
				• ADATA era una mis marcas favoritas, hasta que descubri Kingstone y nada nunca fue igual.
				¿Es raro si te digo que solo compraba esa marca porque me gusto su patron de colores colores
				y su mascota?.
			</h1>
		</div>

		<!-- botones para agregar y restar inventario -->
		<div class="flex flex-col gap-4">
			<button
				onclick={increment}
				class=" flex rounded bg-slate-700 p-4 text-2xl text-white hover:bg-slate-600"
			>
				+
			</button>
			<button
				onclick={decrement}
				class="flex rounded bg-slate-700 p-4 text-3xl text-white hover:bg-slate-600"
			>
				-
			</button>
		</div>

		<!-- qr code generator -->

		<button class="flex rounded bg-slate-700 p-4 text-white hover:bg-slate-600">
			<a href="artic-adata/qr-adata"> QR Escaner </a>
		</button>
	</main>
</Background>
