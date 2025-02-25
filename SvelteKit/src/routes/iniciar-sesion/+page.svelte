<script lang="ts">
	import Background from '$lib/components/Background.svelte';
	import { goto } from '$app/navigation';
	import { signIn } from '$lib/surreal';
	import Alert from '$lib/components/Alert.svelte';

	let email = $state('');
	let password = $state('');
	let mostrarErrorGenerico = $state(false);
</script>

<Background>
	<h1 class="flex items-end justify-end p-2 text-neutral-500">
		|"Failure is acceptable, giving up is not".
	</h1>

	<!-- forma de iniciar sesion -->
	<main class="flex min-h-screen items-center justify-center">
		<form
			class="flex flex-col gap-2"
			onsubmit={async (e) => {
				e.preventDefault();

				try {
					await signIn(email, password);

					goto('/');
				} catch (err) {
					mostrarErrorGenerico = true;
				}
			}}
		>
			<!-- caja principal -->
			<div
				class="flex flex-col gap-7 rounded-2xl border-2 border-neutral-400 bg-neutral-600 p-7 text-xl shadow-md shadow-white"
			>
				<h1
					class="flex items-center justify-center rounded-full bg-gray-800 p-2 text-4xl text-white"
				>
					Iniciar Sesión
				</h1>

				<!-- donde se colocara la info -->

				<input
					bind:value={email}
					type="email"
					placeholder="Correo"
					class="flex rounded bg-slate-900 p-2 text-white"
					required
				/>
				<input
					bind:value={password}
					type="password"
					placeholder="Contraseña"
					class="flex rounded bg-slate-900 p-2 text-white"
					required
				/>
				<Alert show={mostrarErrorGenerico} message="El Correo/Contraseña son inválidos" />
				<!-- boton de la parte baja -->

				<div class="flex flex-row space-x-5">
					<button class="flex items-end rounded bg-gray-800 p-2 text-white">Login</button>
				</div>
			</div>
		</form>
	</main>
</Background>
