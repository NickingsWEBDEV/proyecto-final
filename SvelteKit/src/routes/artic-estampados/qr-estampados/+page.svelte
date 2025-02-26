<script>
	import QrCode from '$lib/components/Qr-code.svelte';
</script>

<main
	class="min-h-screen p-4"
	style="background: linear-gradient(to bottom, #7f4ca5 20%, #721422 80%);"
>
	<!-- vuelve a su pagina anterior -->
	<button class="flex items-start justify-start text-center text-3xl">
		<a
			href="/artic-estampados"
			class="rounded-full border-2 border-lime-200 bg-orange-400 p-2 text-white hover:bg-orange-300"
			><span class="material-symbols-outlined"> arrow_back </span>
		</a>
	</button>

	<QrCode>
		<img src="/image/qr_estampados.png" alt="QR code de estampados" />
	</QrCode>
</main>
