<script>
	import Background from '$lib/components/Background.svelte';
</script>

<!-- Pagina de crear cuenta -->

<Background>
	<main class="flex min-h-screen items-center justify-center">
		<!-- caja principal -->

		<!-- titulo -->

		<div
			class="text center flex flex-col gap-4 rounded-2xl border-2 border-stone-400 bg-stone-500 p-7 text-xl"
		>
			<h1
				class="flex items-center justify-center rounded-full bg-amber-300 p-3 text-4xl text-white"
			>
				Nuevo Usuario
			</h1>

			<!-- donde se colocaran las cosas -->
			<input type="" placeholder="Nombre" class="flex rounded bg-amber-200 p-2" />
			<input type="email" placeholder="Correo" class="flex rounded bg-amber-200 p-2" />
			<input type="password" placeholder="Contraseña" class="flex rounded bg-amber-200 p-2" />
			<input
				type="password"
				placeholder="Confirmar Contraseña"
				class="flex rounded bg-amber-200 p-2"
			/>

			<!-- botones de la parte baja -->

			<div class="flex flex-row space-x-5">
				<a href="/administrar-cuentas" class="flex items-end rounded bg-amber-500 p-2 text-white"
					>Create Account</a
				>
			</div>
		</div>
		<a href="/">devuelta al OG</a>
	</main>
</Background>
