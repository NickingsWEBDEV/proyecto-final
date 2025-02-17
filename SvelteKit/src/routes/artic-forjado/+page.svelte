<script>
	import Background from '$lib/components/Background.svelte';
	import Productos from '$lib/components/productos.svelte';
	import Regreso from '$lib/components/Regreso.svelte';
</script>

<Background>
	<!-- vuelta al page anterior -->

	<button class="flex flex-col items-center justify-center text-center text-3xl">
		<a
			href="/ventilador"
			class="rounded-full border-2 border-neutral-600 bg-neutral-500 p-2 text-white transition-colors hover:bg-neutral-300"
			>«
		</a>
	</button>

	<!-- titulo -->
	<h1 class="flex justify-start text-xl text-neutral-400">
		|"La venganza no es buena, mata el alma y la envenena" - Don Ramón
	</h1>

	<main class="flex min-h-screen items-center justify-center gap-4 rounded-full">
		<div class={'rounded-md bg-neutral-500 p-3 shadow-sm shadow-black'}>
			<!-- imagen del articulo -->

			<button class="flex items-end rounded bg-slate-700 p-2 text-white">
				"Aqui va una imagen"
			</button>

			<!-- texto que describe el articulo -->

			<h1>• Descripcion del articulo aqui</h1>
		</div>

		<!-- botones para agregar y restar inventario -->
		<div class="flex flex-col-reverse gap-4">
			<button class="flex rounded bg-slate-700 p-4 text-2xl text-white"> + </button>
			<button class="flex rounded bg-slate-700 p-4 text-3xl text-white"> - </button>
		</div>

		<!-- qr code generator -->

		<button class="flex rounded bg-slate-700 p-4 text-white"> QR Escaner </button>
	</main>
</Background>
