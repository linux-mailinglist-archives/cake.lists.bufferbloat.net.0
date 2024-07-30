Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id A55199421E1
	for <lists+cake@lfdr.de>; Tue, 30 Jul 2024 22:51:53 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 89DCD3CB43;
	Tue, 30 Jul 2024 16:51:51 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1722372711;
	bh=KGK1l18sugD8kP7WPva7izvvY8O8zlmYVwkJaYuC/Ew=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:
	 From;
	b=arB2rSJ7nEsDy75ItKhSFofHhgwi6M4QJLfx9NXgEuk+3Nl/ZWVspDmdh4EYplcP0
	 rJqbnX4SfI6qRZuYXArE4tknlu5A1RcUmBQiaGp6wW2ucvgp4eSR6PvGEOavjyp5I4
	 aVdZQ52JMSJrqcrfDiDQ8k4uv/LvYM/YkSMblfOrQelc4oi9V5vmehbM1YQ3lsk/Pm
	 XdmGyL9+KZ5A3rAK5q3OrbHTFiCXC9bfqMUlHIBnXmpD/3HdAhXJbV9h1taGCcMbUX
	 O0EyrsmbFQX266w9ss5WM9QKyE8JgmjC2VIE1wcbpIz+qwueyXN3z+wsC2NeOkWfku
	 lAS0MJoR42now==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ot1-x330.google.com (mail-ot1-x330.google.com
 [IPv6:2607:f8b0:4864:20::330])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 372773B29E
 for <cake@lists.bufferbloat.net>; Tue, 30 Jul 2024 16:51:50 -0400 (EDT)
Received: by mail-ot1-x330.google.com with SMTP id
 46e09a7af769-70930f8eabbso1997392a34.1
 for <cake@lists.bufferbloat.net>; Tue, 30 Jul 2024 13:51:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1722372709; x=1722977509; darn=lists.bufferbloat.net;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :from:to:cc:subject:date:message-id:reply-to;
 bh=koMNwHvXIZtriZufnPdlS5Xm4MqyrSFRW+gkfpjwtp0=;
 b=VI1qaNVx/+7/w0qDxvrnjfDRn/eXmPI7/td8QicfnJ7cnQfRa5RITAWKopRnMzQ6bU
 NWUljwCVByLhFrQY6ia00Gt1pJZ1TOz7xQpkdUJuNMeEqMvb3Z+l9uTFjPd60yt+JX6M
 Rxfi3Ow7W55k1xfMYx78g2ecuzKHHCJayGJqfjFpkUeCzYZmkdeEaTHj6dBYBDQOvrlG
 B+LyJqgBL0qc73nej5lqfRxSnbynCnRfSiFp5sU3S4PCaQ4ODB960SOg+7nVJjsake6p
 Wm0RjDl/ayc9va6qJSHZk4L3NAISV+qg8wI4URhAqnvfOgTepBBXzLw9d94XyPoKc1ds
 H98w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1722372709; x=1722977509;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=koMNwHvXIZtriZufnPdlS5Xm4MqyrSFRW+gkfpjwtp0=;
 b=e+nJd1l5SM2KwxjNsCw22hv7OW7Ah07g7iUcs06jlgqjuCxL26tj7RVMK7D3S+v6aU
 P5SeHdlZ0jaGYz4g5tOI6YR6df1CIm+YziFFL5EWCXZ8XXbvGQXU5DnbFEwp9qb34ncV
 pjypp0YM1ouQjZWnk3wCbk8l2Ae8qL7/NofqVjdQL/MTXAo3sednnqpSadwP0OGAv/yL
 QCo7CNy6rulGMPmWWVC9hyuEdjCYPHpBXIan1/Q8XMsRZ2H+wJmrSAPqRrZVxEBrqgI8
 WGUxqfPvUM3/BJGPHbi8PCns6loE1xLrKFqPTbM+4COfEzsY1tAwDHdDeIPZH+AtL08l
 pnpg==
X-Gm-Message-State: AOJu0Yz92MQIMAV/6tL5W/gHuPpeaLuCghUpIajJ1IRD2B6JnLOYFYYE
 DXm/jNpcBntuXEA38HXzlbBs3rqoARoWQz2OvGMYXo8vYAPm2L2pADXVviVVghJIN4KHTuhYfjP
 oUZgPyHBKRR1p5KeOA/XA6LHMzfNotw==
