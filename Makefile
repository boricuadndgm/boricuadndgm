.DEFAULT: help

publish:
	hugo


new-content: # hugo new content content/posts/my-first-post.md
	hugo new content "${file_path}"

run:
	hugo server \
		--navigateToChanged \
		--buildDrafts \
		--buildExpired \
		--buildFuture

help:
	hugo --help
