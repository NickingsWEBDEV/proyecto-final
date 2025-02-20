<script lang="ts">
	import type { Snippet } from 'svelte';

	type Props = {
		class?: string;
		children: Snippet;
	};

	const { class: className = '', children }: Props = $props();
</script>

<div class={'flex flex-col items-center gap-4 rounded  p-20 text-white'}>
	{@render children()}
</div>
