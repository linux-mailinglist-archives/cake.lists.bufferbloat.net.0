Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 94396440A7D
	for <lists+cake@lfdr.de>; Sat, 30 Oct 2021 19:17:19 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id DFF5F3CB44;
	Sat, 30 Oct 2021 13:17:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1635614237;
	bh=LwYCU8TnJXrAvfcoyNvYILnKCNfFwrF6HYs8ePqzKvA=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=dCWIQvKPzcAfLjIdhhlo8kOqMZ9w7b/PnIqypj12CU9u61FdIFWgsIsdF+o3FGm63
	 YzR2dGKhyeV0vPodaaJfkpJJ8DK2OTfc/sIiiehg+xZc6ZGmTH1A00SIN35x8LHtwP
	 yaj/bMYjEf6ffmVJMt7MyqIPF7d2T76LRT2fs7QJHXLVil5IQF8JiQb5fMD6WnVfEj
	 +WbMreCZFGzHbSAKxe4sHo6ImlTUIyGlYx7rc2NwfOw2foh13daWpjQzf/9HgcKGxJ
	 wQ3il1y4DggIxHvThyBZjaHk/775KR/f5XHBEdrMmcZli+kl1J7JSovOo10Cvzpr7Z
	 JhEZ93mv3K8TQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com
 [IPv6:2a00:1450:4864:20::535])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 93C403CB38
 for <cake@lists.bufferbloat.net>; Sat, 30 Oct 2021 13:17:16 -0400 (EDT)
Received: by mail-ed1-x535.google.com with SMTP id r4so48799031edi.5
 for <cake@lists.bufferbloat.net>; Sat, 30 Oct 2021 10:17:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6aRSj/oerlsQ+wLxSGi2jthrjidHOxAKA1sPgUMlp1k=;
 b=bWlPonVsgiiWTQlji5qmuuAYRKgpo7ZFCpGJj4O4Oz9B8M8QO1XTZzvp/+unakMjFY
 IathauEm//WcxHkkZU9pFggXBUj8K4C6hqICu0F35NqB/i+0WV1VFCLqC9w7H+tlQYYF
 HZf96HY3BIycQPhv5X0GQsPI61gDjqlAse9Do=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6aRSj/oerlsQ+wLxSGi2jthrjidHOxAKA1sPgUMlp1k=;
 b=nHCyfbQQfM4OBN0RHDqDXaeQ1s/Bmger5ZKr1DjyShh23Umg/jcdHSWUadBbuQC3iQ
 dVP39xh58ROcRBYSBlfpH8UAB5jw/8BegXkKE3ugWRE1v75R3F9eTSYqB7Z+9KKbVG2X
 BN3Uf/jFpZm1PvNLfDN/un/3M59lxKkvg5znnUvcww1T28MIrA1xpT2EjmFjcMSsSIrM
 jD9rlfTQpglZ2PnU033uf8Fw500/I+W0AMZ66Bs0GP1DFHsGRIhn2KVCkgbQm3WYcIOu
 llU2HR4rUPI7uVqQro+Qjt3Wkv3Z08Hqydo/yzz/tfpPorFdHIFwFCBXf+3Hmd8ItITb
 7jRg==
X-Gm-Message-State: AOAM531OqqRCN+YYaGVg+4oELSB7CyLERWUmoP2jvGyU/Bt99g4zKrQc
 ojO+HW5oPXZ7RpBeeMY29eyaL65bpCqH/7Q7ZeD0miZZA09cu6LQTZPGbtFJzyyrYNrlD4ze/pU
 Kco/1mjPHfDsQt/hMQqyTLxSBrSeH
X-Google-Smtp-Source: ABdhPJyIWhMhblbphwiOXJ/Cc/Qkf0ndUMcl+1CG6oqRc/JHFgqvoA6Sj002cpWIM1aMtV06q+kG07q8/uAhHBL1zUo=
X-Received: by 2002:a17:907:b0f:: with SMTP id
 h15mr15848840ejl.498.1635614235291; 
 Sat, 30 Oct 2021 10:17:15 -0700 (PDT)
MIME-Version: 1.0
References: <20211030123921.29672-1-ap420073@gmail.com>
 <CAA93jw5kd5wZGg6f-CTNiJW10ZTPdOdE15KEEQDuNS3JhBto9A@mail.gmail.com>
In-Reply-To: <CAA93jw5kd5wZGg6f-CTNiJW10ZTPdOdE15KEEQDuNS3JhBto9A@mail.gmail.com>
Date: Sat, 30 Oct 2021 10:17:04 -0700
Message-ID: <CAHb6LvpYQWDDo5eCPXXmKL5OC5SqUbbx5_6EEWnCtuci7F9doQ@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============7146783130230325320=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============7146783130230325320==
Content-Type: multipart/alternative; boundary="0000000000007c3a8505cf951d9d"

