<script lang="ts">
	import type { Snippet } from 'svelte';

	type Props = {
		class?: string;
		children: Snippet;
	};

	const { class: className = '', children }: Props = $props();
</script>

<div
	class={'rounded-lg bg-neutral-500 p-3 shadow-md shadow-black transition-colors hover:bg-neutral-400'}
>
	<button
		class="flex items-end rounded bg-gray-400 p-2 text-white transition-colors hover:bg-gray-300"
	>
		{@render children()}
	</button>
</div>
