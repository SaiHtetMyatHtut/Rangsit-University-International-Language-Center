<script>
    export let src;
    export const alt = "Profile Picture";
    export const size = 200;
</script>

<div class="bg-white rounded-full h-[{size}px] w-[{size}px] p-2 flex items-center justify-center absolute -ml-[{size/2}px] -mt-[{size/2}px]">
    <div class="w-full h-full rounded-full">
        <img
            src={src}
            alt={alt}
            class="object-cover w-full rounded-full aspect-square"
        />
    </div>
</div>