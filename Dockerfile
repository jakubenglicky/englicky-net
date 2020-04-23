FROM jakubenglicky/symplify-statie:latest as statie

COPY ./source /statie/source

RUN vendor/bin/statie generate source

FROM httpd:2.4

WORKDIR /usr/local/apache2/htdocs/

COPY --from=statie /statie/output .

EXPOSE 80
