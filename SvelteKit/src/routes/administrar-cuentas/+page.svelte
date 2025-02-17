<script>
	import Background from '$lib/components/Background.svelte';
	import Regreso from '$lib/components/Regreso.svelte';
</script>

<Background>
	<!-- boton para volver -->

	<Regreso>a</Regreso>

	<p class="flex flex-col items-center p-2 text-center text-xl text-neutral-500">
		|“No tenemos absolutamente ninguna empatía para ustedes, por lo que no pedimos empatía de
		ustedes para nosotros. Cuando llegue nuestro turno no haremos ninguna excusa para el horror” -
		Karl Marx
	</p>

	<main class="flex min-h-screen flex-col items-center justify-center">
		<!-- background de la caja -->
		<div class="flex flex-col gap-3 rounded-md border-stone-400 bg-neutral-600 p-8">
			<h1 class="rounded-md bg-neutral-800 p-2 text-3xl text-white">Administrador de Cuentas</h1>

			<!-- contenido de la caja -->

			<div
				class="text center flex flex-col gap-4 rounded-2xl border-2 border-stone-400 bg-neutral-500 p-7 text-xl"
			></div>
			<!-- botones de la parte baja -->

			<div class="items-star flex justify-start">
				<a
					href="/crear-cuenta"
					class=" rounded-full border-2 border-stone-500 bg-neutral-700 p-2 text-2xl text-white"
					>+</a
				>
			</div>
		</div>
	</main>
</Background>
