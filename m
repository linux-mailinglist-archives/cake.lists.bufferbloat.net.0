Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 33C528FA6F0
	for <lists+cake@lfdr.de>; Tue,  4 Jun 2024 02:22:21 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id AB85E3CB56;
	Mon,  3 Jun 2024 20:22:19 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1717460539;
	bh=hbiLO5d+9B3FPYmVGsFoXofkZFkVNrRyziOdAgxKSsQ=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:
	 From;
	b=je2K4nBwJZXdL8dwbomC2R8XSumZoVsfmhwhaiinkd3TqfGNsOPaTvgGUQ4XGwK8u
	 j5v/puhYq96CeF4nqkqkX0b1bOa9GYOBeqrmfw8wODEq/k4h9vAoWQXnHnnJwMSeKI
	 N0PHCYitHVaVHA3ly+gZwnG4rlJSu/mBacpUkCc5llw9u/FCuJ1VELmBMikRFavnxT
	 xPy7WOQTWFMxwvV9at5aRvYIphqQg0sI+Kr1Hzp1F/Xtn9XiJW/cUFwmTRPmcQkI+z
	 8PL0rhM3t9fyg26Pg5ZJYXheTVhTLLpHxaxJyY2Wz73XXPq/YGS70bNQY0YRuSFs+U
	 Qg4Lx1NT6XSLA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com
 [IPv6:2a00:1450:4864:20::334])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id EAC2F3CB37
 for <cake@lists.bufferbloat.net>; Mon,  3 Jun 2024 20:22:17 -0400 (EDT)
Received: by mail-wm1-x334.google.com with SMTP id
 5b1f17b1804b1-4213870aafdso18954355e9.2
 for <cake@lists.bufferbloat.net>; Mon, 03 Jun 2024 17:22:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1717460536; x=1718065336; darn=lists.bufferbloat.net;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :from:to:cc:subject:date:message-id:reply-to;
 bh=jo7wahCUT7rr/xs8pxZCPzfjix5p6t03rVHKN85O3R8=;
 b=kpejg+7JEjAgr3A0f+AE2AFXJGQhxzIk1JkFWUtvZc2COD7LeQzRBaJHHXvu9viGRs
 0cayv2iqjk2Xv/Np9hYxiU25UIQNpY0HoENawxpu781NlNYFivSyd+UUHEkSL9hENY32
 kE/BuJ6Bhb4v4wDSUgSJ9joXeuxKbv0/1zZgp1uxXKD6VIyfa9/Xol+3j+QF9ZvENJej
 h/gPToEHu8zAd2K4bDX39Tm+0sngcDTg3ixmdFR2IP4M2nmRni4nLYEhQii0Vn1DLqyX
 ydLyZpCSk0Y3HsepeLboQzFL0/ZntSCiIolIKCaaR4ahfljbmlDUXIBU+vYmig1ndebq
 Jwlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1717460536; x=1718065336;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=jo7wahCUT7rr/xs8pxZCPzfjix5p6t03rVHKN85O3R8=;
 b=JNF4owg8uD4OsgLHqvlAB38FrPQS9fcscBo+DuMYuyxahQwDMWWFGFA3AQQVIj7hDW
 YyPOIhhvRw4aoWXr/mzULsiUoZ5zwqdAfiInftCUs6GeB6bczuWs7L0JyP9P7DsEL1Tm
 JIxB/XUsT4mO3dTIXv+zfJARjyTMIpJmE2WfxovynPv2YoFcGPlllhxzkk7cnvFAIcjc
 U0opr5PEUnxXaDJ4meUoC5A79S1bcB1M7aLkVh1yzFVczQifhzMyg8qEP1E/oBmtsrUG
 Ea6ee2h2YxARdBdk7LC5S0ElCxpLfIYaN1m/pxxvmhltLCzFJRDTFyTN07TJMB2j21NS
 vX1w==
X-Gm-Message-State: AOJu0Yxk7H9xMPKSvfnIkPaYDC7nB1adK6Dv8mRZDdj5V++lOKg7dWzc
 VEpuljNdKOa3zLXMgKB5JKNd95m1uPYPTH/YHJORccbRjMrjRsP5FS4dOWld0oyAQhnkV56JpWu
 63KeB9m+N8V42TsOUYpxO/HFdCB9uJQ==
X-Google-Smtp-Source: AGHT+IG+F5t/we+P1WoENbQrYZ7ufI/O3l4UBC7gYv9dDE14jBhBQppW21au0+IJkmIZLk+hC9aLJ4XelgidUqjV0Do=
X-Received: by 2002:a05:600c:46d4:b0:41f:e56c:ef81 with SMTP id
 5b1f17b1804b1-4212e0448admr88127405e9.1.1717460536249; Mon, 03 Jun 2024
 17:22:16 -0700 (PDT)
