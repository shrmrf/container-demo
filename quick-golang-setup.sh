export GOPATH=/home/vagrant/go

mkdir -p $GOPATH
vim main.go
go get -u github.com/nsf/gocode &
go get -u github.com/uudashr/gopkgs/cmd/gopkgs &
go get -u github.com/lukehoban/go-outline &
go get -u github.com/newhook/go-symbols &
go get -u golang.org/x/tools &
go get -u golang.org/x/tools/... &
go get -u github.com/derekparker/delve/cmd/dlv &
go get -u github.com/sqs/goreturns &
go get -u golang.org/x/lint/golint &

for job in `jobs -p`
do
 echo $job
 wait $job
done

