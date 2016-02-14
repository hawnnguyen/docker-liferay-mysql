docker run --name lep-as -p 80:8080 -p 443:8443 -p 2222:22 -p 1099:1099 -p 8999:8999 --link lep-db -e LIFERAY_DEBUG=1 -e VM_HOST=vm-default -v /$(dirname $(realpath $0))/deploy-run:/var/liferay/deploy $@ -d ctliv/liferay:6.2