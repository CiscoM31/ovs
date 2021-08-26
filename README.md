# Cisco build of Ubuntu 18.04 openvswitch-switch

This is the Cisco OVS package, forked from the Ubuntu 18.04
http://archive.ubuntu.com/ubuntu/pool/main/o/openvswitch/openvswitch_2.9.8.orig.tar.xz
and
http://archive.ubuntu.com/ubuntu/pool/main/o/openvswitch/openvswitch_2.9.8-0ubuntu0.18.04.2.debian.tar.xz
source packages.  This package is identical to the original Ubuntu
package, with the exception that two additional patches were added
to this package, backported from the OVS repository:

* https://github.com/openvswitch/ovs/commit/b4e50218a0f8da43ffe7c420826ddb19985b0b03,
  and
* https://github.com/openvswitch/ovs/commit/07d5758b032bc774d1e38fc79eaf356ea9302bdf

And an `cisco-package-version.json` file included in the
`openvswitch-switch*.deb` file.

This package is not supported by Ubuntu.
