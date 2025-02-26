<script lang="ts">
	import type { Snippet } from 'svelte';

	type Props = {
		class?: string;
		children: Snippet;
	};

	const { class: className = '', children }: Props = $props();
</script>

<div class={'p-4'} style="background: linear-gradient(to bottom, #7f4ca5 20%, #721422 80%);">
	{@render children()}
</div>