MIME-Version: 1.0
References: <3d1e2d945904a0fb55258559eb7322d7e11066b6.1715199358.git.pabeni@redhat.com>
In-Reply-To: <3d1e2d945904a0fb55258559eb7322d7e11066b6.1715199358.git.pabeni@redhat.com>
Date: Mon, 3 Jun 2024 17:22:04 -0700
Message-ID: <CAA93jw6jOB69C0=um6AdYrT9_ZJEB8Jr7TpQg3os1n+O7nRfrw@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] Fwd: [RFC PATCH] net: introduce HW Rate Limiting Driver API
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
Content-Type: multipart/mixed; boundary="===============4514210007065125860=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============4514210007065125860==
Content-Type: multipart/alternative; boundary="0000000000002dd3ce061a0571b1"

--0000000000002dd3ce061a0571b1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

---------- Forwarded message ---------
From: Paolo Abeni <pabeni@redhat.com>
Date: Wed, May 8, 2024 at 1:27=E2=80=AFPM
Subject: [RFC PATCH] net: introduce HW Rate Limiting Driver API
To: <netdev@vger.kernel.org>
Cc: Jakub Kicinski <kuba@kernel.org>, Jiri Pirko <jiri@resnulli.us>, Madhu
Chittim <madhu.chittim@intel.com>, Sridhar Samudrala <
sridhar.samudrala@intel.com>, Simon Horman <horms@kernel.org>, John
Fastabend <john.fastabend@gmail.com>, Sunil Kovvuri Goutham <
sgoutham@marvell.com>, Jamal Hadi Salim <jhs@mojatatu.com>


This is the first incarnation in a formal (pre-RFC) patch of the
HW TX Rate Limiting Driver API proposal shared here[1].

The goal is to outline the proposed APIs before pushing the actual
implementation.

The network devices gain a new ops struct to directly manipulate the
H/W shapers implemented by the NIC.

The shapers can be attached to a pre-defined set of 'domains' - port,
vf, etc. - and the overall shapers configuration pushed to the H/W is
maintained by the kernel.

Each shaper is identified by an unique integer id based on the domain
and additional domain-specific information - e.g. for the VF domain, the
virtual function number/identifier.

[1] https://lore.kernel.org/netdev/20240405102313.GA310894@kernel.org/

Co-developed-by: Simon Horman <horms@kernel.org>
Signed-off-by: Simon Horman <horms@kernel.org>
Signed-off-by: Paolo Abeni <pabeni@redhat.com>
---
 include/linux/netdevice.h |  15 +++
 include/net/net_shaper.h  | 206 ++++++++++++++++++++++++++++++++++++++
 net/Kconfig               |   3 +
 3 files changed, 224 insertions(+)
 create mode 100644 include/net/net_shaper.h

diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
index cf261fb89d73..39f66af014be 100644
--- a/include/linux/netdevice.h
+++ b/include/linux/netdevice.h
@@ -79,6 +79,8 @@ struct xdp_buff;
 struct xdp_frame;
 struct xdp_metadata_ops;
 struct xdp_md;
+struct net_shaper_ops;
+struct net_shaper_data;

 typedef u32 xdp_features_t;

@@ -1596,6 +1598,13 @@ struct net_device_ops {
        int                     (*ndo_hwtstamp_set)(struct net_device *dev,
                                                    struct
kernel_hwtstamp_config *kernel_config,
                                                    struct netlink_ext_ack
*extack);
+
+#if IS_ENABLED(CONFIG_NET_SHAPER)
+       /** @net_shaper_ops: Device shaping offload operations
+        * see include/net/net_shapers.h
+        */
+       const struct net_shaper_ops *net_shaper_ops;
+#endif
 };

 /**
@@ -2403,6 +2412,12 @@ struct net_device {
        /** @page_pools: page pools created for this netdevice */
        struct hlist_head       page_pools;
 #endif
+#if IS_ENABLED(CONFIG_NET_SHAPER)
+       /** @net_shaper_data: data tracking the current shaper status
+        *  see include/net/net_shapers.h
+        */
+       struct net_shaper_data *net_shaper_data;
+#endif
 };
 #define to_net_dev(d) container_of(d, struct net_device, dev)

