<script>
	import Background from '$lib/components/Background.svelte';
	import Regreso from '$lib/components/Regreso.svelte';
</script>

<!-- Pagina de crear cuenta -->

<Background>
	<Regreso>a</Regreso>

	<main class="flex min-h-screen items-center justify-center">
		<!-- caja principal -->

		<!-- titulo -->

		<div
			class="text center flex flex-col gap-4 rounded-2xl border-2 border-stone-400 bg-neutral-600 p-7 text-xl"
		>
			<h1 class="flex rounded-full border border-zinc-600 bg-gray-700 p-3 text-4xl text-white">
				Nuevo Usuario
			</h1>

			<!-- donde se colocaran las cosas -->
			<input type="" placeholder="Nombre" class="flex rounded bg-slate-900 p-2 text-white" />
			<input type="email" placeholder="Correo" class="flex rounded bg-slate-900 p-2 text-white" />
			<input
				type="password"
				placeholder="Contraseña"
				class="flex rounded bg-slate-900 p-2 text-white"
			/>
			<input
				type="password"
				placeholder="Confirmar Contraseña"
				class="flex rounded bg-slate-900 p-2 text-white"
			/>

			<!-- botones de la parte baja -->

			<div class="flex flex-row space-x-5">
				<a href="/administrar-cuentas" class="flex items-end rounded bg-slate-700 p-2 text-white"
					>Create Account</a
				>
				<h1 class="text-lg font-extralight text-neutral-300">
					|"You have met a terrible fate, haven't you?"
				</h1>
			</div>
		</div>
	</main>
</Background>
