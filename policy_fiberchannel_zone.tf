resource "intersight_fabric_fc_zone_policy" "brattice-A" {
  name = "brattice-A"
  dynamic "tags" {
    for_each = local.tags
    content {
      key   = tags.key
      value = tags.value
    }
  }
  organization {
    moid = local.organization
  }

  fc_target_zoning_type = "SIMT"
  fc_target_members = [{
    name                  = "purect0fc0"
    additional_properties = ""
    class_id              = ""
    object_type           = ""
    switch_id             = "A"
    vsan_id               = 101
    wwpn                  = "52:4A:93:71:20:FF:59:00"
    },
    {
      name                  = "purect0fc1"
      additional_properties = ""
      class_id              = ""
      object_type           = ""
      switch_id             = "A"
      vsan_id               = 101
      wwpn                  = "52:4A:93:71:20:FF:59:01"
    },
    {
      name                  = "hitachi-cl1a"
      additional_properties = ""
      class_id              = ""
      object_type           = ""
      switch_id             = "A"
      vsan_id               = 101
      wwpn                  = "50:06:0e:80:21:a2:80:00"
    },
    {
      name                  = "hitachi-cl3a"
      additional_properties = ""
      class_id              = ""
      object_type           = ""
      switch_id             = "A"
      vsan_id               = 101
      wwpn                  = "50:06:0e:80:21:a2:80:20"
  }]
}

resource "intersight_fabric_fc_zone_policy" "brattice-B" {
  name = "brattice-B"
  dynamic "tags" {
    for_each = local.tags
    content {
      key   = tags.key
      value = tags.value
    }
  }
  organization {
    moid = local.organization
  }

  fc_target_zoning_type = "SIMT"
  fc_target_members = [{
    name                  = "purect1fc0"
    additional_properties = ""
    class_id              = ""
    object_type           = ""
    switch_id             = "B"
    vsan_id               = 102
    wwpn                  = "52:4A:93:71:20:FF:59:10"
    }, {
    name                  = "purect1fc1"
    additional_properties = ""
    class_id              = ""
    object_type           = ""
    switch_id             = "B"
    vsan_id               = 102
    wwpn                  = "52:4A:93:71:20:FF:59:11"
    },
    {
      name                  = "hitachi-cl2a"
      additional_properties = ""
      class_id              = ""
      object_type           = ""
      switch_id             = "B"
      vsan_id               = 102
      wwpn                  = "50:06:0e:80:21:a2:80:10"
    },
    {
      name                  = "hitachi-cl4a"
      additional_properties = ""
      class_id              = ""
      object_type           = ""
      switch_id             = "B"
      vsan_id               = 102
      wwpn                  = "50:06:0e:80:21:a2:80:30"
  }]
}
