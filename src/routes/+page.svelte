<script>
	import RoundProfile from '../lib/components/RoundProfile.svelte';
	import PostSmall from '../lib/components/Blogs/PostSmall.svelte';
	const RoundProfileSize = 200;
</script>

<section class="relative h-[600px] w-full bg-red-100">
	<img
		src="images/background.jpg"
		alt="background"
		class="absolute top-0 left-0 object-cover object-center w-full h-full brightness-50"
	/>
	<div
		class="absolute top-0 left-0 flex flex-col items-start justify-center w-full h-full px-[10%] space-y-[20px]"
	>
		<p class="text-2xl font-bold text-white">Rangsit University</p>
		<h1 class="text-5xl font-bold text-white max-w-[500px]">Welcome to RELI Peer Mentor Program</h1>
		<p class="text-base font-bold text-gray-100">
			We, Mentors are here to help you internationalize
		</p>
		<div class="flex w-[450px] h-[50px] flex-row rounded-full bg-white">
			<input
				class="flex-grow h-full pl-5 rounded-s-full focus:outline-none"
				placeholder="Your Email To Get Updated"
				type="text"
			/>
			<div class="p-1">
				<button class="px-5 text-sm text-white h-full rounded-full bg-[#FF6124]"
					>GET NEWS LETTERS</button
				>
			</div>
		</div>
	</div>
</section>
<section class="h-[350px] w-full flex flex-row px-[10%] bg-white">
	<div class="flex flex-row items-center justify-start w-[500px]">
		<div class="h-[300px] aspect-[1.2/1]">
			<img src="images/AJEddie.webp" alt="AJ Eddie" class="object-cover w-full h-full rounded" />
		</div>
	</div>
	<div class="flex-grow">
		<div class="flex flex-col w-[500px] justify-center h-full">
			<p class="text-justify">
				I am an accomplished English lecturer with over 15 years teaching experience in both
				Thailand and Japan. In addition to that, I have adept English academic writing skills and
				have been published in scholarly academic journals in both TCI-indexed and Scopus-indexed
				journals.
			</p>
			<div class="flex flex-row h-[50px] items-center space-x-5">
				<p class="text-lg font-bold">Eddie Bacon</p>
				<p class="text-">Professor at</p>
				<div class="h-full aspect-[1.8/1]">
					<!-- 2:1 image from copy right free -->
					<img src="images/logo.png" alt="logo" class="w-full h-full" />
				</div>
			</div>
		</div>
	</div>
</section>

<section class="w-full bg-[#F1F5F9]">
	<div class="flex flex-col items-center justify-start py-12 space-y-3">
		<p class="text-2xl font-bold text-center">Meet Our Team</p>
		<p class="text-center w-[400px] text-sm">
			Clarity gives you the blocks & components you need to create a truly professional website,
			landing page or admin panel for your SaaS.
		</p>
	</div>

	<div class="relative h-[250px] overflow-hidden">
		<div class="top-[70%] left-[30%] absolute w-[{RoundProfileSize}px] h-[{RoundProfileSize}px]">
			<RoundProfile src="images/AJEddie.webp" size={RoundProfileSize} />
		</div>
		<div class="top-[70%] left-[70%] absolute w-[{RoundProfileSize}px] h-[{RoundProfileSize}px]">
			<RoundProfile src="images/AJEddie.webp" size={RoundProfileSize} />
		</div>
		<div class="top-[60%] left-[40%] absolute w-[{RoundProfileSize}px] h-[{RoundProfileSize}px]">
			<RoundProfile src="images/AJEddie.webp" size={RoundProfileSize} />
		</div>
		<div class="top-[60%] left-[60%] absolute w-[{RoundProfileSize}px] h-[{RoundProfileSize}px]">
			<RoundProfile src="images/AJEddie.webp" size={RoundProfileSize} />
		</div>
		<div class="top-[45%] left-[50%] absolute w-[{RoundProfileSize}px] h-[{RoundProfileSize}px]">
			<RoundProfile src="images/AJEddie.webp" size={RoundProfileSize} />
		</div>
	</div>
</section>

<section class="w-full px-[10%] py-[100px]">
	<div class="w-full bg-[#F1F5F9] rounded-2xl p-10 flex flex-col items-center space-y-3">
		<p class="text-xl font-bold">Get Our News</p>
		<p class="text-sm w-[400px] text-center text-gray-600">Subscribe to learn about new product features, the latest in technology, solutions, and updates.</p>
		<div class="w-[400px] h-[50px]">
			<input type="text" class="w-full h-full px-5 rounded-lg focus:outline-none" placeholder="Let's us give you updated">
		</div>
		<button class="bg-[#FF6124] h-[45px] w-[250px] rounded-lg text-white"> Subscribe Now </button>
	</div>
</section>

<section class="w-full px-[10%] py-[100px]">
	<PostSmall />
</section>
