FROM golang:1.17.7-alpine
# アップデートとgitのインストール！！
RUN apk update
# appディレクトリの作成
RUN mkdir /go/src/app
RUN go get -u github.com/oxequa/realize
# ワーキングディレクトリの設定
WORKDIR /go/src/app
# ホストのファイルをコンテナの作業ディレクトリに移行
ADD . /go/src/app