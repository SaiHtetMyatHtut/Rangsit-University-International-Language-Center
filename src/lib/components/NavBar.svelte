<script>
	let titles = ['Home', 'Mentor', 'Blog', 'About Us'];
	let index = 0;
	// function for on click
	function handleClickTitle(e) {
		index = e.target.id;
	}
</script>

<div class="flex flex-row w-full bg-white h-[80px] px-[10%]">
	<div class="h-full aspect-[1.8/1]">
		<!-- 2:1 image from copy right free -->
		<img src="images/logo.png" alt="logo" class="w-full h-full" />
	</div>
	<div class="flex flex-row items-center justify-center flex-grow">
		<ul class="space-x-[35px] text-lg font-bold">
			{#each titles as title, i}
				{#if index == i}
					<a class="text-[#FF6124]" href="/" on:click={handleClickTitle} id={i}>{title}</a>
				{:else}
					<a class="text-[#6A6A6A]" href="/" on:click={handleClickTitle} id={i}>{title}</a>
				{/if}
			{/each}
		</ul>
	</div>
	<div class="h-full aspect-[2/1.5] flex justify-normal items-center">
		<button class="bg-[#FF6124] rounded-full w-full text-white py-2"> Log In </button>
	</div>
</div>
