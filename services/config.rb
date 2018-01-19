coreo_agent_selector_rule 'check-linux' do
    action :define
    timeout 120
    control 'check-linux' do
        describe os.linux? do
            it { should eq true }
        end
    end
end

coreo_agent_audit_profile 'linux-baseline' do
    action :define
    selectors ['check-linux']
    profile 'https://github.com/dev-sec/linux-baseline/archive/master.zip'
    timeout 120
end

coreo_agent_audit_profile 'linux-patch-baseline' do
    action :define
    selectors ['check-linux']
    profile 'https://github.com/coolguru/linux-patch-baseline/archive/master.zip'
    timeout 120
end

coreo_agent_rule_runner 'audit-endpoint-linux-profiles' do
    action :run
    profiles ${AUDIT_ENDPOINT_LINUX_PROFILES_ALERT_LIST}
    filter(${FILTERED_OBJECTS}) if ${FILTERED_OBJECTS}
end