X-Google-Smtp-Source: AGHT+IG8bIO+hLXBiRxrUZkaVyQT1Y4g+jv/QmGyqgWkn74OtSYuHwDrBpW1f2TWXpCFKrLTFAhwaoDPoDAe50KTprU=
X-Received: by 2002:a05:6870:9727:b0:260:ffae:d389 with SMTP id
 586e51a60fabf-267d4d5f49cmr13768059fac.16.1722372708742; Tue, 30 Jul 2024
 13:51:48 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1722357745.git.pabeni@redhat.com>
In-Reply-To: <cover.1722357745.git.pabeni@redhat.com>
Date: Tue, 30 Jul 2024 13:51:36 -0700
Message-ID: <CAA93jw6M8YWjO+eiAF0MQhMHXF0tbBuJzbtR0CaWFFHquOW7JQ@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] Fwd: [PATCH v3 00/12] net: introduce TX H/W shaping API
X-BeenThere: cake@lists.bufferbloat.net
X-Mailman-Version: 2.1.20
Precedence: list
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
List-Unsubscribe: <https://lists.bufferbloat.net/options/cake>,
 <mailto:cake-request@lists.bufferbloat.net?subject=unsubscribe>
List-Archive: <https://lists.bufferbloat.net/pipermail/cake>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Subscribe: <https://lists.bufferbloat.net/listinfo/cake>,
 <mailto:cake-request@lists.bufferbloat.net?subject=subscribe>
From: Dave Taht via Cake <cake@lists.bufferbloat.net>
Reply-To: Dave Taht <dave.taht@gmail.com>
Content-Type: multipart/mixed; boundary="===============8026020750480778622=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============8026020750480778622==
Content-Type: multipart/alternative; boundary="00000000000079bbce061e7d2512"

--00000000000079bbce061e7d2512
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

---------- Forwarded message ---------
From: Paolo Abeni <pabeni@redhat.com>
Date: Tue, Jul 30, 2024 at 1:41=E2=80=AFPM
Subject: [PATCH v3 00/12] net: introduce TX H/W shaping API
To: <netdev@vger.kernel.org>
Cc: Jakub Kicinski <kuba@kernel.org>, Jiri Pirko <jiri@resnulli.us>, Madhu
Chittim <madhu.chittim@intel.com>, Sridhar Samudrala <
sridhar.samudrala@intel.com>, Simon Horman <horms@kernel.org>, John
Fastabend <john.fastabend@gmail.com>, Sunil Kovvuri Goutham <
sgoutham@marvell.com>, Jamal Hadi Salim <jhs@mojatatu.com>


We have a plurality of shaping-related drivers API, but none flexible
enough to meet existing demand from vendors[1].

This series introduces new device APIs to configure in a flexible way
TX H/W shaping. The new functionalities are exposed via a newly
defined generic netlink interface and include introspection
capabilities. Some self-tests are included, on top of a dummy
netdevsim implementation, and a basic implementation for the iavf
driver.

Some usage examples:

* Configure shaping on a given queue:

./tools/net/ynl/cli.py --spec Documentation/netlink/specs/shaper.yaml \
        --do set --json '{"ifindex":'$IFINDEX',
                        "shaper": {"handle":
                                {"scope": "queue", "id":'$QUEUEID' },
                        "bw-max": 2000000 }}'

* Container B/W sharing

The orchestration infrastructure wants to group the
container-related queues under a RR scheduling and limit the aggregate
bandwidth:

./tools/net/ynl/cli.py --spec Documentation/netlink/specs/shaper.yaml \
        --do group --json '{"ifindex":'$IFINDEX',
                        "inputs": [
                          {"handle": {"scope": "queue", "id":'$QID1' },
                           "weight": '$W1'},
                          {"handle": {"scope": "queue", "id":'$QID2' },
                           "weight": '$W2'}],
                          {"handle": {"scope": "queue", "id":'$QID3' },
                           "weight": '$W3'}],
                        "output": { "handle": {"scope":"netdev"},
                        "output": { "handle": {"scope":"netdev"},
                           "bw-max": 10000000}}'
{'handle': {'id': 0, 'scope': 'netdev'}}

* Delegation

