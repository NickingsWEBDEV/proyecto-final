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
		  rounded-full border-2 border-neutral-600 bg-neutral-500 p-2 text-white hover:bg-neutral-400"
			><span class="material-symbols-outlined"> arrow_back </span>
		</a>
	</button>

	<!-- titulo -->
	<h1 class="flex justify-center text-neutral-400">
		|"You're either perfect or you're not me"  - Perfect Cell
	</h1>

	<main class="flex min-h-screen items-center justify-center gap-4 rounded-full">
		<div class={'rounded-md bg-neutral-500 p-4 shadow-sm shadow-black'}>
			<!-- imagen del articulo -->

			<img
				src="/image/qualcomm.jpeg"
				alt="Qualcomm Snapdragon"
				class="flex items-end rounded bg-slate-700 p-2 text-white"
			/>

			<!-- cantidad del articulo -->
			<h1 class="flex items-center justify-center rounded-full border-2 bg-slate-700 p-2">
				QTY: {count}
			</h1>

			<!-- texto que describe el articulo -->

			<h1 class="w-full max-w-sm gap-4 bg-slate-600 p-3 text-sm text-white">
				• rara vez entran tecnicos a la tienda, pero las pocas veces que llegan suelen llevarse
				varios de estos. Si se llegan a agotar informar inmediatamente.
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
			<a href="artic-qualcomm/qr-qualcomm"> QR Escaner </a>
		</button>
	</main>
</Background>