diff --git a/include/net/net_shaper.h b/include/net/net_shaper.h
new file mode 100644
index 000000000000..a4fbadd99870
--- /dev/null
+++ b/include/net/net_shaper.h
@@ -0,0 +1,206 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+
+#ifndef _NET_SHAPER_H_
+#define _NET_SHAPER_H_
+
+#include <linux/types.h>
+#include <linux/netdevice.h>
+#include <linux/netlink.h>
+
+/**
+ * enum net_shaper_metric - the metric of the shaper
+ * @NET_SHAPER_METRIC_PPS: Shaper operates on a packets per second basis
+ * @NET_SHAPER_METRIC_BPS: Shaper operates on a bits per second basis
+ */
+enum net_shaper_metric {
+       NET_SHAPER_METRIC_PPS,
+       NET_SHAPER_METRIC_BPS
+};
+
+/**
+ * struct net_shaper_info - represents a shaping node on the NIC H/W
+ * @metric: Specify if the bw limits refers to PPS or BPS
+ * @bw_min: Minimum guaranteed rate for this shaper
+ * @bw_max: Maximum peak bw allowed for this shaper
+ * @burst: Maximum burst for the peek rate of this shaper
+ * @priority: Scheduling priority for this shaper
+ * @weight: Scheduling weight for this shaper
+ */
+struct net_shaper_info {
+       enum net_shaper_metric metric;
+       u64 bw_min;     /* minimum guaranteed bandwidth, according to
metric */
+       u64 bw_max;     /* maximum allowed bandwidth */
+       u32 burst;      /* maximum burst in bytes for bw_max */
+       u32 priority;   /* scheduling strict priority */
+       u32 weight;     /* scheduling WRR weight*/
+};
+
+/**
+ * enum net_shaper_scope - the different scopes where a shaper could be
attached
+ * @NET_SHAPER_SCOPE_PORT:   The root shaper for the whole H/W.
+ * @NET_SHAPER_SCOPE_NETDEV: The main shaper for the given network device.
+ * @NET_SHAPER_SCOPE_VF:     The shaper is attached to the given virtual
+ * function.
+ * @NET_SHAPER_SCOPE_QUEUE_GROUP: The shaper groups multiple queues under
the
+ * same device.
+ * @NET_SHAPER_SCOPE_QUEUE:  The shaper is attached to the given device
queue.
+ *
+ * NET_SHAPER_SCOPE_PORT and NET_SHAPER_SCOPE_VF are only available on
+ * PF devices, usually inside the host/hypervisor.
+ * NET_SHAPER_SCOPE_NETDEV, NET_SHAPER_SCOPE_QUEUE_GROUP and
+ * NET_SHAPER_SCOPE_QUEUE are available on both PFs and VFs devices.
+ */
+enum net_shaper_scope {
+       NET_SHAPER_SCOPE_PORT,
+       NET_SHAPER_SCOPE_NETDEV,
+       NET_SHAPER_SCOPE_VF,
+       NET_SHAPER_SCOPE_QUEUE_GROUP,
+       NET_SHAPER_SCOPE_QUEUE,
+};
+
+/**
+ * struct net_shaper_ops - Operations on device H/W shapers
+ * @add: Creates a new shaper in the specified scope.
+ * @set: Modify the existing shaper.
+ * @delete: Delete the specified shaper.
+ * @move: Move an existing shaper under a different parent.
+ *
+ * The initial shaping configuration ad device initialization is empty/
+ * a no-op/does not constraint the b/w in any way.
+ * The network core keeps track of the applied user-configuration in
+ * per device storage.
+ *
+ * Each shaper is uniquely identified within the device with an 'handle',
+ * dependent on the shaper scope and other data, see @shaper_make_handle()
+ */
+struct net_shaper_ops {
+       /** add - Add a shaper inside the shaper hierarchy
+        * @dev: netdevice to operate on
+        * @handle: the shaper indetifier
+        * @shaper: configuration of shaper
+        * @extack: Netlink extended ACK for reporting errors.
+        *
+        * Return:
+        * * 0 on success
+        * * %-EOPNOTSUPP - Operation is not supported by hardware, driver,
+        *                  or core for any reason. @extack should be set t=
o
+        *                  text describing the reason.
+        * * Other negative error values on failure.
+        *
+        * Examples or reasons this operation may fail include:
+        * * H/W resources limits.
+        * * Can=E2=80=99t respect the requested bw limits.
+        */
+       int (*add)(struct net_device *dev, u32 handle,
+                  const struct net_shaper_info *shaper,
+                  struct netlink_ext_ack *extack);
+
+       /** set - Update the specified shaper, if it exists
+        * @dev: Netdevice to operate on.
+        * @handle: the shaper identifier
+        * @shaper: Configuration of shaper.
+        * @extack: Netlink extended ACK for reporting errors.
+        *
+        * Return:
+        * * %0 - Success
+        * * %-EOPNOTSUPP - Operation is not supported by hardware, driver,
+        *                  or core for any reason. @extack should be set t=
o
+        *                  text describing the reason.
+        * * Other negative error values on failure.
+        */
+       int (*set)(struct net_device *dev, u32 handle,
+                  const struct net_shaper_info *shaper,
+                  struct netlink_ext_ack *extack);
+
+       /** delete - Removes a shaper from the NIC
+        * @dev: netdevice to operate on.
+        * @handle: the shaper identifier
+        * @extack: Netlink extended ACK for reporting errors.
+        *
+        * Return:
+        * * %0 - Success
+        * * %-EOPNOTSUPP - Operation is not supported by hardware, driver,
+        *                  or core for any reason. @extack should be set t=
o
+        *                  text describing the reason.
+        * * Other negative error value on failure.
+        */
+       int (*delete)(struct net_device *dev, u32 handle,
+                     struct netlink_ext_ack *extack);
+
+       /** Move - change the parent id of the specified shaper
+        * @dev: netdevice to operate on.
+        * @handle: unique identifier for the shaper
+        * @new_parent_id: identifier of the new parent for this shaper
+        * @extack: Netlink extended ACK for reporting errors.
+        *
+        * Move the specified shaper in the hierarchy replacing its
+        * current parent shaper with @new_parent_id
+        *
+        * Return:
+        * * %0 - Success
+        * * %-EOPNOTSUPP - Operation is not supported by hardware, driver,
+        *                  or core for any reason. @extack should be set t=
o
+        *                  text describing the reason.
+        * * Other negative error values on failure.
+        */
+       int (*move)(struct net_device *dev, u32 handle,
+                   u32 new_parent_handle, struct netlink_ext_ack *extack);
+};
+
+/**
+ * net_shaper_make_handle - creates an unique shaper identifier
+ * @scope: the shaper scope
+ * @vf: virtual function number
+ * @id: queue group or queue id
+ *
+ * Return: an unique identifier for the shaper
+ *
+ * Combines the specified arguments to create an unique identifier for
+ * the shaper.
+ * The virtual function number is only used within @NET_SHAPER_SCOPE_VF,
+ * @NET_SHAPER_SCOPE_QUEUE_GROUP and @NET_SHAPER_SCOPE_QUEUE.
+ * The @id number is only used for @NET_SHAPER_SCOPE_QUEUE_GROUP and
+ * @NET_SHAPER_SCOPE_QUEUE, and must be, respectively, the queue group
+ * identifier or the queue number.
+ */
+u32 net_shaper_make_handle(enum net_shaper_scope scope, int vf, int id);
+
+/*
+ * Examples:
+ * - set shaping on a given queue
+ *   struct shaper_info info =3D { }; // fill this
+ *   u32 handle =3D shaper_make_handle(NET_SHAPER_SCOPE_QUEUE, 0, queue_id=
);
+ *   dev->shaper_ops->add(dev, handle, &info, NULL);
+ *
+ * - create a queue group with a queue group shaping limits.
+ *   Assuming the following topology already exists:
+ *                       < netdev shaper  >
+ *                        /              \
+ *               <queue 0 shaper> . . .  <queue N shaper>
+ *
+ *   struct shaper_info ginfo =3D { }; // fill this
+ *   u32 ghandle =3D shaper_make_handle(NET_SHAPER_SCOPE_QUEUE_GROUP, 0, 0=
);
+ *   dev->shaper_ops->add(dev, ghandle, &ginfo);
+ *
+ *   // now topology is:
+ *   //                              < netdev shaper  >
+ *   //                             /         |          \
+ *   //                            /          |       < newly created
shaper  >
+ *   //                           /           |
+ *   //        <queue 0 shaper> . . .    <queue N shaper>
+ *
+ *   // move a shapers for queues 3..n out of such queue group
+ *   for (i =3D 0; i <=3D 2; ++i) {
+ *       u32 qhandle =3D net_shaper_make_handle(NET_SHAPER_SCOPE_QUEUE, 0,
i);
+ *       dev->netshaper_ops->move(dev, qhandle, ghandle, NULL);
+ *   }
+ *
+ *   // now the topology is:
+ *   //                                < netdev shaper  >
+ *   //                                 /            \
+ *   //               < newly created shaper>   <queue 3 shaper> .. <queue
n shaper>
+ *   //                /               \
+ *   //        <queue 0 shaper> . . .    <queue 2 shaper>
+ */
+#endif
+
diff --git a/net/Kconfig b/net/Kconfig
index f0a8692496ff..29c6fec54711 100644
--- a/net/Kconfig
+++ b/net/Kconfig
@@ -66,6 +66,9 @@ config SKB_DECRYPTED
 config SKB_EXTENSIONS
        bool

