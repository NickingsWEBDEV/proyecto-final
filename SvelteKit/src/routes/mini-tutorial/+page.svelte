<script>
	import Background from '$lib/components/Background.svelte';
	import Regreso from '$lib/components/Regreso.svelte';
</script>

<Background>
	<!-- boton para volver -->

	<Regreso>a</Regreso>

	<!-- <p class="flex flex-col items-center p-2 text-center text-xl text-neutral-500"> -->
	<!-- |“No tenemos absolutamente ninguna empatía para ustedes, por lo que no pedimos empatía de ustedes para -->
	<!-- nosotros. Cuando llegue nuestro turno no haremos ninguna excusa para el horror” - Karl Marx -->
	<!-- </p> -->

	<main class="flex min-h-screen flex-col items-center justify-center">
		<!-- background de la caja -->
		<div class="flex flex-col gap-3 rounded-md border-stone-400 bg-neutral-600 p-8">
			<h1 class="rounded-md bg-neutral-800 p-2 text-3xl text-white">Soporte Explicatorio</h1>

			<!-- contenido de la caja -->

			<div
				class="text center flex w-full max-w-sm flex-col gap-4 rounded-2xl border-2 border-stone-400 bg-slate-600 p-3 text-sm text-white"
			>
				• Hola esta es una guia creada por tu jefe, si entrastes a esta pestaña es porque,
				seguramente, no entendistes la explicacion de lo que debes de hacer exactamente, asi qeu
				estoy aqui para asistirte. Al terminar tu jornada laboral en el local lo ultimo que debes de
				hacer es recontear la mercancia, ya sea que se vendio o llego un camion de carga a
				rebastecerla.
			</div>

			<div
				class="text center flex w-full max-w-sm flex-col gap-4 rounded-2xl border-2 border-stone-400 bg-slate-600 p-3 text-sm text-white"
			>
				• Con "+" puedes agregar mas mercancia, mientras que con "-" la puedes disminuir. Utiliza el
				"-" cuando un cliente compre ese articulo y el "+" cuando el camion llegue con ese articulo
				en especifico.
			</div>

			<div
				class="text center flex w-full max-w-sm flex-col gap-4 rounded-2xl border-2 border-stone-400 bg-slate-600 p-3 text-sm text-white"
			>
				• Si notas que nos estamos quedando sin algun articulo en especifico, deja un mensaje en el
				numero de abajo, es mi buzon personal y yo me ocupare de encargar una nueva orden de ese
				articulo. Y en caso de haya ocurrido un error en el sistema, el correo del creador del
				sistema esta a mano para consultas.
			</div>

			<!-- botones de la parte baja -->
			<footer class="flex justify-center gap-2">
				<div class="items-star flex justify-start">
					<a
						href="tel:+50687342871"
						class=" rounded-full border-2 border-stone-500 bg-neutral-700 p-3 text-2xl text-white shadow-sm shadow-black hover:bg-neutral-600"
					>
						<span class="material-symbols-outlined"> call </span></a
					>
				</div>

				<div class="items-star flex justify-start">
					<a
						href="mailto:browndanthony859@gmail.com"
						class=" rounded-full border-2 border-stone-500 bg-neutral-700 p-3 text-2xl text-white shadow-sm shadow-black hover:bg-neutral-600"
					>
						<span class="material-symbols-outlined"> person </span></a
					>
				</div>
			</footer>
		</div>
	</main>
</Background>
