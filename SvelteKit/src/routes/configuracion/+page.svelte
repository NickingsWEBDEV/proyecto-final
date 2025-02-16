<script>
	import Background from '$lib/components/Background.svelte';
	import Productos from '$lib/components/productos.svelte';
	import Regreso from '$lib/components/Regreso.svelte';
</script>

<Background>
	<Regreso>helo</Regreso>

	<main class="flex min-h-screen items-center justify-center gap-4">
		<div class={'bg-amber-200 p-3 shadow-sm shadow-black'}>
			<!-- imagen del articulo -->

			<button class="flex items-end rounded bg-amber-500 p-2 text-white">
				"Aqui va una imagen"
			</button>

			<!-- texto que describe el articulo -->

			<h1>• Descripcion del articulo aqui</h1>
		</div>

		<!-- botones para agregar y restar inventario -->
		<div class="flex flex-col-reverse gap-4">
			<button class="flex rounded bg-amber-500 p-4 text-white"> + </button>
			<button class="flex rounded bg-amber-500 p-4 text-white"> - </button>
		</div>

		<!-- qr code generator -->

		<button class="flex rounded bg-amber-500 p-4 text-white"> QR Escaner </button>
	</main>
</Background>
