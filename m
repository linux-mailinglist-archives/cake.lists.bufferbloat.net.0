Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AA27440B5F
	for <lists+cake@lfdr.de>; Sat, 30 Oct 2021 20:55:47 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id A261E3CB41;
	Sat, 30 Oct 2021 14:55:45 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1635620145;
	bh=gdSonWPNnxIw3oJmQa/YqOqKZoaGKwGBHxMBon7fJpQ=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=gFIKLTRHnNqcU7QB0FacOroExVG2BqShewA5zbXe1SMckxVGtwopSqIhK4cOeu/Tn
	 LaFMg5RHWQjWYzp6LNVNiv+QIRgKeWsbpRQOLSRTlO81/iZWzIarECB/JIKHhWPQOU
	 3iHHSWxAq5XGEzgFAWcIaJS73Hl5Ep8iCimmByZa0UM7DEbyOKuupbn7bRBsrIw8bt
	 0J7gEFYjqt6qBKVWWuQegTI7r43AzJ5hVH3lzTQ4f37JiLFOmTAcZ2UUyRngsICMFO
	 Qu86P+2ikj/+iZWZado4A5Pe/rk0fr6PMtU79RRPSN+uDxZ+8rNwRLfk+6rUtaf0Bm
	 /fm2aralI9R9A==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com
 [IPv6:2a00:1450:4864:20::52a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 5982B3CB38
 for <cake@lists.bufferbloat.net>; Sat, 30 Oct 2021 14:55:44 -0400 (EDT)
Received: by mail-ed1-x52a.google.com with SMTP id w15so50058155edc.9
 for <cake@lists.bufferbloat.net>; Sat, 30 Oct 2021 11:55:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0KcrPmcpkfr0H2EgpZxc5rtvcAxvLzbMVVXk8O+H9pI=;
 b=TTakm/62lWl5LTs3yH36GD5FyGNubXFAEr0LjBIF/uedgE4MBQY/dGSoFKNRLD05Jy
 kG+wCDv0zuXqI+vSD7Affo3W7+Jb/IA9bYoIN3XofKDOKnQtEpAtuL47o6/QshJA6DhR
 u+R3wB+srHx2rBCI4x2Ts1/PFvwMr7GQnKgBc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0KcrPmcpkfr0H2EgpZxc5rtvcAxvLzbMVVXk8O+H9pI=;
 b=1AMc4sqF/1WQ6KhCPB68sQEdFv78/2Fj2zFcPk5P34Y3dHlnMnXoeSfHtxeXVgFayV
 aw3oZqcJHLdXJf/gLQ3dK8VtpCSLoVdXtDHdUaZbd1p5GImO3vZp66HGxeovIOHRWnxU
 o7MTZu4KcZxnWrUpuvAbZLIp0rFRtJSk8XyBGPGG9/OB1GsXMTL2Q9KAODJ+fNsDXZxg
 jb7n7462Uk77Sai07Ntb0HQ1xg3TTEJfKQlbxyb2ZtXrbjo3GB3v9CdXn/O3zw4bCxhb
 q4OWn9ESydnDZElv/dFnhOXNKmECxqwO+WkfZmuj12VNl3j0MKQ1+mAT0Ap22OBNo15k
 3Txw==
X-Gm-Message-State: AOAM53310GgORjKHfEez6TOw1zrIqAZsRaYeJYtQP+2kZWjeZF2sqOno
 3Dp83JqlANfmk46L+TdwTyOJrGUasLzci9BXfxaTtAhucuG6mWWwt3TzDZBZs/LPBRUi9EQoyWY
 +sbXuA4E3dqaisEkHS1bgENC0x5gI
X-Google-Smtp-Source: ABdhPJzrIgoRaiqhiM51rzfRpdpy5C9w9Z8Kf6onUr7DtSkRRuH5b/rsbrWaymy8fDYNpuJF96Q0DRKuvAcG6qd8Riw=
X-Received: by 2002:a17:906:c111:: with SMTP id
 do17mr23076328ejc.48.1635620143131; 
 Sat, 30 Oct 2021 11:55:43 -0700 (PDT)
MIME-Version: 1.0
References: <20211030123921.29672-1-ap420073@gmail.com>
 <CAA93jw5kd5wZGg6f-CTNiJW10ZTPdOdE15KEEQDuNS3JhBto9A@mail.gmail.com>
 <CAHb6LvpYQWDDo5eCPXXmKL5OC5SqUbbx5_6EEWnCtuci7F9doQ@mail.gmail.com>
 <CAA93jw5eM19P4+1hnvLP9rnc1W6PnndLtq5YE1iBX=ioxGL8_Q@mail.gmail.com>
In-Reply-To: <CAA93jw5eM19P4+1hnvLP9rnc1W6PnndLtq5YE1iBX=ioxGL8_Q@mail.gmail.com>
Date: Sat, 30 Oct 2021 11:55:32 -0700
Message-ID: <CAHb6LvpBXgSMhN1+4cfpT8u8yWkdP_3MwUwbfHUT=5rV6OnTPQ@mail.gmail.com>
To: Dave Taht <dave.taht@gmail.com>
Subject: Re: [Cake] [Make-wifi-fast] Fwd: [PATCH net-next v5 0/5] amt: add
 initial driver for Automatic Multicast Tunneling (AMT)
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
From: Bob McMahon via Cake <cake@lists.bufferbloat.net>
Reply-To: Bob McMahon <bob.mcmahon@broadcom.com>
Cc: Cake List <cake@lists.bufferbloat.net>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 ECN-Sane <ecn-sane@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============2366459012209987229=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============2366459012209987229==
Content-Type: multipart/alternative; boundary="0000000000009ec6aa05cf967d3e"

--0000000000009ec6aa05cf967d3e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

hmm, that could be useful too. Though starting with things like join
latencies was something we tested in our early APs (which have a
proprietary multicast over unicast implementation.) Iperf 2 repo very crude
igmp querier c code, mostly just to set things like mrouter ports on l2
switches. We needed the join latencies for IPTV over multicast to simulate
channel changes. The querier supports test control of when it sends out the
all hosts query which we needed to.

I found  multicast testing (both internet and WiFi) as a lot of fun because
things are "upside down" or reversed per RPFs. The AP has it relatively
easy compared to an internet router/switch combo.

Anyway, I'm fairly steeped in testing L3 IP and L2 multicast. Let me know
if any new testing features are required for these efforts.

Bob





On Sat, Oct 30, 2021 at 10:46 AM Dave Taht <dave.taht@gmail.com> wrote:

> What I'd used for multicast testing during the heyday of the cerowrt
> project was
>
> http://uftp-multicast.sourceforge.net/
>
> It gained RFC3168 style ecn support as a result, but I haven't tested
> it in years.
>
> On Sat, Oct 30, 2021 at 10:17 AM Bob McMahon <bob.mcmahon@broadcom.com>
> wrote:
> >
> > As an FYI, iperf 2 supports both source specific and standard multicast
> joins. I think this one of the few open source traffic tools that support=
s
> multicast testing.
> >
> > Bob
> >
> > On Sat, Oct 30, 2021 at 7:24 AM Dave Taht <dave.taht@gmail.com> wrote:
> >>
> >> This should be "fun".
> >>
> >> ---------- Forwarded message ---------
> >> From: Taehee Yoo <ap420073@gmail.com>
> >> Date: Sat, Oct 30, 2021 at 5:42 AM
> >> Subject: [PATCH net-next v5 0/5] amt: add initial driver for Automatic
> >> Multicast Tunneling (AMT)
> >> To: <davem@davemloft.net>, <kuba@kernel.org>, <dsahern@kernel.org>,
> >> <netdev@vger.kernel.org>
> >> Cc: <dkirjanov@suse.de>, <ap420073@gmail.com>
> >>
> >>
> >> This is an implementation of AMT(Automatic Multicast Tunneling), RFC
> 7450.
> >> https://datatracker.ietf.org/doc/html/rfc7450
> >>
> >> This implementation supports IGMPv2, IGMPv3, MLDv1, MLDv2, and IPv4
> >> underlay.
> >>
> >>  Summary of RFC 7450
> >> The purpose of this protocol is to provide multicast tunneling.
> >> The main use-case of this protocol is to provide delivery multicast
> >> traffic from a multicast-enabled network to sites that lack multicast
> >> connectivity to the source network.
> >> There are two roles in AMT protocol, Gateway, and Relay.
> >> The main purpose of Gateway mode is to forward multicast listening
> >> information(IGMP, MLD) to the source.
> >> The main purpose of Relay mode is to forward multicast data to
> listeners.
> >> These multicast traffics(IGMP, MLD, multicast data packets) are
> tunneled.
> >>
> >> Listeners are located behind Gateway endpoint.
> >> But gateway itself can be a listener too.
> >> Senders are located behind Relay endpoint.
> >>
> >>     ___________       _________       _______       ________
> >>    |           |     |         |     |       |     |        |
> >>    | Listeners <-----> Gateway <-----> Relay <-----> Source |
> >>    |___________|     |_________|     |_______|     |________|
> >>       IGMP/MLD---------(encap)----------->
> >>          <-------------(decap)--------(encap)------Multicast Data
> >>
> >>  Usage of AMT interface
> >> 1. Create gateway interface
> >> ip link add amtg type amt mode gateway local 10.0.0.1 discovery
> 10.0.0.2 \
> >> dev gw1_rt gateway_port 2268 relay_port 2268
> >>
> >> 2. Create Relay interface
> >> ip link add amtr type amt mode relay local 10.0.0.2 dev relay_rt \
> >> relay_port 2268 max_tunnels 4
> >>
> >> v1 -> v2:
> >>  - Eliminate sparse warnings.
> >>    - Use bool type instead of __be16 for identifying v4/v6 protocol.
> >>
> >> v2 -> v3:
> >>  - Fix compile warning due to unsed variable.
> >>  - Add missing spinlock comment.
> >>  - Update help message of amt in Kconfig.
> >>
> >> v3 -> v4:
> >>  - Split patch.
> >>  - Use CHECKSUM_NONE instead of CHECKSUM_UNNECESSARY.
> >>  - Fix compile error.
> >>
> >> v4 -> v5:
> >>  - Remove unnecessary rcu_read_lock().
> >>  - Remove unnecessary amt_change_mtu().
> >>  - Change netlink error message.
> >>  - Add validation for IFLA_AMT_LOCAL_IP and IFLA_AMT_DISCOVERY_IP.
> >>  - Add comments in amt.h.
> >>  - Add missing dev_put() in error path of amt_newlink().
> >>  - Fix typo.
> >>  - Add BUILD_BUG_ON() in amt_smb_cb().
> >>  - Use macro instead of magic values.
> >>  - Use kzalloc() instead of kmalloc().
> >>  - Add selftest script.
> >>
> >> Taehee Yoo (5):
> >>   amt: add control plane of amt interface
> >>   amt: add data plane of amt interface
> >>   amt: add multicast(IGMP) report message handler
> >>   amt: add mld report message handler
> >>   selftests: add amt interface selftest script
> >>
> >>  MAINTAINERS                          |    8 +
> >>  drivers/net/Kconfig                  |   16 +
> >>  drivers/net/Makefile                 |    1 +
> >>  drivers/net/amt.c                    | 3290 +++++++++++++++++++++++++=
+
> >>  include/net/amt.h                    |  386 +++
> >>  include/uapi/linux/amt.h             |   62 +
> >>  tools/testing/selftests/net/Makefile |    1 +
> >>  tools/testing/selftests/net/amt.sh   |  284 +++
> >>  tools/testing/selftests/net/config   |    1 +
> >>  9 files changed, 4049 insertions(+)
> >>  create mode 100644 drivers/net/amt.c
> >>  create mode 100644 include/net/amt.h
> >>  create mode 100644 include/uapi/linux/amt.h
> >>  create mode 100644 tools/testing/selftests/net/amt.sh
> >>
> >> --
> >> 2.17.1
> >>
> >>
> >>
> >> --
> >> Fixing Starlink's Latencies:
> https://www.youtube.com/watch?v=3Dc9gLo6Xrwgw
> >>
> >> Dave T=C3=A4ht CEO, TekLibre, LLC
> >> _______________________________________________
> >> Make-wifi-fast mailing list
> >> Make-wifi-fast@lists.bufferbloat.net
> >> https://lists.bufferbloat.net/listinfo/make-wifi-fast
> >
> >
> > This electronic communication and the information and any files
> transmitted with it, or attached to it, are confidential and are intended
> solely for the use of the individual or entity to whom it is addressed an=
d
> may contain information that is confidential, legally privileged, protect=
ed
> by privacy laws, or otherwise restricted from disclosure to anyone else. =
If
> you are not the intended recipient or the person responsible for deliveri=
ng
> the e-mail to the intended recipient, you are hereby notified that any us=
e,
> copying, distributing, dissemination, forwarding, printing, or copying of
> this e-mail is strictly prohibited. If you received this e-mail in error,
> please return the e-mail to the sender, delete it from your computer, and
> destroy any printed copy of it.
>
>
>
> --
> I tried to build a better future, a few times:
> https://wayforward.archive.org/?site=3Dhttps%3A%2F%2Fwww.icei.org
>
> Dave T=C3=A4ht CEO, TekLibre, LLC
>

--=20
This electronic communication and the information and any files transmitted=
=20
with it, or attached to it, are confidential and are intended solely for=20
the use of the individual or entity to whom it is addressed and may contain=
=20
information that is confidential, legally privileged, protected by privacy=
=20
laws, or otherwise restricted from disclosure to anyone else. If you are=20
not the intended recipient or the person responsible for delivering the=20
e-mail to the intended recipient, you are hereby notified that any use,=20
copying, distributing, dissemination, forwarding, printing, or copying of=
=20
this e-mail is strictly prohibited. If you received this e-mail in error,=
=20
please return the e-mail to the sender, delete it from your computer, and=
=20
destroy any printed copy of it.

--0000000000009ec6aa05cf967d3e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">hmm, that could be useful too. Though starting with things=
=C2=A0like join latencies was something=C2=A0we tested in our early=C2=A0AP=
s (which have a proprietary multicast over unicast implementation.) Iperf 2=
 repo very crude igmp querier c code, mostly just to set things like mroute=
r ports on l2 switches. We needed the join latencies for IPTV over multicas=
t to simulate channel=C2=A0changes. The querier supports test control of wh=
en it sends out the all hosts query which we needed to.=C2=A0<br><br>I foun=
d=C2=A0 multicast testing (both internet=C2=A0and WiFi) as a lot of fun bec=
ause things are &quot;upside down&quot; or reversed per RPFs. The AP has it=
 relatively easy compared to an internet router/switch combo.<br><br>Anyway=
, I&#39;m fairly steeped in testing L3 IP and L2 multicast. Let me know if =
any new testing features are required for these efforts.<br><br>Bob<br><br>=
=C2=A0<br><br><br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">On Sat, Oct 30, 2021 at 10:46 AM Dave Taht &lt;<a href=3D=
"mailto:dave.taht@gmail.com">dave.taht@gmail.com</a>&gt; wrote:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex">What I&#39;d used for multi=
cast testing during the heyday of the cerowrt project was<br>
<br>
<a href=3D"http://uftp-multicast.sourceforge.net/" rel=3D"noreferrer" targe=
t=3D"_blank">http://uftp-multicast.sourceforge.net/</a><br>
<br>
It gained RFC3168 style ecn support as a result, but I haven&#39;t tested<b=
r>
it in years.<br>
<br>
On Sat, Oct 30, 2021 at 10:17 AM Bob McMahon &lt;<a href=3D"mailto:bob.mcma=
hon@broadcom.com" target=3D"_blank">bob.mcmahon@broadcom.com</a>&gt; wrote:=
<br>
&gt;<br>
&gt; As an FYI, iperf 2 supports both source specific and standard multicas=
t joins. I think this one of the few open source traffic tools that support=
s multicast testing.<br>
&gt;<br>
&gt; Bob<br>
&gt;<br>
&gt; On Sat, Oct 30, 2021 at 7:24 AM Dave Taht &lt;<a href=3D"mailto:dave.t=
aht@gmail.com" target=3D"_blank">dave.taht@gmail.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; This should be &quot;fun&quot;.<br>
&gt;&gt;<br>
&gt;&gt; ---------- Forwarded message ---------<br>
&gt;&gt; From: Taehee Yoo &lt;<a href=3D"mailto:ap420073@gmail.com" target=
=3D"_blank">ap420073@gmail.com</a>&gt;<br>
&gt;&gt; Date: Sat, Oct 30, 2021 at 5:42 AM<br>
&gt;&gt; Subject: [PATCH net-next v5 0/5] amt: add initial driver for Autom=
atic<br>
&gt;&gt; Multicast Tunneling (AMT)<br>
&gt;&gt; To: &lt;<a href=3D"mailto:davem@davemloft.net" target=3D"_blank">d=
avem@davemloft.net</a>&gt;, &lt;<a href=3D"mailto:kuba@kernel.org" target=
=3D"_blank">kuba@kernel.org</a>&gt;, &lt;<a href=3D"mailto:dsahern@kernel.o=
rg" target=3D"_blank">dsahern@kernel.org</a>&gt;,<br>
&gt;&gt; &lt;<a href=3D"mailto:netdev@vger.kernel.org" target=3D"_blank">ne=
tdev@vger.kernel.org</a>&gt;<br>
&gt;&gt; Cc: &lt;<a href=3D"mailto:dkirjanov@suse.de" target=3D"_blank">dki=
rjanov@suse.de</a>&gt;, &lt;<a href=3D"mailto:ap420073@gmail.com" target=3D=
"_blank">ap420073@gmail.com</a>&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; This is an implementation of AMT(Automatic Multicast Tunneling), R=
FC 7450.<br>
&gt;&gt; <a href=3D"https://datatracker.ietf.org/doc/html/rfc7450" rel=3D"n=
oreferrer" target=3D"_blank">https://datatracker.ietf.org/doc/html/rfc7450<=
/a><br>
&gt;&gt;<br>
&gt;&gt; This implementation supports IGMPv2, IGMPv3, MLDv1, MLDv2, and IPv=
4<br>
&gt;&gt; underlay.<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 Summary of RFC 7450<br>
&gt;&gt; The purpose of this protocol is to provide multicast tunneling.<br=
>
&gt;&gt; The main use-case of this protocol is to provide delivery multicas=
t<br>
&gt;&gt; traffic from a multicast-enabled network to sites that lack multic=
ast<br>
&gt;&gt; connectivity to the source network.<br>
&gt;&gt; There are two roles in AMT protocol, Gateway, and Relay.<br>
&gt;&gt; The main purpose of Gateway mode is to forward multicast listening=
<br>
&gt;&gt; information(IGMP, MLD) to the source.<br>
&gt;&gt; The main purpose of Relay mode is to forward multicast data to lis=
teners.<br>
&gt;&gt; These multicast traffics(IGMP, MLD, multicast data packets) are tu=
nneled.<br>
&gt;&gt;<br>
&gt;&gt; Listeners are located behind Gateway endpoint.<br>
&gt;&gt; But gateway itself can be a listener too.<br>
&gt;&gt; Senders are located behind Relay endpoint.<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0___________=C2=A0 =C2=A0 =C2=A0 =C2=A0_________=
=C2=A0 =C2=A0 =C2=A0 =C2=A0_______=C2=A0 =C2=A0 =C2=A0 =C2=A0________<br>
&gt;&gt;=C2=A0 =C2=A0 |=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=
=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0|=C2=A0 =
=C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0 |<br>
&gt;&gt;=C2=A0 =C2=A0 | Listeners &lt;-----&gt; Gateway &lt;-----&gt; Relay=
 &lt;-----&gt; Source |<br>
&gt;&gt;=C2=A0 =C2=A0 |___________|=C2=A0 =C2=A0 =C2=A0|_________|=C2=A0 =
=C2=A0 =C2=A0|_______|=C2=A0 =C2=A0 =C2=A0|________|<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0IGMP/MLD---------(encap)-----------&gt;<=
br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;-------------(decap)--------=
(encap)------Multicast Data<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 Usage of AMT interface<br>
&gt;&gt; 1. Create gateway interface<br>
&gt;&gt; ip link add amtg type amt mode gateway local 10.0.0.1 discovery 10=
.0.0.2 \<br>
&gt;&gt; dev gw1_rt gateway_port 2268 relay_port 2268<br>
&gt;&gt;<br>
&gt;&gt; 2. Create Relay interface<br>
&gt;&gt; ip link add amtr type amt mode relay local 10.0.0.2 dev relay_rt \=
<br>
&gt;&gt; relay_port 2268 max_tunnels 4<br>
&gt;&gt;<br>
&gt;&gt; v1 -&gt; v2:<br>
&gt;&gt;=C2=A0 - Eliminate sparse warnings.<br>
&gt;&gt;=C2=A0 =C2=A0 - Use bool type instead of __be16 for identifying v4/=
v6 protocol.<br>
&gt;&gt;<br>
&gt;&gt; v2 -&gt; v3:<br>
&gt;&gt;=C2=A0 - Fix compile warning due to unsed variable.<br>
&gt;&gt;=C2=A0 - Add missing spinlock comment.<br>
&gt;&gt;=C2=A0 - Update help message of amt in Kconfig.<br>
&gt;&gt;<br>
&gt;&gt; v3 -&gt; v4:<br>
&gt;&gt;=C2=A0 - Split patch.<br>
&gt;&gt;=C2=A0 - Use CHECKSUM_NONE instead of CHECKSUM_UNNECESSARY.<br>
&gt;&gt;=C2=A0 - Fix compile error.<br>
&gt;&gt;<br>
&gt;&gt; v4 -&gt; v5:<br>
&gt;&gt;=C2=A0 - Remove unnecessary rcu_read_lock().<br>
&gt;&gt;=C2=A0 - Remove unnecessary amt_change_mtu().<br>
&gt;&gt;=C2=A0 - Change netlink error message.<br>
&gt;&gt;=C2=A0 - Add validation for IFLA_AMT_LOCAL_IP and IFLA_AMT_DISCOVER=
Y_IP.<br>
&gt;&gt;=C2=A0 - Add comments in amt.h.<br>
&gt;&gt;=C2=A0 - Add missing dev_put() in error path of amt_newlink().<br>
&gt;&gt;=C2=A0 - Fix typo.<br>
&gt;&gt;=C2=A0 - Add BUILD_BUG_ON() in amt_smb_cb().<br>
&gt;&gt;=C2=A0 - Use macro instead of magic values.<br>
&gt;&gt;=C2=A0 - Use kzalloc() instead of kmalloc().<br>
&gt;&gt;=C2=A0 - Add selftest script.<br>
&gt;&gt;<br>
&gt;&gt; Taehee Yoo (5):<br>
&gt;&gt;=C2=A0 =C2=A0amt: add control plane of amt interface<br>
&gt;&gt;=C2=A0 =C2=A0amt: add data plane of amt interface<br>
&gt;&gt;=C2=A0 =C2=A0amt: add multicast(IGMP) report message handler<br>
&gt;&gt;=C2=A0 =C2=A0amt: add mld report message handler<br>
&gt;&gt;=C2=A0 =C2=A0selftests: add amt interface selftest script<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 MAINTAINERS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=A0 8 +<br>
&gt;&gt;=C2=A0 drivers/net/Kconfig=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=A016 +<br>
&gt;&gt;=C2=A0 drivers/net/Makefile=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A0 1 +<br>
&gt;&gt;=C2=A0 drivers/net/amt.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 | 3290 ++++++++++++++++++++++++++<br>
&gt;&gt;=C2=A0 include/net/amt.h=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 386 +++<br>
&gt;&gt;=C2=A0 include/uapi/linux/amt.h=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0|=C2=A0 =C2=A062 +<br>
&gt;&gt;=C2=A0 tools/testing/selftests/net/Makefile |=C2=A0 =C2=A0 1 +<br>
&gt;&gt;=C2=A0 tools/testing/selftests/net/amt.sh=C2=A0 =C2=A0|=C2=A0 284 +=
++<br>
&gt;&gt;=C2=A0 tools/testing/selftests/net/config=C2=A0 =C2=A0|=C2=A0 =C2=
=A0 1 +<br>
&gt;&gt;=C2=A0 9 files changed, 4049 insertions(+)<br>
&gt;&gt;=C2=A0 create mode 100644 drivers/net/amt.c<br>
&gt;&gt;=C2=A0 create mode 100644 include/net/amt.h<br>
&gt;&gt;=C2=A0 create mode 100644 include/uapi/linux/amt.h<br>
&gt;&gt;=C2=A0 create mode 100644 tools/testing/selftests/net/amt.sh<br>
&gt;&gt;<br>
&gt;&gt; --<br>
&gt;&gt; 2.17.1<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; --<br>
&gt;&gt; Fixing Starlink&#39;s Latencies: <a href=3D"https://www.youtube.co=
m/watch?v=3Dc9gLo6Xrwgw" rel=3D"noreferrer" target=3D"_blank">https://www.y=
outube.com/watch?v=3Dc9gLo6Xrwgw</a><br>
&gt;&gt;<br>
&gt;&gt; Dave T=C3=A4ht CEO, TekLibre, LLC<br>
&gt;&gt; _______________________________________________<br>
&gt;&gt; Make-wifi-fast mailing list<br>
&gt;&gt; <a href=3D"mailto:Make-wifi-fast@lists.bufferbloat.net" target=3D"=
_blank">Make-wifi-fast@lists.bufferbloat.net</a><br>
&gt;&gt; <a href=3D"https://lists.bufferbloat.net/listinfo/make-wifi-fast" =
rel=3D"noreferrer" target=3D"_blank">https://lists.bufferbloat.net/listinfo=
/make-wifi-fast</a><br>
&gt;<br>
&gt;<br>
&gt; This electronic communication and the information and any files transm=
itted with it, or attached to it, are confidential and are intended solely =
for the use of the individual or entity to whom it is addressed and may con=
tain information that is confidential, legally privileged, protected by pri=
vacy laws, or otherwise restricted from disclosure to anyone else. If you a=
re not the intended recipient or the person responsible for delivering the =
e-mail to the intended recipient, you are hereby notified that any use, cop=
ying, distributing, dissemination, forwarding, printing, or copying of this=
 e-mail is strictly prohibited. If you received this e-mail in error, pleas=
e return the e-mail to the sender, delete it from your computer, and destro=
y any printed copy of it.<br>
<br>
<br>
<br>
-- <br>
I tried to build a better future, a few times:<br>
<a href=3D"https://wayforward.archive.org/?site=3Dhttps%3A%2F%2Fwww.icei.or=
g" rel=3D"noreferrer" target=3D"_blank">https://wayforward.archive.org/?sit=
e=3Dhttps%3A%2F%2Fwww.icei.org</a><br>
<br>
Dave T=C3=A4ht CEO, TekLibre, LLC<br>
</blockquote></div>

<br>
<span style=3D"background-color:rgb(255,255,255)"><font size=3D"2">This ele=
ctronic communication and the information and any files transmitted with it=
, or attached to it, are confidential and are intended solely for the use o=
f the individual or entity to whom it is addressed and may contain informat=
ion that is confidential, legally privileged, protected by privacy laws, or=
 otherwise restricted from disclosure to anyone else. If you are not the in=
tended recipient or the person responsible for delivering the e-mail to the=
 intended recipient, you are hereby notified that any use, copying, distrib=
uting, dissemination, forwarding, printing, or copying of this e-mail is st=
rictly prohibited. If you received this e-mail in error, please return the =
e-mail to the sender, delete it from your computer, and destroy any printed=
 copy of it.</font></span>
--0000000000009ec6aa05cf967d3e--

--===============2366459012209987229==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============2366459012209987229==--
