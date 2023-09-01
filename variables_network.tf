variable "network_map_nxos" {
  type = map(object({
    vlan = number
    qos  = string
  }))
  default = {
    brattice_inband_kvm = {
      vlan = 850
      qos  = "best effort"
    }
    brattice_nxos_840 = {
      vlan = 840
      qos  = "best effort"
    }
    brattice_nxos_841 = {
      vlan = 841
      qos  = "best effort"
    }
    brattice_nxos_842 = {
      vlan = 842
      qos  = "best effort"
    }
    brattice_nxos_843 = {
      vlan = 843
      qos  = "best effort"
    }
    brattice_nxos_844 = {
      vlan = 844
      qos  = "best effort"
    }
    brattice_nxos_845 = {
      vlan = 845
      qos  = "best effort"
    }
    brattice_nxos_846 = {
      vlan = 846
      qos  = "best effort"
    }
    brattice_nxos_847 = {
      vlan = 847
      qos  = "best effort"
    }
    brattice_nxos_848 = {
      vlan = 848
      qos  = "best effort"
    }
    brattice_nxos_849 = {
      vlan = 849
      qos  = "best effort"
    }
    brattice_nxos_850 = {
      vlan = 850
      qos  = "best effort"
    }
  }
}

variable "network_map_aci" {
  type = map(object({
    vlan = number
    qos  = string
  }))

  default = {
    aci_1500 = {
      vlan = 1500
      qos  = "best effort"
    }
    aci_1501 = {
      vlan = 1501
      qos  = "best effort"
    }
    aci_1502 = {
      vlan = 1502
      qos  = "best effort"
    }
    aci_1503 = {
      vlan = 1503
      qos  = "best effort"
    }
    aci_1504 = {
      vlan = 1504
      qos  = "best effort"
    }
    aci_1505 = {
      vlan = 1505
      qos  = "best effort"
    }
    aci_1506 = {
      vlan = 1506
      qos  = "best effort"
    }
    aci_1507 = {
      vlan = 1507
      qos  = "best effort"
    }
    aci_1508 = {
      vlan = 1508
      qos  = "best effort"
    }
    aci_1509 = {
      vlan = 1509
      qos  = "best effort"
    }
    aci_1510 = {
      vlan = 1510
      qos  = "best effort"
    }
    aci_1511 = {
      vlan = 1511
      qos  = "best effort"
    }
    aci_1512 = {
      vlan = 1512
      qos  = "best effort"
    }
    aci_1513 = {
      vlan = 1513
      qos  = "best effort"
    }
    aci_1514 = {
      vlan = 1514
      qos  = "best effort"
    }
    aci_1515 = {
      vlan = 1515
      qos  = "best effort"
    }
    aci_1516 = {
      vlan = 1516
      qos  = "best effort"
    }
    aci_1517 = {
      vlan = 1517
      qos  = "best effort"
    }
    aci_1518 = {
      vlan = 1518
      qos  = "best effort"
    }
    aci_1519 = {
      vlan = 1519
      qos  = "best effort"
    }
    aci_1520 = {
      vlan = 1520
      qos  = "best effort"
    }
    aci_1521 = {
      vlan = 1521
      qos  = "best effort"
    }
    aci_1522 = {
      vlan = 1522
      qos  = "best effort"
    }
    aci_1523 = {
      vlan = 1523
      qos  = "best effort"
    }
    aci_1524 = {
      vlan = 1524
      qos  = "best effort"
    }
    aci_1525 = {
      vlan = 1525
      qos  = "best effort"
    }
    aci_1526 = {
      vlan = 1526
      qos  = "best effort"
    }
    aci_1527 = {
      vlan = 1527
      qos  = "best effort"
    }
    aci_1528 = {
      vlan = 1528
      qos  = "best effort"
    }
    aci_1529 = {
      vlan = 1529
      qos  = "best effort"
    }
    aci_1530 = {
      vlan = 1530
      qos  = "best effort"
    }
    aci_1531 = {
      vlan = 1531
      qos  = "best effort"
    }
    aci_1532 = {
      vlan = 1532
      qos  = "best effort"
    }
    aci_1533 = {
      vlan = 1533
      qos  = "best effort"
    }
    aci_1534 = {
      vlan = 1534
      qos  = "best effort"
    }
    aci_1535 = {
      vlan = 1535
      qos  = "best effort"
    }
    aci_1536 = {
      vlan = 1536
      qos  = "best effort"
    }
    aci_1537 = {
      vlan = 1537
      qos  = "best effort"
    }
    aci_1538 = {
      vlan = 1538
      qos  = "best effort"
    }
    aci_1539 = {
      vlan = 1539
      qos  = "best effort"
    }
    aci_1540 = {
      vlan = 1540
      qos  = "best effort"
    }
    aci_1541 = {
      vlan = 1541
      qos  = "best effort"
    }
    aci_1542 = {
      vlan = 1542
      qos  = "best effort"
    }
    aci_1543 = {
      vlan = 1543
      qos  = "best effort"
    }
    aci_1544 = {
      vlan = 1544
      qos  = "best effort"
    }
    aci_1545 = {
      vlan = 1545
      qos  = "best effort"
    }
    aci_1546 = {
      vlan = 1546
      qos  = "best effort"
    }
    aci_1547 = {
      vlan = 1547
      qos  = "best effort"
    }
    aci_1548 = {
      vlan = 1548
      qos  = "best effort"
    }
    aci_1549 = {
      vlan = 1549
      qos  = "best effort"
    }
    aci_1550 = {
      vlan = 1550
      qos  = "best effort"
    }
    aci_1551 = {
      vlan = 1551
      qos  = "best effort"
    }
    aci_1552 = {
      vlan = 1552
      qos  = "best effort"
    }
    aci_1553 = {
      vlan = 1553
      qos  = "best effort"
    }
    aci_1554 = {
      vlan = 1554
      qos  = "best effort"
    }
    aci_1555 = {
      vlan = 1555
      qos  = "best effort"
    }
    aci_1556 = {
      vlan = 1556
      qos  = "best effort"
    }
    aci_1557 = {
      vlan = 1557
      qos  = "best effort"
    }
    aci_1558 = {
      vlan = 1558
      qos  = "best effort"
    }
    aci_1559 = {
      vlan = 1559
      qos  = "best effort"
    }
    aci_1560 = {
      vlan = 1560
      qos  = "best effort"
    }
    aci_1561 = {
      vlan = 1561
      qos  = "best effort"
    }
    aci_1562 = {
      vlan = 1562
      qos  = "best effort"
    }
    aci_1563 = {
      vlan = 1563
      qos  = "best effort"
    }
    aci_1564 = {
      vlan = 1564
      qos  = "best effort"
    }
    aci_1565 = {
      vlan = 1565
      qos  = "best effort"
    }
    aci_1566 = {
      vlan = 1566
      qos  = "best effort"
    }
    aci_1567 = {
      vlan = 1567
      qos  = "best effort"
    }
    aci_1568 = {
      vlan = 1568
      qos  = "best effort"
    }
    aci_1569 = {
      vlan = 1569
      qos  = "best effort"
    }
    aci_1570 = {
      vlan = 1570
      qos  = "best effort"
    }
    aci_1571 = {
      vlan = 1571
      qos  = "best effort"
    }
    aci_1572 = {
      vlan = 1572
      qos  = "best effort"
    }
    aci_1573 = {
      vlan = 1573
      qos  = "best effort"
    }
    aci_1574 = {
      vlan = 1574
      qos  = "best effort"
    }
    aci_1575 = {
      vlan = 1575
      qos  = "best effort"
    }
    aci_1576 = {
      vlan = 1576
      qos  = "best effort"
    }
    aci_1577 = {
      vlan = 1577
      qos  = "best effort"
    }
    aci_1578 = {
      vlan = 1578
      qos  = "best effort"
    }
    aci_1579 = {
      vlan = 1579
      qos  = "best effort"
    }
    aci_1580 = {
      vlan = 1580
      qos  = "best effort"
    }
    aci_1581 = {
      vlan = 1581
      qos  = "best effort"
    }
    aci_1582 = {
      vlan = 1582
      qos  = "best effort"
    }
    aci_1583 = {
      vlan = 1583
      qos  = "best effort"
    }
    aci_1584 = {
      vlan = 1584
      qos  = "best effort"
    }
    aci_1585 = {
      vlan = 1585
      qos  = "best effort"
    }
    aci_1586 = {
      vlan = 1586
      qos  = "best effort"
    }
    aci_1587 = {
      vlan = 1587
      qos  = "best effort"
    }
    aci_1588 = {
      vlan = 1588
      qos  = "best effort"
    }
    aci_1589 = {
      vlan = 1589
      qos  = "best effort"
    }
    aci_1590 = {
      vlan = 1590
      qos  = "best effort"
    }
    aci_1591 = {
      vlan = 1591
      qos  = "best effort"
    }
    aci_1592 = {
      vlan = 1592
      qos  = "best effort"
    }
    aci_1593 = {
      vlan = 1593
      qos  = "best effort"
    }
    aci_1594 = {
      vlan = 1594
      qos  = "best effort"
    }
    aci_1595 = {
      vlan = 1595
      qos  = "best effort"
    }
    aci_1596 = {
      vlan = 1596
      qos  = "best effort"
    }
    aci_1597 = {
      vlan = 1597
      qos  = "best effort"
    }
    aci_1598 = {
      vlan = 1598
      qos  = "best effort"
    }
    aci_1599 = {
      vlan = 1599
      qos  = "best effort"
    }
  }
}
