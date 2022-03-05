# Cisco package of openvswitch-switch

This is the Cisco OVS package, forked from two different versions of
Ubuntu packages:

* The [Ubuntu 18.04 openvswitch
  package](http://archive.ubuntu.com/ubuntu/pool/main/o/openvswitch/openvswitch_2.9.8.orig.tar.xz)
* The [Ubuntu 20.04 openvswitch
  package](http://archive.ubuntu.com/ubuntu/pool/main/o/openvswitch/openvswitch_2.13.3.orig.tar.xz)

Both packages are identical to their original corresponding Ubuntu
packages, with the exception that two additional patches were added to
this package, back-ported from the OVS repository:

* https://github.com/openvswitch/ovs/commit/b4e50218a0f8da43ffe7c420826ddb19985b0b03,
  and
* https://github.com/openvswitch/ovs/commit/07d5758b032bc774d1e38fc79eaf356ea9302bdf

Additionally, a `cisco-package-version.json` file is included in the
`openvswitch-switch*.deb` file.

These packages are not supported by Ubuntu.
