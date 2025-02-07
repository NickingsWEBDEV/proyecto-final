<script lang="ts">
	import type { Snippet } from 'svelte';

	type Props = {
		class?: string;
		children: Snippet;
	};

	const { class: className = '', children }: Props = $props();
</script>

<div class={'bg-amber-200 p-3 shadow-sm shadow-black'}>
	<button class="flex items-end rounded bg-amber-500 p-2 text-white">
		{@render children()}
	</button>
</div>
