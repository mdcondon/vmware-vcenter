# Copyright (C) 2013 VMware, Inc.
import 'data.pp'

transport { 'vcenter':
  username => $vcenter['username'],
  password => $vcenter['password'],
  server   => $vcenter['server'],
  options  => $vcenter['options'],
}

esx_fc_mutilple_path_config {'host':
  host => '172.28.10.3',
  policyname => 'VMW_PSP_RR',
  transport   => Transport['vcenter'],
}