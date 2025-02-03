<script lang="ts">
	import type { Snippet } from 'svelte';

	type Props = {
		kind?: Kind;
		as?: As;
		children?: Snippet;
	};

	type Kind = 'primary' | 'secondary';
	type As = 'button' | 'a';
	const { kind = 'primary', as = 'button', children }: Props = $props();
</script>

<svelte:element this={as}>
	{#if children}
		{@render children()}
	{/if}
</svelte:element>
