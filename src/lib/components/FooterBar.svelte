<script>
	let titles = ['Home', 'Mentor', 'Blog', 'About Us'];
	let supports = ['Student Support', 'RELI Office', 'Terms & Conditions', 'Privacy Policy'];
</script>

<div class="w-full h-[400px] px-[10%] flex flex-col bg-[#F8FAFC]">
	<div class="flex flex-row flex-grow pt-[70px]">
		<div class="flex-[1] flex flex-col items-start">
			<div class="h-[100px] aspect-[1.8/1]">
				<!-- 2:1 image from copy right free -->
				<img src="images/logo.png" alt="logo" class="object-contain w-full h-full" />
			</div>
			<p class="mr-5 text-sm text-justify">
				Rangsit University is a private university in Pathum Thani, Thailand, focusing mainly on
				music, design, Information technology, and public health including independent professions.
			</p>
		</div>
		<div class="flex-[1] flex flex-col space-y-3">
			{#each titles as title, i}
				<a href="/"> <p class="ml-28">{title}</p></a>
			{/each}
		</div>
		<div class="flex-[1] flex flex-col space-y-3">
			{#each supports as title, i}
				<a href="/"><p class="ml-10">{title}</p></a>
			{/each}
		</div>
		<div class="flex-[1] flex flex-col items-center space-y-2">
			<div class="relative bg-white h-[45px] w-[250px] rounded-lg">
				<input
					type="text"
					class="absolute top-0 left-0 w-full h-full px-5 rounded-lg focus:outline-none"
					placeholder="Your Email"
				/>
			</div>
			<button class="bg-[#FF6124] h-[45px] w-[250px] rounded-lg text-white"> Subscribe Now </button>
		</div>
	</div>
	<div class="h-[80px] w-full flex flex-row items-center justify-center">
		© Copyright 2023, All Rights Reserved by Rangsit University. Developed By Sai Htet Myat Htut
	</div>
</div>
