<script lang="ts">
	import type { Snippet } from 'svelte';

	type Props = {
		class?: string;
		children: Snippet;
	};

	const { class: className = '', children }: Props = $props();
</script>

<div
	class={'rounded-lg bg-orange-400 p-3 shadow-md shadow-black transition-colors hover:bg-orange-300'}
>
	<button
		class="flex items-end rounded bg-orange-300 p-2 text-white transition-colors hover:bg-orange-200"
	>
		{@render children()}
	</button>
</div>
