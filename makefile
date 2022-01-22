build:
	deno run --allow-net --allow-read=./ --allow-write --unstable ./main.ts docs

serve:
	deno run --allow-net --allow-read=./ --allow-env https://deno.land/std/http/file_server.ts _site

deploy-vercel:
	curl -fsSL https://deno.land/x/install/install.sh | sh
	/vercel/.deno/bin/deno run --allow-read --allow-write --allow-env --allow-net --unstable ./main.ts docs
