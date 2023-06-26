<script>
	import '../app.css';
	import FooterBar from '../lib/components/FooterBar.svelte';
	import NavBar from '../lib/components/NavBar.svelte';
</script>

<div class="flex flex-col w-screen min-h-screen">
	<NavBar />
    <div class="flex-grow w-full">
        <slot />
    </div>
	<FooterBar />
</div>