A container wants to set a B/W limit on 2 of its own queues:

./tools/net/ynl/cli.py --spec Documentation/netlink/specs/shaper.yaml \
        --do group --json '{"ifindex":'$IFINDEX',
                        "inputs": [
                          {"handle": {"scope": "queue", "id":'$QID1' },
                           "weight": '$W1'},
                          {"handle": {"scope": "queue", "id":'$QID2' },
                           "weight": '$W2'}],
                        "output": { "handle": {"scope":"detached"},
                           "bw-max": 5000000}}'
{'handle': {'id': 0, 'scope': 'detached'}}

* Cleanup:

Deleting a single queue shaper:

./tools/net/ynl/cli.py --spec Documentation/netlink/specs/shaper.yaml \
        --do delete --json \
        '{"ifindex":'$IFINDEX',
          "handle": {"scope": "queue", "id":'$QID1' }}'

deleting the last shaper under a group deletes the group, too:

./tools/net/ynl/cli.py --spec Documentation/netlink/specs/shaper.yaml \
        --do delete --json \
        '{"ifindex":'$IFINDEX',
          "handle": {"scope": "queue", "id":'$QID2' }}'
./tools/net/ynl/cli.py --spec Documentation/netlink/specs/shaper.yaml \
        --do get --json '{"ifindex":'$IF',
                          "handle": { "scope": "detached", "id": 0}}'
Netlink error: Invalid argument
nl_len =3D 80 (64) nl_flags =3D 0x300 nl_type =3D 2
        error: -22
        extack: {'msg': "Can't find shaper for handle 10000000"}

Changes from RFC v2:
 - added patch 1
 - fixed deprecated API usage

RFC v2:
https://lore.kernel.org/netdev/cover.1721851988.git.pabeni@redhat.com/

Changes from RFC v1:
 - set() and delete() ops operate on a single shaper
 - added group() op to allow grouping and nesting
 - split the NL implementation into multiple patches to help reviewing

RFC v1:
https://lore.kernel.org/netdev/cover.1719518113.git.pabeni@redhat.com/

[1] https://lore.kernel.org/netdev/20240405102313.GA310894@kernel.org/

Paolo Abeni (8):
  tools: ynl: lift an assumption about spec file name
  netlink: spec: add shaper YAML spec
  net-shapers: implement NL get operation
  net-shapers: implement NL set and delete operations
  net-shapers: implement NL group operation
  netlink: spec: add shaper introspection support
  net: shaper: implement introspection support
  testing: net-drv: add basic shaper test

Sudheer Mogilappagari (2):
  iavf: Add net_shaper_ops support
  iavf: add support to exchange qos capabilities

Wenjun Wu (2):
  virtchnl: support queue rate limit and quanta size configuration
  ice: Support VF queue rate limit and quanta size configuration

 Documentation/netlink/specs/shaper.yaml       | 337 ++++++
 Documentation/networking/kapi.rst             |   3 +
 MAINTAINERS                                   |   1 +
 drivers/net/Kconfig                           |   1 +
 drivers/net/ethernet/intel/Kconfig            |   1 +
 drivers/net/ethernet/intel/iavf/iavf.h        |  13 +
 drivers/net/ethernet/intel/iavf/iavf_main.c   | 215 +++-
 drivers/net/ethernet/intel/iavf/iavf_txrx.h   |   2 +
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 157 ++-
 drivers/net/ethernet/intel/ice/ice.h          |   2 +
 drivers/net/ethernet/intel/ice/ice_base.c     |   2 +
 drivers/net/ethernet/intel/ice/ice_common.c   |  21 +
 .../net/ethernet/intel/ice/ice_hw_autogen.h   |   8 +
 drivers/net/ethernet/intel/ice/ice_txrx.h     |   1 +
 drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
 drivers/net/ethernet/intel/ice/ice_vf_lib.h   |   8 +
 drivers/net/ethernet/intel/ice/ice_virtchnl.c | 333 ++++++
 drivers/net/ethernet/intel/ice/ice_virtchnl.h |  11 +
 .../intel/ice/ice_virtchnl_allowlist.c        |   6 +
 drivers/net/netdevsim/netdev.c                |  37 +
 include/linux/avf/virtchnl.h                  | 119 +++
 include/linux/netdevice.h                     |  17 +
 include/net/net_shaper.h                      | 169 +++
 include/uapi/linux/net_shaper.h               |  91 ++
 net/Kconfig                                   |   3 +
 net/Makefile                                  |   1 +
 net/core/dev.c                                |   2 +
 net/core/dev.h                                |   6 +
 net/shaper/Makefile                           |   9 +
 net/shaper/shaper.c                           | 963 ++++++++++++++++++
 net/shaper/shaper_nl_gen.c                    | 142 +++
 net/shaper/shaper_nl_gen.h                    |  30 +
 tools/net/ynl/ynl-gen-c.py                    |   6 +-
 tools/testing/selftests/drivers/net/Makefile  |   1 +
 tools/testing/selftests/drivers/net/shaper.py | 267 +++++
 .../testing/selftests/net/lib/py/__init__.py  |   1 +
 tools/testing/selftests/net/lib/py/ynl.py     |   5 +
 37 files changed, 2988 insertions(+), 4 deletions(-)
 create mode 100644 Documentation/netlink/specs/shaper.yaml
 create mode 100644 include/net/net_shaper.h
 create mode 100644 include/uapi/linux/net_shaper.h
 create mode 100644 net/shaper/Makefile
 create mode 100644 net/shaper/shaper.c
 create mode 100644 net/shaper/shaper_nl_gen.c
 create mode 100644 net/shaper/shaper_nl_gen.h
 create mode 100755 tools/testing/selftests/drivers/net/shaper.py

