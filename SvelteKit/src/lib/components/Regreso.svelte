<script lang="ts">
	import type { Snippet } from 'svelte';

	type Props = {
		class?: string;
		children: Snippet;
	};

	const { class: className = '', children }: Props = $props();
</script>

<button class="flex flex-col items-center justify-center text-center text-3xl">
	<a
		href="/"
		class="
	  rounded-full border-2 border-stone-200 bg-amber-400 p-2 text-white transition-colors hover:bg-amber-200"
		>«
	</a>
</button>
