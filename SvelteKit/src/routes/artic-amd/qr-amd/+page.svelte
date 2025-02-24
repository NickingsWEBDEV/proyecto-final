<script>
	import QrCode from '$lib/components/Qr-code.svelte';
</script>

<main class="min-h-screen bg-zinc-800 p-4">
	<!-- vuelve a su pagina anterior -->
	<button class="flex items-start justify-start text-center text-3xl">
		<a
			href="/artic-amd"
			class="rounded-full border-2 border-neutral-600 bg-neutral-500 p-2 text-white hover:bg-neutral-400"
			>«
		</a>
	</button>

	<QrCode>
		<img src="/image/qr_amd.png" alt="QR code de intel" />
	</QrCode>
</main>