--=20
2.45.2




--=20
Artists/Musician Campout Aug 9-11
https://www.eventbrite.com/e/healing-arts-event-tickets-928910826287
Dave T=C3=A4ht CSO, LibreQos

--00000000000079bbce061e7d2512
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">---------- Forwarded message ---------<br>From: <strong cla=
ss=3D"gmail_sendername" dir=3D"auto">Paolo Abeni</strong> <span dir=3D"auto=
">&lt;<a href=3D"mailto:pabeni@redhat.com">pabeni@redhat.com</a>&gt;</span>=
<br>Date: Tue, Jul 30, 2024 at 1:41=E2=80=AFPM<br>Subject: [PATCH v3 00/12]=
 net: introduce TX H/W shaping API<br>To:  &lt;<a href=3D"mailto:netdev@vge=
r.kernel.org">netdev@vger.kernel.org</a>&gt;<br>Cc: Jakub Kicinski &lt;<a h=
ref=3D"mailto:kuba@kernel.org">kuba@kernel.org</a>&gt;, Jiri Pirko &lt;<a h=
ref=3D"mailto:jiri@resnulli.us">jiri@resnulli.us</a>&gt;, Madhu Chittim &lt=
;<a href=3D"mailto:madhu.chittim@intel.com">madhu.chittim@intel.com</a>&gt;=
, Sridhar Samudrala &lt;<a href=3D"mailto:sridhar.samudrala@intel.com">srid=
har.samudrala@intel.com</a>&gt;, Simon Horman &lt;<a href=3D"mailto:horms@k=
ernel.org">horms@kernel.org</a>&gt;, John Fastabend &lt;<a href=3D"mailto:j=
ohn.fastabend@gmail.com">john.fastabend@gmail.com</a>&gt;, Sunil Kovvuri Go=
utham &lt;<a href=3D"mailto:sgoutham@marvell.com">sgoutham@marvell.com</a>&=
gt;, Jamal Hadi Salim &lt;<a href=3D"mailto:jhs@mojatatu.com">jhs@mojatatu.=
com</a>&gt;<br></div><br><br>We have a plurality of shaping-related drivers=
 API, but none flexible<br>
