. "${HOOKS_DIR}/pingcommon.lib.sh"
cp -r /opt/out/instance/* /opt # <-- this fix
echo "INFO: waiting for PingDataGovernance-PAP to start before importing configuration"
wait-for localhost:${HTTPS_PORT} -t 200 --  "echo pap running"
run_hook 81-install-policies.sh