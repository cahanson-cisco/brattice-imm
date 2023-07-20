resource "random_id" "uuid_prefix_seed" {
  byte_length = 8
}

resource "random_id" "uuid_suffix_seed" {
  byte_length = 8
  count       = 1
}

resource "intersight_uuidpool_pool" "default" {
  name = "default"
  tags = [local.terraform]
  organization {
    moid = local.organization
  }

  assignment_order = "default"
  prefix           = upper(format("%s-%s-4%s", substr(random_id.uuid_prefix_seed.hex, 0, 8), substr(random_id.uuid_prefix_seed.hex, 8, 4), substr(random_id.uuid_prefix_seed.hex, 12, 3)))

  dynamic "uuid_suffix_blocks" {
    for_each = random_id.uuid_suffix_seed
    content {
      from = upper(format("8%s-%s", substr(uuid_suffix_blocks.value.hex, 0, 3), substr(uuid_suffix_blocks.value.hex, 3, 12)))
      size = 1000
    }
  }

  lifecycle {
    ignore_changes = [uuid_suffix_blocks]
  }
}