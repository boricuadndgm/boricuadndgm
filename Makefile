.DEFAULT: help

publish:
	hugo \
		--gc \
		--minify

## file_path="${file_path}" make new-content

new-content: # hugo new content content/posts/my-first-post.md
	hugo new content "${file_path}"

## hugo new content --contentDir content/posts --kind session0 "${file_path}"

# file_path="my-first-post.md" make new-content


# Makefile
# file_path ?= ""
# content_dir ?= "content/posts"
# kind ?= "session0"

# new-content:
#     @if [ -z "$(file_path)" ]; then \
#         echo "Error: file_path is not set"; \
#         exit 1; \
#     fi
#     hugo new content --contentDir $(content_dir) --kind $(kind) "$(file_path)"


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