+config NET_SHAPER
+       bool
+
 menu "Networking options"

 source "net/packet/Kconfig"
--=20
2.43.2




--=20
https://www.linkedin.com/feed/update/urn:li:activity:7203400057172180992/
Donations Drive.
Dave T=C3=A4ht CSO, LibreQos

--0000000000002dd3ce061a0571b1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">---------- Forwarded message ---------<br>From: <strong cla=
ss=3D"gmail_sendername" dir=3D"auto">Paolo Abeni</strong> <span dir=3D"auto=
">&lt;<a href=3D"mailto:pabeni@redhat.com">pabeni@redhat.com</a>&gt;</span>=
<br>Date: Wed, May 8, 2024 at 1:27=E2=80=AFPM<br>Subject: [RFC PATCH] net: =
introduce HW Rate Limiting Driver API<br>To:  &lt;<a href=3D"mailto:netdev@=
vger.kernel.org">netdev@vger.kernel.org</a>&gt;<br>Cc: Jakub Kicinski &lt;<=
a href=3D"mailto:kuba@kernel.org">kuba@kernel.org</a>&gt;, Jiri Pirko &lt;<=
a href=3D"mailto:jiri@resnulli.us">jiri@resnulli.us</a>&gt;, Madhu Chittim =
&lt;<a href=3D"mailto:madhu.chittim@intel.com">madhu.chittim@intel.com</a>&=
gt;, Sridhar Samudrala &lt;<a href=3D"mailto:sridhar.samudrala@intel.com">s=
ridhar.samudrala@intel.com</a>&gt;, Simon Horman &lt;<a href=3D"mailto:horm=
s@kernel.org">horms@kernel.org</a>&gt;, John Fastabend &lt;<a href=3D"mailt=
o:john.fastabend@gmail.com">john.fastabend@gmail.com</a>&gt;, Sunil Kovvuri=
 Goutham &lt;<a href=3D"mailto:sgoutham@marvell.com">sgoutham@marvell.com</=
