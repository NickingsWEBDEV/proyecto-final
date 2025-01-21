<!-- Pagina Principal -->

<!-- Barra superior -->
<div class="flex min-h-screen flex-grow flex-col bg-neutral-400 p-4">
	<nav>
		<!-- Nombre de la compañia -->
		<ul class="flex gap-4 rounded bg-stone-900 text-zinc-300">
			<div class=" text-5xl">Hip-Shop</div>

			<!-- Boton de cuenta y settings -->
			<div class="flex flex-grow justify-end gap-5 text-4xl">
				<li><a href="/administrar-cuentas">Cuenta</a></li>
				<li><a href="/configuracion">Settings</a></li>
			</div>
		</ul>

		<!-- disttintos articulos -->
		<div class="button-container">
			<li>
				<a href="/accesorios" class="button border-2 border-red-500">Accesorios</a>
			</li>

			<li>
				<a href="/placa-base" class="button border-2 border-red-500">Placas Base</a>
			</li>

			<li>
				<a href="/procesador" class="button border-2 border-red-500">Procesador</a>
			</li>

			<li>
				<a href="/ram" class="button border-2 border-red-500">RAM</a>
			</li>

			<li>
				<a href="/disco-duro" class="button border-2 border-red-500">Disco Duro</a>
			</li>

			<li>
				<a href="/ventilador" class="button border-2 border-red-500">Ventilador</a>
			</li>
		</div>
	</nav>
</div>

<!-- Funciones Style -->

<style>
	.button-container {
		display: flex;
		flex-wrap: wrap;
		justify-content: center;
		align-items: center;
		height: 630px;
		gap: 110px;
		width: calc(77.44% - -75px);
	}

	.button {
		width: 30%; /* Ajusta el ancho según tus necesidades */
		margin-bottom: 5px;
		padding: 30px;
		/* Otros estilos para los botones */
	}
</style>
