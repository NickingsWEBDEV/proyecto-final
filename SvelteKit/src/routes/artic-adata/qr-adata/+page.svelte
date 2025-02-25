<script>
	import QrCode from '$lib/components/Qr-code.svelte';
</script>

<main class="min-h-screen bg-zinc-800 p-4">
	<!-- vuelve a su pagina anterior -->
	<button class="flex items-start justify-start text-center text-3xl">
		<a
			href="/artic-adata"
			class="rounded-full border-2 border-neutral-600 bg-neutral-500 p-2 text-white hover:bg-neutral-400"
			><span class="material-symbols-outlined"> arrow_back </span>
		</a>
	</button>

	<QrCode>
		<img src="/image/qr_adata.png" alt="QR code de adata" />
	</QrCode>
</main>
