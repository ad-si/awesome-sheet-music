.PHONY: update-toc
update-toc:
	bun x markdown-toc \
		--bullets='-' \
		-i \
		readme.md


.PHONY: test
test:
	lychee \
		--max-redirects 0 \
		--require-https \
		--timeout 5 \
		--exclude avid.com/sibelius \
		--exclude gamera.informatik.hsnr.de \
		--exclude newzik.com \
		readme.md