enough to meet existing demand from vendors[1].<br>
<br>
This series introduces new device APIs to configure in a flexible way<br>
TX H/W shaping. The new functionalities are exposed via a newly<br>
defined generic netlink interface and include introspection<br>
capabilities. Some self-tests are included, on top of a dummy<br>
netdevsim implementation, and a basic implementation for the iavf<br>
driver.<br>
<br>
Some usage examples:<br>
<br>
* Configure shaping on a given queue:<br>
<br>
./tools/net/ynl/cli.py --spec Documentation/netlink/specs/shaper.yaml \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 --do set --json &#39;{&quot;ifindex&quot;:&#39;=
$IFINDEX&#39;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 &quot;shaper&quot;: {&quot;handle&quot;:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 {&quot;scope&quot;: &quot;queue&quot=
;, &quot;id&quot;:&#39;$QUEUEID&#39; },<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 &quot;bw-max&quot;: 2000000 }}&#39;<br>
<br>
* Container B/W sharing<br>
<br>
The orchestration infrastructure wants to group the <br>
container-related queues under a RR scheduling and limit the aggregate<br>
bandwidth:<br>
<br>
./tools/net/ynl/cli.py --spec Documentation/netlink/specs/shaper.yaml \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 --do group --json &#39;{&quot;ifindex&quot;:&#3=
9;$IFINDEX&#39;, <br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 &quot;inputs&quot;: [ <br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 {&quot;handle&quot;: {&quot;scope&quot;: &quot;queue&quot=
;, &quot;id&quot;:&#39;$QID1&#39; },<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0&quot;weight&quot;: &#39;$W1&#39;}, <br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 {&quot;handle&quot;: {&quot;scope&quot;: &quot;queue&quot=
;, &quot;id&quot;:&#39;$QID2&#39; },<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0&quot;weight&quot;: &#39;$W2&#39;}], <br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 {&quot;handle&quot;: {&quot;scope&quot;: &quot;queue&quot=
;, &quot;id&quot;:&#39;$QID3&#39; },<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0&quot;weight&quot;: &#39;$W3&#39;}], <br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 &quot;output&quot;: { &quot;handle&quot;: {&quot;scope&quot;:&qu=
ot;netdev&quot;},<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 &quot;output&quot;: { &quot;handle&quot;: {&quot;scope&quot;:&qu=
ot;netdev&quot;},<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0&quot;bw-max&quot;: 10000000}}&#39;<br>
{&#39;handle&#39;: {&#39;id&#39;: 0, &#39;scope&#39;: &#39;netdev&#39;}}<br=
>
<br>
* Delegation<br>
<br>
A container wants to set a B/W limit on 2 of its own queues:<br>
<br>
./tools/net/ynl/cli.py --spec Documentation/netlink/specs/shaper.yaml \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 --do group --json &#39;{&quot;ifindex&quot;:&#3=
9;$IFINDEX&#39;, <br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 &quot;inputs&quot;: [ <br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 {&quot;handle&quot;: {&quot;scope&quot;: &quot;queue&quot=
;, &quot;id&quot;:&#39;$QID1&#39; },<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0&quot;weight&quot;: &#39;$W1&#39;}, <br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 {&quot;handle&quot;: {&quot;scope&quot;: &quot;queue&quot=
;, &quot;id&quot;:&#39;$QID2&#39; },<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0&quot;weight&quot;: &#39;$W2&#39;}], <br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 &quot;output&quot;: { &quot;handle&quot;: {&quot;scope&quot;:&qu=
ot;detached&quot;},<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0&quot;bw-max&quot;: 5000000}}&#39;<br>
{&#39;handle&#39;: {&#39;id&#39;: 0, &#39;scope&#39;: &#39;detached&#39;}}<=
br>
<br>
* Cleanup:<br>
<br>
Deleting a single queue shaper:<br>
<br>
./tools/net/ynl/cli.py --spec Documentation/netlink/specs/shaper.yaml \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 --do delete --json \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &#39;{&quot;ifindex&quot;:&#39;$IFINDEX&#39;, <=
br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;handle&quot;: {&quot;scope&quot;: =
&quot;queue&quot;, &quot;id&quot;:&#39;$QID1&#39; }}&#39;<br>
<br>
deleting the last shaper under a group deletes the group, too:<br>
<br>
./tools/net/ynl/cli.py --spec Documentation/netlink/specs/shaper.yaml \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 --do delete --json \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &#39;{&quot;ifindex&quot;:&#39;$IFINDEX&#39;, <=
br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;handle&quot;: {&quot;scope&quot;: =
&quot;queue&quot;, &quot;id&quot;:&#39;$QID2&#39; }}&#39;<br>
./tools/net/ynl/cli.py --spec Documentation/netlink/specs/shaper.yaml \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 --do get --json &#39;{&quot;ifindex&quot;:&#39;=
$IF&#39;, <br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 &quot;handle&quot;: { &quot;scope&quot;: &quot;detached&q=
uot;, &quot;id&quot;: 0}}&#39;<br>
Netlink error: Invalid argument<br>
nl_len =3D 80 (64) nl_flags =3D 0x300 nl_type =3D 2<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 error: -22<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 extack: {&#39;msg&#39;: &quot;Can&#39;t find sh=
aper for handle 10000000&quot;}<br>
<br>
Changes from RFC v2:<br>
=C2=A0- added patch 1<br>
=C2=A0- fixed deprecated API usage<br>
<br>
RFC v2: <a href=3D"https://lore.kernel.org/netdev/cover.1721851988.git.pabe=
ni@redhat.com/" rel=3D"noreferrer" target=3D"_blank">https://lore.kernel.or=
g/netdev/cover.1721851988.git.pabeni@redhat.com/</a><br>
<br>
Changes from RFC v1:<br>
=C2=A0- set() and delete() ops operate on a single shaper<br>
=C2=A0- added group() op to allow grouping and nesting<br>
=C2=A0- split the NL implementation into multiple patches to help reviewing=
<br>
<br>
RFC v1: <a href=3D"https://lore.kernel.org/netdev/cover.1719518113.git.pabe=
ni@redhat.com/" rel=3D"noreferrer" target=3D"_blank">https://lore.kernel.or=
g/netdev/cover.1719518113.git.pabeni@redhat.com/</a><br>
<br>
[1] <a href=3D"https://lore.kernel.org/netdev/20240405102313.GA310894@kerne=
l.org/" rel=3D"noreferrer" target=3D"_blank">https://lore.kernel.org/netdev=
/20240405102313.GA310894@kernel.org/</a><br>
<br>
Paolo Abeni (8):<br>
=C2=A0 tools: ynl: lift an assumption about spec file name<br>
=C2=A0 netlink: spec: add shaper YAML spec<br>
=C2=A0 net-shapers: implement NL get operation<br>
=C2=A0 net-shapers: implement NL set and delete operations<br>
=C2=A0 net-shapers: implement NL group operation<br>
=C2=A0 netlink: spec: add shaper introspection support<br>
=C2=A0 net: shaper: implement introspection support<br>
=C2=A0 testing: net-drv: add basic shaper test<br>
<br>
Sudheer Mogilappagari (2):<br>
=C2=A0 iavf: Add net_shaper_ops support<br>
=C2=A0 iavf: add support to exchange qos capabilities<br>
<br>
Wenjun Wu (2):<br>
=C2=A0 virtchnl: support queue rate limit and quanta size configuration<br>
=C2=A0 ice: Support VF queue rate limit and quanta size configuration<br>
<br>
=C2=A0Documentation/netlink/specs/shaper.yaml=C2=A0 =C2=A0 =C2=A0 =C2=A0| 3=
37 ++++++<br>
=C2=A0Documentation/networking/kapi.rst=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0|=C2=A0 =C2=A03 +<br>
=C2=A0MAINTAINERS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=
=A0 =C2=A01 +<br>
=C2=A0drivers/net/Kconfig=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A01 +<br>
=C2=A0drivers/net/ethernet/intel/Kconfig=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 |=C2=A0 =C2=A01 +<br>
=C2=A0drivers/net/ethernet/intel/iavf/iavf.h=C2=A0 =C2=A0 =C2=A0 =C2=A0 |=
=C2=A0 13 +<br>
=C2=A0drivers/net/ethernet/intel/iavf/iavf_main.c=C2=A0 =C2=A0| 215 +++-<br=
>
=C2=A0drivers/net/ethernet/intel/iavf/iavf_txrx.h=C2=A0 =C2=A0|=C2=A0 =C2=
=A02 +<br>
=C2=A0.../net/ethernet/intel/iavf/iavf_virtchnl.c=C2=A0 =C2=A0| 157 ++-<br>
=C2=A0drivers/net/ethernet/intel/ice/ice.h=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 |=C2=A0 =C2=A02 +<br>
=C2=A0drivers/net/ethernet/intel/ice/ice_base.c=C2=A0 =C2=A0 =C2=A0|=C2=A0 =
=C2=A02 +<br>
=C2=A0drivers/net/ethernet/intel/ice/ice_common.c=C2=A0 =C2=A0|=C2=A0 21 +<=
br>
=C2=A0.../net/ethernet/intel/ice/ice_hw_autogen.h=C2=A0 =C2=A0|=C2=A0 =C2=
=A08 +<br>
=C2=A0drivers/net/ethernet/intel/ice/ice_txrx.h=C2=A0 =C2=A0 =C2=A0|=C2=A0 =
=C2=A01 +<br>
=C2=A0drivers/net/ethernet/intel/ice/ice_type.h=C2=A0 =C2=A0 =C2=A0|=C2=A0 =
=C2=A01 +<br>
=C2=A0drivers/net/ethernet/intel/ice/ice_vf_lib.h=C2=A0 =C2=A0|=C2=A0 =C2=
=A08 +<br>
=C2=A0drivers/net/ethernet/intel/ice/ice_virtchnl.c | 333 ++++++<br>
=C2=A0drivers/net/ethernet/intel/ice/ice_virtchnl.h |=C2=A0 11 +<br>
=C2=A0.../intel/ice/ice_virtchnl_allowlist.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 |=
=C2=A0 =C2=A06 +<br>
=C2=A0drivers/net/netdevsim/netdev.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 |=C2=A0 37 +<br>
=C2=A0include/linux/avf/virtchnl.h=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 | 119 +++<br>
=C2=A0include/linux/netdevice.h=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 17 +<br>
=C2=A0include/net/net_shaper.h=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 169 +++<br>
=C2=A0include/uapi/linux/net_shaper.h=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0|=C2=A0 91 ++<br>
=C2=A0net/Kconfig=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=
=A0 =C2=A03 +<br>
=C2=A0net/Makefile=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=
=A01 +<br>
=C2=A0net/core/dev.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=A02 +<=
br>
=C2=A0net/core/dev.h=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=A06 +<=
br>
=C2=A0net/shaper/Makefile=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A09 +<br>
=C2=A0net/shaper/shaper.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| 963 ++++++++++++++++++<br=
>
=C2=A0net/shaper/shaper_nl_gen.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 | 142 +++<br>
=C2=A0net/shaper/shaper_nl_gen.h=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 30 +<br>
=C2=A0tools/net/ynl/ynl-gen-c.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=A06 +-<br>
=C2=A0tools/testing/selftests/drivers/net/Makefile=C2=A0 |=C2=A0 =C2=A01 +<=
br>
=C2=A0tools/testing/selftests/drivers/net/shaper.py | 267 +++++<br>
=C2=A0.../testing/selftests/net/lib/py/__init__.py=C2=A0 |=C2=A0 =C2=A01 +<=
br>
=C2=A0tools/testing/selftests/net/lib/py/ynl.py=C2=A0 =C2=A0 =C2=A0|=C2=A0 =
=C2=A05 +<br>
=C2=A037 files changed, 2988 insertions(+), 4 deletions(-)<br>
=C2=A0create mode 100644 Documentation/netlink/specs/shaper.yaml<br>
=C2=A0create mode 100644 include/net/net_shaper.h<br>
=C2=A0create mode 100644 include/uapi/linux/net_shaper.h<br>
=C2=A0create mode 100644 net/shaper/Makefile<br>
=C2=A0create mode 100644 net/shaper/shaper.c<br>
=C2=A0create mode 100644 net/shaper/shaper_nl_gen.c<br>
=C2=A0create mode 100644 net/shaper/shaper_nl_gen.h<br>
=C2=A0create mode 100755 tools/testing/selftests/drivers/net/shaper.py<br>
<br>
-- <br>
2.45.2<br>
<br>
<br>
</div><br clear=3D"all"><div><br></div><span class=3D"gmail_signature_prefi=
x">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=
=3D"gmail_signature"><div dir=3D"ltr"><div>Artists/Musician Campout Aug 9-1=
1</div><div><a href=3D"https://www.eventbrite.com/e/healing-arts-event-tick=
ets-928910826287" target=3D"_blank">https://www.eventbrite.com/e/healing-ar=
ts-event-tickets-928910826287</a><br></div><div>Dave T=C3=A4ht CSO, LibreQo=
s<br></div></div></div></div>

--00000000000079bbce061e7d2512--

--===============8026020750480778622==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============8026020750480778622==--
