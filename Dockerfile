FROM jekyll/jekyll:minimal AS builder
COPY . .
RUN ["jekyll", "build"]

FROM nginx:alpine AS runner
COPY --from=builder /srv/jekyll/_site /usr/share/nginx/html