--0000000000007c3a8505cf951d9d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

As an FYI, iperf 2 supports both source specific and standard multicast
joins. I think this one of the few open source traffic tools that supports
multicast testing.

Bob

On Sat, Oct 30, 2021 at 7:24 AM Dave Taht <dave.taht@gmail.com> wrote:

> This should be "fun".
>
> ---------- Forwarded message ---------
> From: Taehee Yoo <ap420073@gmail.com>
> Date: Sat, Oct 30, 2021 at 5:42 AM
> Subject: [PATCH net-next v5 0/5] amt: add initial driver for Automatic
> Multicast Tunneling (AMT)
> To: <davem@davemloft.net>, <kuba@kernel.org>, <dsahern@kernel.org>,
> <netdev@vger.kernel.org>
> Cc: <dkirjanov@suse.de>, <ap420073@gmail.com>
>
>
> This is an implementation of AMT(Automatic Multicast Tunneling), RFC 7450=
.
> https://datatracker.ietf.org/doc/html/rfc7450
>
> This implementation supports IGMPv2, IGMPv3, MLDv1, MLDv2, and IPv4
> underlay.
>
>  Summary of RFC 7450
> The purpose of this protocol is to provide multicast tunneling.
> The main use-case of this protocol is to provide delivery multicast
> traffic from a multicast-enabled network to sites that lack multicast
> connectivity to the source network.
> There are two roles in AMT protocol, Gateway, and Relay.
> The main purpose of Gateway mode is to forward multicast listening
> information(IGMP, MLD) to the source.
> The main purpose of Relay mode is to forward multicast data to listeners.
> These multicast traffics(IGMP, MLD, multicast data packets) are tunneled.
>
> Listeners are located behind Gateway endpoint.
> But gateway itself can be a listener too.
> Senders are located behind Relay endpoint.
>
>     ___________       _________       _______       ________
>    |           |     |         |     |       |     |        |
>    | Listeners <-----> Gateway <-----> Relay <-----> Source |
>    |___________|     |_________|     |_______|     |________|
>       IGMP/MLD---------(encap)----------->
>          <-------------(decap)--------(encap)------Multicast Data
>
>  Usage of AMT interface
> 1. Create gateway interface
> ip link add amtg type amt mode gateway local 10.0.0.1 discovery 10.0.0.2 =
\
> dev gw1_rt gateway_port 2268 relay_port 2268
>
> 2. Create Relay interface
> ip link add amtr type amt mode relay local 10.0.0.2 dev relay_rt \
> relay_port 2268 max_tunnels 4
>
> v1 -> v2:
>  - Eliminate sparse warnings.
>    - Use bool type instead of __be16 for identifying v4/v6 protocol.
>
> v2 -> v3:
>  - Fix compile warning due to unsed variable.
>  - Add missing spinlock comment.
>  - Update help message of amt in Kconfig.
>
> v3 -> v4:
>  - Split patch.
>  - Use CHECKSUM_NONE instead of CHECKSUM_UNNECESSARY.
>  - Fix compile error.
>
> v4 -> v5:
>  - Remove unnecessary rcu_read_lock().
>  - Remove unnecessary amt_change_mtu().
>  - Change netlink error message.
>  - Add validation for IFLA_AMT_LOCAL_IP and IFLA_AMT_DISCOVERY_IP.
>  - Add comments in amt.h.
>  - Add missing dev_put() in error path of amt_newlink().
>  - Fix typo.
>  - Add BUILD_BUG_ON() in amt_smb_cb().
>  - Use macro instead of magic values.
>  - Use kzalloc() instead of kmalloc().
>  - Add selftest script.
>
> Taehee Yoo (5):
>   amt: add control plane of amt interface
>   amt: add data plane of amt interface
>   amt: add multicast(IGMP) report message handler
>   amt: add mld report message handler
>   selftests: add amt interface selftest script
>
>  MAINTAINERS                          |    8 +
>  drivers/net/Kconfig                  |   16 +
>  drivers/net/Makefile                 |    1 +
>  drivers/net/amt.c                    | 3290 ++++++++++++++++++++++++++
>  include/net/amt.h                    |  386 +++
>  include/uapi/linux/amt.h             |   62 +
>  tools/testing/selftests/net/Makefile |    1 +
>  tools/testing/selftests/net/amt.sh   |  284 +++
>  tools/testing/selftests/net/config   |    1 +
>  9 files changed, 4049 insertions(+)
>  create mode 100644 drivers/net/amt.c
>  create mode 100644 include/net/amt.h
>  create mode 100644 include/uapi/linux/amt.h
>  create mode 100644 tools/testing/selftests/net/amt.sh
>
> --
> 2.17.1
>
>
>
> --
> Fixing Starlink's Latencies: https://www.youtube.com/watch?v=3Dc9gLo6Xrwg=
w
>
> Dave T=C3=A4ht CEO, TekLibre, LLC
> _______________________________________________
> Make-wifi-fast mailing list
> Make-wifi-fast@lists.bufferbloat.net
> https://lists.bufferbloat.net/listinfo/make-wifi-fast

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

