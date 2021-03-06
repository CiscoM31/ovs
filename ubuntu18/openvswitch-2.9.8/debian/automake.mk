EXTRA_DIST += \
	debian/changelog \
	debian/compat \
	debian/control \
	debian/copyright \
	debian/copyright.in \
	debian/dirs \
	debian/openvswitch-common-cisco.dirs \
	debian/openvswitch-common-cisco.install \
	debian/openvswitch-pki.dirs \
	debian/openvswitch-pki.postinst \
	debian/openvswitch-pki.postrm \
	debian/openvswitch-switch-cisco.README.Debian \
	debian/openvswitch-switch-cisco.dirs \
	debian/openvswitch-switch-cisco.init \
	debian/openvswitch-switch-cisco.install \
	debian/openvswitch-switch-cisco.logrotate \
	debian/openvswitch-switch-cisco.postinst \
	debian/openvswitch-switch-cisco.postrm \
	debian/openvswitch-switch-cisco.default \
	debian/openvswitch-switch-cisco.links \
	debian/openvswitch-test.install \
	debian/openvswitch-testcontroller.README.Debian \
	debian/openvswitch-testcontroller.default \
	debian/openvswitch-testcontroller.dirs \
	debian/openvswitch-testcontroller.init \
	debian/openvswitch-testcontroller.install \
	debian/openvswitch-testcontroller.postinst \
	debian/openvswitch-testcontroller.postrm \
	debian/openvswitch-vtep.default \
	debian/openvswitch-vtep.dirs \
	debian/openvswitch-vtep.init \
	debian/openvswitch-vtep.install \
	debian/ovn-central.init \
	debian/ovn-central.install \
	debian/ovn-central.postrm \
	debian/ovn-central.default \
	debian/ovn-common.install \
	debian/ovn-common.postinst \
	debian/ovn-common.postrm \
    debian/ovn-docker.install \
	debian/ovn-host.init \
	debian/ovn-host.install \
	debian/ovn-host.postrm \
	debian/ovn-host.default \
	debian/rules \
	debian/ifupdown.sh \
	debian/source/format

check-debian-changelog-version:
	@DEB_VERSION=`echo '$(VERSION)' | sed 's/pre/~pre/'`;		     \
	if $(FGREP) '($(DEB_VERSION)' $(srcdir)/debian/changelog >/dev/null; \
	then								     \
	  :;								     \
	else								     \
	  echo "Update debian/changelog to mention version $(VERSION)";	     \
	  exit 1;							     \
	fi
ALL_LOCAL += check-debian-changelog-version
DIST_HOOKS += check-debian-changelog-version

$(srcdir)/debian/copyright: AUTHORS.rst debian/copyright.in
	$(AM_V_GEN) \
	{ sed -n -e '/%AUTHORS%/q' -e p < $(srcdir)/debian/copyright.in;   \
	  sed '34,/^$$/d' $(srcdir)/AUTHORS.rst  |				   \
		sed -n -e '/^$$/q' -e 's/^/  /p';			   \
	  sed -e '34,/%AUTHORS%/d' $(srcdir)/debian/copyright.in;	   \
	} > $@

DISTCLEANFILES += debian/copyright
