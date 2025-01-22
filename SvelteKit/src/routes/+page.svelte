<!-- Pagina Principal -->

<!-- color del fondo -->
<div class="flex min-h-screen flex-grow flex-col bg-neutral-300">
	<nav>
		<!-- Nombre de la compañia -->
		<ul class="flex gap-4 rounded bg-stone-900 p-4 text-center text-zinc-300">
			<div class="text-5xl">Hip-Shop</div>

			<!-- Boton de cuenta y settings -->
			<div class="flex flex-grow flex-row justify-end gap-5 text-4xl">
				<a href="/administrar-cuentas">Cuenta</a>
				<a href="/configuracion">Settings</a>
			</div>
		</ul>

		<!-- bienvenida y el nombre de usuario -->
		<div class="flex justify-center p-3">
			<h1 class=" w-36 border border-stone-900 text-center text-3xl">Welcome User</h1>
		</div>
		<!-- disttintos articulos -->
		<div class="button-container p-10 text-center text-3xl">
			<a href="/accesorios" class="button border-2 border-red-500">Accesorios</a>

			<a href="/placa-base" class="button border-2 border-red-500">Placas Base</a>

			<a href="/procesador" class="button border-2 border-red-500">Procesador</a>

			<a href="/ram" class="button border-2 border-red-500">RAM</a>

			<a href="/disco-duro" class="button border-2 border-red-500">Disco Duro</a>

			<a href="/ventilador" class="button border-2 border-red-500">Ventilador</a>
		</div>
	</nav>
</div>

<!-- Funciones Style -->

<style>
	.button-container {
		display: flex;
		flex-wrap: wrap;
		justify-content: right;
		align-items: center;
		height: 450px;
		gap: 80px;
		width: calc(55.44% - -350px);
	}

	.button {
		width: 20%; /* tamañ del boton desde adentro */
		margin-bottom: 5px;
		padding: 50px;
		/* Otros estilos para los botones */
	}
</style>
