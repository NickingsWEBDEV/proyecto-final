<script lang="ts">
	import Background from '$lib/components/Background.svelte';
	import { goto } from '$app/navigation';

	let correo = $state('');
	let contrasena = $state('');
	let mostrarErrorGenerico = $state(false);
</script>

<!-- caja principal -->
<Background>
	<main class="flex min-h-screen items-center justify-center">
		<form
			class="flex flex-col gap-2"
			onsubmit={async (e) => {
				e.preventDefault();

				try {
					//await signIn(correo, contrasena);

					goto('/');
				} catch (err) {
					mostrarErrorGenerico = true;
				}

				goto('/');
			}}
		>
			<!-- titulo -->

			<div class="flex flex-col gap-7 rounded-2xl border-2 border-lime-400 bg-lime-400 p-7 text-xl">
				<h1
					class="flex items-center justify-center rounded-full bg-gray-800 p-2 text-4xl text-white"
				>
					Iniciar Sesión
				</h1>

				<!-- donde se colocara la info -->

				<input type="email" placeholder="Correo" class="flex rounded bg-slate-900 p-2" />
				<input type="password" placeholder="Contraseña" class="flex rounded bg-slate-900 p-2" />

				<!-- boton de la parte baja -->

				<div class="flex flex-row space-x-5">
					<button class="flex items-end rounded bg-gray-800 p-2 text-white">Login</button>
				</div>
			</div>
		</form>
	</main>
</Background>
