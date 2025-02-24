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
			href="/ventilador"
			class="rounded-full border-2 border-neutral-600 bg-neutral-500 p-2 text-white transition-colors hover:bg-neutral-400"
			>«
		</a>
	</button>

	<!-- titulo -->
	<h1 class="flex justify-start text-xl text-neutral-400">
		|"Es reconfortante saber lo completamente solos, que no estamos".
	</h1>

	<main class="flex min-h-screen items-center justify-center gap-4 rounded-full">
		<div class={'rounded-md bg-neutral-500 p-3 shadow-sm shadow-black'}>
			<!-- imagen del articulo -->

			<img
				src="/image/estam_fin.webp"
				alt="Qualcomm Snapdragon"
				class="flex items-end rounded bg-slate-700 p-2 text-white"
			/>

			<!-- contador -->
			<h1 class="flex items-center justify-center rounded-full border-2 bg-slate-700 p-2">
				QTY: {count}
			</h1>

			<!-- texto que describe el articulo -->

			<h1 class="w-full max-w-sm text-sm">
				| Estos disipadores estan hechos mayormente de cobre, permitiendoles absorber mas calor y a
				mi poder cobrarlos aun mayor precio. Si se llegaran a agotar informar inmediatamente
			</h1>
		</div>

		<!-- botones para agregar y restar inventario -->
		<div class="flex flex-col gap-4">
			<button
				onclick={increment}
				class="flex rounded bg-slate-700 p-4 text-2xl text-white hover:bg-slate-600"
			>
				+
			</button>
			<button
				onclick={decrement}
				class="flex rounded bg-slate-700 p-4 text-2xl text-white hover:bg-slate-600"
			>
				-
			</button>
		</div>

		<!-- qr code generator -->

		<button class="flex rounded bg-slate-700 p-4 text-white hover:bg-slate-600">
			<a href="artic-fin/qr-fin"> QR Escaner</a>
		</button>
	</main>
</Background>
