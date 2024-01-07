FROM alpine:3.19.0
RUN apk add --no-cache wget
RUN wget -O llamafile \
    https://huggingface.co/jartine/llava-v1.5-7B-GGUF/resolve/main/llava-v1.5-7b-q4.llamafile?download=true
RUN chmod +x llamafile
ENTRYPOINT ["sh", "./llamafile", "--host", "0.0.0.0"]
