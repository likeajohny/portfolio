<script>
    let hostname = "";
    if (typeof window !== "undefined") {
        hostname = window.location.hostname;
    }
</script>

<span class="text-gradient">{hostname}</span>

<style>
    .text-gradient {
		background-image: var(--accent-gradient);
		-webkit-background-clip: text;
		-webkit-text-fill-color: transparent;
		background-size: 400%;
		background-position: 0;
	}
</style>
