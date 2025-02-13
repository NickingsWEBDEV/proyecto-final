<script>
	import Background from '$lib/components/Background.svelte';
</script>

<Background>
	<!-- boton para volver -->
	<a
		href="/"
		class="gap-4 rounded-full border-2 border-stone-200 bg-amber-400 p-4 text-6xl text-white">«</a
	>

	<main class="flex min-h-screen flex-col items-center justify-center">
		<!-- background de la caja -->
		<div class="flex flex-col gap-3 rounded-sm border-stone-400 bg-stone-500 p-6">
			<h1 class="rounded-md bg-amber-300 p-2 text-3xl text-white">Administrador de Cuentas</h1>

			<!-- contenido de la caja -->

			<div
				class="text center flex flex-col gap-4 rounded-2xl border-2 border-stone-400 bg-amber-300 p-7 text-xl"
			></div>
			<!-- botones de la parte baja -->

			<div class="items-star flex justify-start">
				<a
					href="/crear-cuenta"
					class=" border-2 border-stone-200 bg-amber-400 p-2 text-2xl text-white">+</a
				>
			</div>
		</div>
	</main>
</Background>
