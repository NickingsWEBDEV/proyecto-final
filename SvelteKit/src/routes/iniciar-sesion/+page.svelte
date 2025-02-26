<script lang="ts">
	import Background from '$lib/components/Background.svelte';
	import Alert from '$lib/components/Alert.svelte';
	import { signIn } from '$lib/surreal';
	import { goto } from '$app/navigation';

	let email = $state('');
	let password = $state('');
	let mostrarErrorGenerico = $state(false);
</script>

<Background>
	<h1 class="flex items-end justify-end p-2 text-white">|</h1>

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
				class="flex flex-col gap-7 rounded-2xl border-2 border-lime-300 bg-orange-400 p-7 text-xl shadow shadow-lime-200"
			>
				<h1
					class="flex items-center justify-center rounded-full bg-orange-300 p-2 text-4xl text-white"
				>
					Iniciar Sesión
				</h1>

				<!-- donde se colocara la info -->

				<input
					bind:value={email}
					type="email"
					placeholder="Correo"
					class="flex rounded bg-orange-300 p-2 hover:bg-orange-200"
					required
				/>
				<input
					bind:value={password}
					type="password"
					placeholder="Contraseña"
					class="flex rounded bg-orange-300 p-2 hover:bg-orange-200"
					required
				/>
				<Alert show={mostrarErrorGenerico} message="El Correo/Contraseña son inválidos" />
				<!-- boton de la parte baja -->

				<div class="flex flex-row space-x-5">
					<button class="flex items-end rounded bg-orange-300 p-2 text-center hover:bg-orange-200"
						>Login</button
					>
					<a
						href="mailto:browndanthony859@gmail.com"
						class=" rounded-full border-2 border-lime-200 bg-orange-500 p-3 text-2xl text-white shadow-sm shadow-black hover:bg-orange-400"
					>
						<span class="material-symbols-outlined"> person </span></a
					>
				</div>
			</div>
		</form>
	</main>
</Background>