--0000000000007c3a8505cf951d9d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>As an FYI, iperf 2 supports both source specific=C2=
=A0and standard multicast joins. I think this one of the few open source tr=
affic tools that supports multicast testing.<br></div><br>Bob</div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, Oct 30=
, 2021 at 7:24 AM Dave Taht &lt;<a href=3D"mailto:dave.taht@gmail.com" targ=
et=3D"_blank">dave.taht@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">This should be &quot;fun&quot;.<br>
<br>
---------- Forwarded message ---------<br>
From: Taehee Yoo &lt;<a href=3D"mailto:ap420073@gmail.com" target=3D"_blank=
">ap420073@gmail.com</a>&gt;<br>
Date: Sat, Oct 30, 2021 at 5:42 AM<br>
Subject: [PATCH net-next v5 0/5] amt: add initial driver for Automatic<br>
Multicast Tunneling (AMT)<br>
To: &lt;<a href=3D"mailto:davem@davemloft.net" target=3D"_blank">davem@dave=
mloft.net</a>&gt;, &lt;<a href=3D"mailto:kuba@kernel.org" target=3D"_blank"=
>kuba@kernel.org</a>&gt;, &lt;<a href=3D"mailto:dsahern@kernel.org" target=
=3D"_blank">dsahern@kernel.org</a>&gt;,<br>
&lt;<a href=3D"mailto:netdev@vger.kernel.org" target=3D"_blank">netdev@vger=
.kernel.org</a>&gt;<br>
Cc: &lt;<a href=3D"mailto:dkirjanov@suse.de" target=3D"_blank">dkirjanov@su=
se.de</a>&gt;, &lt;<a href=3D"mailto:ap420073@gmail.com" target=3D"_blank">=
ap420073@gmail.com</a>&gt;<br>
<br>
<br>
This is an implementation of AMT(Automatic Multicast Tunneling), RFC 7450.<=
br>
<a href=3D"https://datatracker.ietf.org/doc/html/rfc7450" rel=3D"noreferrer=
" target=3D"_blank">https://datatracker.ietf.org/doc/html/rfc7450</a><br>
<br>
This implementation supports IGMPv2, IGMPv3, MLDv1, MLDv2, and IPv4<br>
underlay.<br>
<br>
=C2=A0Summary of RFC 7450<br>
The purpose of this protocol is to provide multicast tunneling.<br>
The main use-case of this protocol is to provide delivery multicast<br>
traffic from a multicast-enabled network to sites that lack multicast<br>
connectivity to the source network.<br>
There are two roles in AMT protocol, Gateway, and Relay.<br>
The main purpose of Gateway mode is to forward multicast listening<br>
information(IGMP, MLD) to the source.<br>
The main purpose of Relay mode is to forward multicast data to listeners.<b=
r>
These multicast traffics(IGMP, MLD, multicast data packets) are tunneled.<b=
r>
<br>
Listeners are located behind Gateway endpoint.<br>
But gateway itself can be a listener too.<br>
Senders are located behind Relay endpoint.<br>
<br>
=C2=A0 =C2=A0 ___________=C2=A0 =C2=A0 =C2=A0 =C2=A0_________=C2=A0 =C2=A0 =
=C2=A0 =C2=A0_______=C2=A0 =C2=A0 =C2=A0 =C2=A0________<br>
=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=
=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A0 =
=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0 |<br>
=C2=A0 =C2=A0| Listeners &lt;-----&gt; Gateway &lt;-----&gt; Relay &lt;----=
-&gt; Source |<br>
=C2=A0 =C2=A0|___________|=C2=A0 =C2=A0 =C2=A0|_________|=C2=A0 =C2=A0 =C2=
=A0|_______|=C2=A0 =C2=A0 =C2=A0|________|<br>
=C2=A0 =C2=A0 =C2=A0 IGMP/MLD---------(encap)-----------&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;-------------(decap)--------(encap)--=
----Multicast Data<br>
<br>
=C2=A0Usage of AMT interface<br>
1. Create gateway interface<br>
ip link add amtg type amt mode gateway local 10.0.0.1 discovery 10.0.0.2 \<=
br>
dev gw1_rt gateway_port 2268 relay_port 2268<br>
<br>
2. Create Relay interface<br>
ip link add amtr type amt mode relay local 10.0.0.2 dev relay_rt \<br>
relay_port 2268 max_tunnels 4<br>
<br>
v1 -&gt; v2:<br>
=C2=A0- Eliminate sparse warnings.<br>
=C2=A0 =C2=A0- Use bool type instead of __be16 for identifying v4/v6 protoc=
ol.<br>
<br>
v2 -&gt; v3:<br>
=C2=A0- Fix compile warning due to unsed variable.<br>
=C2=A0- Add missing spinlock comment.<br>
=C2=A0- Update help message of amt in Kconfig.<br>
<br>
v3 -&gt; v4:<br>
=C2=A0- Split patch.<br>
=C2=A0- Use CHECKSUM_NONE instead of CHECKSUM_UNNECESSARY.<br>
=C2=A0- Fix compile error.<br>
<br>
v4 -&gt; v5:<br>
=C2=A0- Remove unnecessary rcu_read_lock().<br>
=C2=A0- Remove unnecessary amt_change_mtu().<br>
=C2=A0- Change netlink error message.<br>
=C2=A0- Add validation for IFLA_AMT_LOCAL_IP and IFLA_AMT_DISCOVERY_IP.<br>
=C2=A0- Add comments in amt.h.<br>
=C2=A0- Add missing dev_put() in error path of amt_newlink().<br>
=C2=A0- Fix typo.<br>
=C2=A0- Add BUILD_BUG_ON() in amt_smb_cb().<br>
=C2=A0- Use macro instead of magic values.<br>
=C2=A0- Use kzalloc() instead of kmalloc().<br>
=C2=A0- Add selftest script.<br>
<br>
Taehee Yoo (5):<br>
=C2=A0 amt: add control plane of amt interface<br>
=C2=A0 amt: add data plane of amt interface<br>
=C2=A0 amt: add multicast(IGMP) report message handler<br>
=C2=A0 amt: add mld report message handler<br>
=C2=A0 selftests: add amt interface selftest script<br>
<br>
=C2=A0MAINTAINERS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=A0 8 +<br>
=C2=A0drivers/net/Kconfig=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 |=C2=A0 =C2=A016 +<br>
=C2=A0drivers/net/Makefile=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0|=C2=A0 =C2=A0 1 +<br>
=C2=A0drivers/net/amt.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 | 3290 ++++++++++++++++++++++++++<br>
=C2=A0include/net/amt.h=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 |=C2=A0 386 +++<br>
=C2=A0include/uapi/linux/amt.h=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0|=C2=A0 =C2=A062 +<br>
=C2=A0tools/testing/selftests/net/Makefile |=C2=A0 =C2=A0 1 +<br>
=C2=A0tools/testing/selftests/net/amt.sh=C2=A0 =C2=A0|=C2=A0 284 +++<br>
=C2=A0tools/testing/selftests/net/config=C2=A0 =C2=A0|=C2=A0 =C2=A0 1 +<br>
=C2=A09 files changed, 4049 insertions(+)<br>
=C2=A0create mode 100644 drivers/net/amt.c<br>
=C2=A0create mode 100644 include/net/amt.h<br>
=C2=A0create mode 100644 include/uapi/linux/amt.h<br>
=C2=A0create mode 100644 tools/testing/selftests/net/amt.sh<br>
<br>
--<br>
2.17.1<br>
<br>
<br>
<br>
-- <br>
Fixing Starlink&#39;s Latencies: <a href=3D"https://www.youtube.com/watch?v=
=3Dc9gLo6Xrwgw" rel=3D"noreferrer" target=3D"_blank">https://www.youtube.co=
m/watch?v=3Dc9gLo6Xrwgw</a><br>
<br>
Dave T=C3=A4ht CEO, TekLibre, LLC<br>
_______________________________________________<br>
Make-wifi-fast mailing list<br>
<a href=3D"mailto:Make-wifi-fast@lists.bufferbloat.net" target=3D"_blank">M=
ake-wifi-fast@lists.bufferbloat.net</a><br>
<a href=3D"https://lists.bufferbloat.net/listinfo/make-wifi-fast" rel=3D"no=
referrer" target=3D"_blank">https://lists.bufferbloat.net/listinfo/make-wif=
i-fast</a></blockquote></div>

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
--0000000000007c3a8505cf951d9d--

--===============7146783130230325320==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============7146783130230325320==--
