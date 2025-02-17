<script lang="ts">
	import type { Snippet } from 'svelte';

	type Props = {
		class?: string;
		children: Snippet;
	};

	const { class: className = '', children }: Props = $props();
</script>

<div class={'bg-amber-200 p-3 shadow-sm shadow-black'}>
	<!-- imagen del articulo -->

	<button class="flex items-end rounded bg-amber-500 p-2 text-white"> "Aqui va una imagen" </button>

	<!-- texto que describe el articulo -->

	<h1>• Descripcion del articulo aqui</h1>
</div>

<!-- botones para agregar y restar inventario -->
<div class="flex flex-col-reverse gap-4">
	<button class="flex rounded bg-amber-500 p-4 text-white"> + </button>
	<button class="flex rounded bg-amber-500 p-4 text-white"> - </button>
</div>

<!-- qr code generator -->

<button class="flex rounded bg-amber-500 p-4 text-white"> QR Escaner </button>
