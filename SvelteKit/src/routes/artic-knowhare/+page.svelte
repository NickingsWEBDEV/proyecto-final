<script>
	import Background from '$lib/components/Background.svelte';
	import Productos from '$lib/components/productos.svelte';
	import Regreso from '$lib/components/Regreso.svelte';
</script>

<Background>
	<!-- vuelta al page anterior -->

	<button class="flex flex-col items-center justify-center text-center text-3xl">
		<a
			href="/ram"
			class="
		  rounded-full border-2 border-neutral-600 bg-neutral-500 p-2 text-white transition-colors hover:bg-neutral-300"
			>«
		</a>
	</button>

	<!-- titulo -->
	<h1 class="flex justify-end text-xl text-neutral-400">|"Yo soy Groot" - Groot ☺</h1>

	<main class="flex min-h-screen items-center justify-center gap-4 rounded-full">
		<div class={'rounded-md bg-neutral-500 p-3 shadow-sm shadow-black'}>
			<!-- imagen del articulo -->

			<img
				src="/image/groot.webp"
				alt="Come and get your love"
				class="flex items-end rounded bg-slate-700 p-2 text-white"
			/>

			<!-- texto que describe el articulo -->

			<h1 class="w-full max-w-sm gap-4 bg-slate-600 p-3 text-sm">
				• Esta RAM es una de las mas veloces del mercado, presumiendo su capacidad para "Realizar
				saltos luz" y ser la marca preferida por la NASA. fue muy dificil de conseguir, tuve que
				intercambiar una protesis por solo un set de esas, asi que espero que no la hayas vendido.
			</h1>
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
