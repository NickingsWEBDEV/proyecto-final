<script lang="ts">
	import type { Snippet } from 'svelte';

	type Props = {
		class?: string;
		children: Snippet;
	};

	const { class: className = '', children }: Props = $props();
</script>

<div class={'bg-amber-200 p-3 shadow-sm shadow-black'}>
	{@render children()}
</div>
