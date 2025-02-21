.DEFAULT: help

publish:
	hugo


new-content: # hugo new content content/posts/my-first-post.md
	hugo new content "${file_path}"

dev:
	hugo server \
		--navigateToChanged \
		--buildDrafts \
		--buildExpired \
		--buildFuture

run:
	hugo server \
		--cleanDestinationDir \
		--gc \
		--minify

help:
	hugo --help
