## Defining servers sockets
dh1_tcp="dh_1.pub"
dh1_lin="dh_1.sock"
dh2_tcp="dh_2.pub"
dh2_lin="dh_2.sock"
dh1_port=3031
dh2_port=3032

kill_timeout=4

if [ -e "$dh1_tcp" ]; then
    rm $dh1_tcp $dh1_lin $dh2_tcp $dh2_lin
fi

echo "Starting servers"
./target/debug/diffie_hellman_tool ${dh1_tcp} ${dh1_lin} && timeout ${kill_timeout} &
./target/debug/diffie_hellman_tool ${dh2_tcp} ${dh2_lin} && timeout ${kill_timeout} &
echo "Create tcp bindings"
socat TCP-LISTEN:$dh1_port,fork,reuseaddr,nonblock,noflush UNIX-CONNECT:$dh1_tcp,nonblock,noflush &
socat TCP-LISTEN:$dh2_port,fork,reuseaddr,nonblock,noflush UNIX-CONNECT:$dh2_tcp,nonblock,noflush &

sleep 1
echo "Test servers running..."
echo \{\"jsonrpc\":\"2.0\",\"id\":\"1\",\"method\":\"create_secret\",\"params\":\"0.0.0.0:$dh2_port\"\} | nc -N -U $dh1_lin

sleep $kill_timeout
echo "Kill sockets"
rm $dh1_tcp $dh1_lin $dh2_tcp $dh2_lin
kill -9 `ps -ef | grep socat | grep $dh1_port | tr -s ' ' | cut -d ' ' -f 2` 1> /dev/null 2> /dev/null
kill -9 `ps -ef | grep socat | grep $dh2_port | tr -s ' ' | cut -d ' ' -f 2` 2>&1 > /dev/null
