<script lang="ts">
	type Props = {
		class?: string;
		type?: 'text' | 'email' | 'password';
		placeholder: string;
		required?: boolean;
		value?: string;
	};

	let {
		class: className = '',
		type = 'text',
		placeholder,
		required,
		value = $bindable()
	}: Props = $props();
</script>

<input class={`rounded-lg p-4 ${className}`} bind:value {type} {placeholder} {required} />
