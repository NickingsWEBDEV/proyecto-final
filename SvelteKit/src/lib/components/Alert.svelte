<script lang="ts">
	import { slide } from 'svelte/transition';

	type Props = { show: boolean; message: string };

	const { show, message }: Props = $props();
</script>

{#if show}
	<div transition:slide class="text white rounded-lg bg-red-500 p-2 text-white">
		<h2 class="text-lg font-bold">Error:</h2>
		<p>{message}.</p>
	</div>
{/if}