a>&gt;, Jamal Hadi Salim &lt;<a href=3D"mailto:jhs@mojatatu.com">jhs@mojata=
tu.com</a>&gt;<br></div><br><br>This is the first incarnation in a formal (=
pre-RFC) patch of the<br>
HW TX Rate Limiting Driver API proposal shared here[1].<br>
<br>
The goal is to outline the proposed APIs before pushing the actual<br>
implementation.<br>
<br>
The network devices gain a new ops struct to directly manipulate the<br>
H/W shapers implemented by the NIC.<br>
<br>
The shapers can be attached to a pre-defined set of &#39;domains&#39; - por=
t,<br>
vf, etc. - and the overall shapers configuration pushed to the H/W is<br>
maintained by the kernel.<br>
<br>
Each shaper is identified by an unique integer id based on the domain<br>
and additional domain-specific information - e.g. for the VF domain, the<br=
>
virtual function number/identifier.<br>
<br>
[1] <a href=3D"https://lore.kernel.org/netdev/20240405102313.GA310894@kerne=
l.org/" rel=3D"noreferrer" target=3D"_blank">https://lore.kernel.org/netdev=
/20240405102313.GA310894@kernel.org/</a><br>
<br>
Co-developed-by: Simon Horman &lt;<a href=3D"mailto:horms@kernel.org" targe=
t=3D"_blank">horms@kernel.org</a>&gt;<br>
Signed-off-by: Simon Horman &lt;<a href=3D"mailto:horms@kernel.org" target=
=3D"_blank">horms@kernel.org</a>&gt;<br>
Signed-off-by: Paolo Abeni &lt;<a href=3D"mailto:pabeni@redhat.com" target=
=3D"_blank">pabeni@redhat.com</a>&gt;<br>
---<br>
=C2=A0include/linux/netdevice.h |=C2=A0 15 +++<br>
=C2=A0include/net/net_shaper.h=C2=A0 | 206 ++++++++++++++++++++++++++++++++=
++++++<br>
=C2=A0net/Kconfig=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=
=C2=A0 =C2=A03 +<br>
=C2=A03 files changed, 224 insertions(+)<br>
=C2=A0create mode 100644 include/net/net_shaper.h<br>
<br>
diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h<br>
index cf261fb89d73..39f66af014be 100644<br>
--- a/include/linux/netdevice.h<br>
+++ b/include/linux/netdevice.h<br>
@@ -79,6 +79,8 @@ struct xdp_buff;<br>
=C2=A0struct xdp_frame;<br>
=C2=A0struct xdp_metadata_ops;<br>
=C2=A0struct xdp_md;<br>
+struct net_shaper_ops;<br>
+struct net_shaper_data;<br>
<br>
=C2=A0typedef u32 xdp_features_t;<br>
<br>
@@ -1596,6 +1598,13 @@ struct net_device_ops {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 int=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(*ndo_hwtstamp_set)(struct net_device *de=
v,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 struct kernel_hwtstamp_config *kernel_co=
nfig,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 struct netlink_ext_ack *extack);<br>
+<br>
+#if IS_ENABLED(CONFIG_NET_SHAPER)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0/** @net_shaper_ops: Device shaping offload ope=
rations<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 * see include/net/net_shapers.h<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 */<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0const struct net_shaper_ops *net_shaper_ops;<br=
>
+#endif<br>
=C2=A0};<br>
<br>
=C2=A0/**<br>
@@ -2403,6 +2412,12 @@ struct net_device {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /** @page_pools: page pools created for this ne=
tdevice */<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 struct hlist_head=C2=A0 =C2=A0 =C2=A0 =C2=A0pag=
e_pools;<br>
=C2=A0#endif<br>
+#if IS_ENABLED(CONFIG_NET_SHAPER)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0/** @net_shaper_data: data tracking the current=
 shaper status<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 *=C2=A0 see include/net/net_shapers.h<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 */<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct net_shaper_data *net_shaper_data;<br>
+#endif<br>
=C2=A0};<br>
=C2=A0#define to_net_dev(d) container_of(d, struct net_device, dev)<br>
<br>
diff --git a/include/net/net_shaper.h b/include/net/net_shaper.h<br>
new file mode 100644<br>
index 000000000000..a4fbadd99870<br>
--- /dev/null<br>
+++ b/include/net/net_shaper.h<br>
@@ -0,0 +1,206 @@<br>
+/* SPDX-License-Identifier: GPL-2.0-or-later */<br>
+<br>
+#ifndef _NET_SHAPER_H_<br>
+#define _NET_SHAPER_H_<br>
+<br>
+#include &lt;linux/types.h&gt;<br>
+#include &lt;linux/netdevice.h&gt;<br>
+#include &lt;linux/netlink.h&gt;<br>
+<br>
+/**<br>
+ * enum net_shaper_metric - the metric of the shaper<br>
+ * @NET_SHAPER_METRIC_PPS: Shaper operates on a packets per second basis<b=
r>
+ * @NET_SHAPER_METRIC_BPS: Shaper operates on a bits per second basis<br>
+ */<br>
+enum net_shaper_metric {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0NET_SHAPER_METRIC_PPS,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0NET_SHAPER_METRIC_BPS<br>
+};<br>
+<br>
+/**<br>
+ * struct net_shaper_info - represents a shaping node on the NIC H/W<br>
+ * @metric: Specify if the bw limits refers to PPS or BPS<br>
+ * @bw_min: Minimum guaranteed rate for this shaper<br>
+ * @bw_max: Maximum peak bw allowed for this shaper<br>
+ * @burst: Maximum burst for the peek rate of this shaper<br>
+ * @priority: Scheduling priority for this shaper<br>
+ * @weight: Scheduling weight for this shaper<br>
+ */<br>
+struct net_shaper_info {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0enum net_shaper_metric metric;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0u64 bw_min;=C2=A0 =C2=A0 =C2=A0/* minimum guara=
nteed bandwidth, according to metric */<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0u64 bw_max;=C2=A0 =C2=A0 =C2=A0/* maximum allow=
ed bandwidth */<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0u32 burst;=C2=A0 =C2=A0 =C2=A0 /* maximum burst=
 in bytes for bw_max */<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0u32 priority;=C2=A0 =C2=A0/* scheduling strict =
priority */<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0u32 weight;=C2=A0 =C2=A0 =C2=A0/* scheduling WR=
R weight*/<br>
+};<br>
+<br>
+/**<br>
+ * enum net_shaper_scope - the different scopes where a shaper could be at=
tached<br>
+ * @NET_SHAPER_SCOPE_PORT:=C2=A0 =C2=A0The root shaper for the whole H/W.<=
br>
+ * @NET_SHAPER_SCOPE_NETDEV: The main shaper for the given network device.=
<br>
+ * @NET_SHAPER_SCOPE_VF:=C2=A0 =C2=A0 =C2=A0The shaper is attached to the =
given virtual<br>
+ * function.<br>
+ * @NET_SHAPER_SCOPE_QUEUE_GROUP: The shaper groups multiple queues under =
the<br>
+ * same device.<br>
+ * @NET_SHAPER_SCOPE_QUEUE:=C2=A0 The shaper is attached to the given devi=
ce queue.<br>
+ *<br>
+ * NET_SHAPER_SCOPE_PORT and NET_SHAPER_SCOPE_VF are only available on<br>
+ * PF devices, usually inside the host/hypervisor.<br>
+ * NET_SHAPER_SCOPE_NETDEV, NET_SHAPER_SCOPE_QUEUE_GROUP and<br>
+ * NET_SHAPER_SCOPE_QUEUE are available on both PFs and VFs devices.<br>
+ */<br>
+enum net_shaper_scope {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0NET_SHAPER_SCOPE_PORT,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0NET_SHAPER_SCOPE_NETDEV,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0NET_SHAPER_SCOPE_VF,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0NET_SHAPER_SCOPE_QUEUE_GROUP,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0NET_SHAPER_SCOPE_QUEUE,<br>
+};<br>
+<br>
+/**<br>
+ * struct net_shaper_ops - Operations on device H/W shapers<br>
+ * @add: Creates a new shaper in the specified scope.<br>
+ * @set: Modify the existing shaper.<br>
+ * @delete: Delete the specified shaper.<br>
+ * @move: Move an existing shaper under a different parent.<br>
+ *<br>
+ * The initial shaping configuration ad device initialization is empty/<br=
>
+ * a no-op/does not constraint the b/w in any way.<br>
+ * The network core keeps track of the applied user-configuration in<br>
+ * per device storage.<br>
+ *<br>
+ * Each shaper is uniquely identified within the device with an &#39;handl=
e&#39;,<br>
+ * dependent on the shaper scope and other data, see @shaper_make_handle()=
<br>
+ */<br>
+struct net_shaper_ops {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0/** add - Add a shaper inside the shaper hierar=
chy<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 * @dev: netdevice to operate on<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 * @handle: the shaper indetifier<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 * @shaper: configuration of shaper<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 * @extack: Netlink extended ACK for reporting =
errors.<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 *<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 * Return:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 * * 0 on success<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 * * %-EOPNOTSUPP - Operation is not supported =
by hardware, driver,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 *=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 or core for any reason. @extack should be set to<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 *=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 text describing the reason.<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 * * Other negative error values on failure.<br=
>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 *<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 * Examples or reasons this operation may fail =
include:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 * * H/W resources limits.<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 * * Can=E2=80=99t respect the requested bw lim=
its.<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 */<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0int (*add)(struct net_device *dev, u32 handle,<=
br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 const struc=
t net_shaper_info *shaper,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 struct netl=
ink_ext_ack *extack);<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0/** set - Update the specified shaper, if it ex=
ists<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 * @dev: Netdevice to operate on.<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 * @handle: the shaper identifier<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 * @shaper: Configuration of shaper.<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 * @extack: Netlink extended ACK for reporting =
errors.<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 *<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 * Return:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 * * %0 - Success<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 * * %-EOPNOTSUPP - Operation is not supported =
by hardware, driver,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 *=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 or core for any reason. @extack should be set to<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 *=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 text describing the reason.<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 * * Other negative error values on failure.<br=
>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 */<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0int (*set)(struct net_device *dev, u32 handle,<=
br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 const struc=
t net_shaper_info *shaper,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 struct netl=
ink_ext_ack *extack);<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0/** delete - Removes a shaper from the NIC<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 * @dev: netdevice to operate on.<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 * @handle: the shaper identifier<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 * @extack: Netlink extended ACK for reporting =
errors.<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 *<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 * Return:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 * * %0 - Success<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 * * %-EOPNOTSUPP - Operation is not supported =
by hardware, driver,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 *=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 or core for any reason. @extack should be set to<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 *=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 text describing the reason.<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 * * Other negative error value on failure.<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 */<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0int (*delete)(struct net_device *dev, u32 handl=
e,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0struct netlink_ext_ack *extack);<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0/** Move - change the parent id of the specifie=
d shaper<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 * @dev: netdevice to operate on.<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 * @handle: unique identifier for the shaper<br=
>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 * @new_parent_id: identifier of the new parent=
 for this shaper<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 * @extack: Netlink extended ACK for reporting =
errors.<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 *<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 * Move the specified shaper in the hierarchy r=
eplacing its<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 * current parent shaper with @new_parent_id<br=
>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 *<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 * Return:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 * * %0 - Success<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 * * %-EOPNOTSUPP - Operation is not supported =
by hardware, driver,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 *=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 or core for any reason. @extack should be set to<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 *=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 text describing the reason.<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 * * Other negative error values on failure.<br=
>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 */<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0int (*move)(struct net_device *dev, u32 handle,=
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0u32 n=
ew_parent_handle, struct netlink_ext_ack *extack);<br>
+};<br>
+<br>
+/**<br>
+ * net_shaper_make_handle - creates an unique shaper identifier<br>
+ * @scope: the shaper scope<br>
+ * @vf: virtual function number<br>
+ * @id: queue group or queue id<br>
+ *<br>
+ * Return: an unique identifier for the shaper<br>
+ *<br>
+ * Combines the specified arguments to create an unique identifier for<br>
+ * the shaper.<br>
+ * The virtual function number is only used within @NET_SHAPER_SCOPE_VF,<b=
r>
+ * @NET_SHAPER_SCOPE_QUEUE_GROUP and @NET_SHAPER_SCOPE_QUEUE.<br>
+ * The @id number is only used for @NET_SHAPER_SCOPE_QUEUE_GROUP and<br>
+ * @NET_SHAPER_SCOPE_QUEUE, and must be, respectively, the queue group<br>
+ * identifier or the queue number.<br>
+ */<br>
+u32 net_shaper_make_handle(enum net_shaper_scope scope, int vf, int id);<b=
r>
+<br>
+/*<br>
+ * Examples:<br>
+ * - set shaping on a given queue<br>
+ *=C2=A0 =C2=A0struct shaper_info info =3D { }; // fill this<br>
+ *=C2=A0 =C2=A0u32 handle =3D shaper_make_handle(NET_SHAPER_SCOPE_QUEUE, 0=
, queue_id);<br>
+ *=C2=A0 =C2=A0dev-&gt;shaper_ops-&gt;add(dev, handle, &amp;info, NULL);<b=
r>
+ *<br>
+ * - create a queue group with a queue group shaping limits.<br>
+ *=C2=A0 =C2=A0Assuming the following topology already exists:<br>
+ *=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0&lt; netdev shaper=C2=A0 &gt;<br>
+ *=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 /=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
+ *=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;queue 0 shape=
r&gt; . . .=C2=A0 &lt;queue N shaper&gt;<br>
+ *<br>
+ *=C2=A0 =C2=A0struct shaper_info ginfo =3D { }; // fill this<br>
+ *=C2=A0 =C2=A0u32 ghandle =3D shaper_make_handle(NET_SHAPER_SCOPE_QUEUE_G=
ROUP, 0, 0);<br>
+ *=C2=A0 =C2=A0dev-&gt;shaper_ops-&gt;add(dev, ghandle, &amp;ginfo);<br>
+ *<br>
+ *=C2=A0 =C2=A0// now topology is:<br>
+ *=C2=A0 =C2=A0//=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt; netdev shaper=C2=A0 &=
gt;<br>
+ *=C2=A0 =C2=A0//=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
+ *=C2=A0 =C2=A0//=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 |=C2=A0 =C2=A0 =C2=A0 =C2=A0&lt; newly created shaper=C2=A0 &gt;<br>
+ *=C2=A0 =C2=A0//=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0|<br>
+ *=C2=A0 =C2=A0//=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;queue 0 shaper&gt; . . .=
=C2=A0 =C2=A0 &lt;queue N shaper&gt;<br>
+ *<br>
+ *=C2=A0 =C2=A0// move a shapers for queues 3..n out of such queue group<b=
r>
+ *=C2=A0 =C2=A0for (i =3D 0; i &lt;=3D 2; ++i) {<br>
+ *=C2=A0 =C2=A0 =C2=A0 =C2=A0u32 qhandle =3D net_shaper_make_handle(NET_SH=
APER_SCOPE_QUEUE, 0, i);<br>
+ *=C2=A0 =C2=A0 =C2=A0 =C2=A0dev-&gt;netshaper_ops-&gt;move(dev, qhandle, =
ghandle, NULL);<br>
+ *=C2=A0 =C2=A0}<br>
+ *<br>
+ *=C2=A0 =C2=A0// now the topology is:<br>
+ *=C2=A0 =C2=A0//=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt; netdev shaper=
=C2=A0 &gt;<br>
+ *=C2=A0 =C2=A0//=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
+ *=C2=A0 =C2=A0//=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&l=
t; newly created shaper&gt;=C2=A0 =C2=A0&lt;queue 3 shaper&gt; .. &lt;queue=
 n shaper&gt;<br>
+ *=C2=A0 =C2=A0//=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+ *=C2=A0 =C2=A0//=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;queue 0 shaper&gt; . . .=
=C2=A0 =C2=A0 &lt;queue 2 shaper&gt;<br>
+ */<br>
+#endif<br>
+<br>
diff --git a/net/Kconfig b/net/Kconfig<br>
index f0a8692496ff..29c6fec54711 100644<br>
--- a/net/Kconfig<br>
+++ b/net/Kconfig<br>
@@ -66,6 +66,9 @@ config SKB_DECRYPTED<br>
=C2=A0config SKB_EXTENSIONS<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 bool<br>
<br>
+config NET_SHAPER<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0bool<br>
+<br>
=C2=A0menu &quot;Networking options&quot;<br>
<br>
=C2=A0source &quot;net/packet/Kconfig&quot;<br>
-- <br>
2.43.2<br>
<br>
<br>
</div><br clear=3D"all"><div><br></div><span class=3D"gmail_signature_prefi=
x">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=
=3D"gmail_signature"><div dir=3D"ltr"><div><a href=3D"https://www.linkedin.=
com/feed/update/urn:li:activity:7203400057172180992/" target=3D"_blank">htt=
ps://www.linkedin.com/feed/update/urn:li:activity:7203400057172180992/</a><=
/div><div>Donations Drive.</div><div>Dave T=C3=A4ht CSO, LibreQos<br></div>=
</div></div></div>

--0000000000002dd3ce061a0571b1--

--===============4514210007065125860==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============4514210007065125860==--
