Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 158F04410C6
	for <lists+cake@lfdr.de>; Sun, 31 Oct 2021 21:16:59 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 73EFB3CB40;
	Sun, 31 Oct 2021 16:16:57 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1635711417;
	bh=4yVh8re+QwR121WREXh7RA7M7QImn9/juX4ivpsnkc8=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=LbLYEfJXfRESRaL6K0trkE35YAzuJvlUOj+zwE0vuDnlJbE2vHq7g/ygFLf+vrmzV
	 cFDAhYXEyqT+vj2Rp1hbMIryukOxlqaETAiOw8rVw0eWqRj0G7DtDlzIKQ03RoX9aS
	 uDzMrMdoQ+Y2kLxS4MX9gkHYwDdhHSp946jRinsdB/xzg1ZRp6pNr0EvMiYTHAFmya
	 a9yywWZ3jThuyO9l1ohEzu9zOPYl9DJpLOCcs5JqBzb5HNI31lCYNivJ1xUrKoV41Q
	 6HFKaQQ57z0F3YvJZ6ZViW/VkTmARkmMW2h7Pr4OkYkfN9cnvfWxbLi4sjB2MtU8ED
	 EsxSfuFlGRw4A==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com
 [IPv6:2a00:1450:4864:20::52b])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id EC67D3B2A4
 for <cake@lists.bufferbloat.net>; Sun, 31 Oct 2021 16:16:55 -0400 (EDT)
Received: by mail-ed1-x52b.google.com with SMTP id r12so57905441edt.6
 for <cake@lists.bufferbloat.net>; Sun, 31 Oct 2021 13:16:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/LPg45ut4t3lUNhYGLfYEitLsFBk4ia36VhaW5cWv1I=;
 b=PATCuhKRK0w780+tFRKojlVZ1bKgL2N352JdCzkbCPM0Hv5SAwN36ez9Nmn/q9Bg29
 2wYOw1qTm+7jVO79i9j2l1czTSG8MtxZ/dCy9b5kxXSqVek570IYSOiQQHbpGo+a5CE5
 CUpm3su2/SDjLQETUep5BS+8Eg65W8j2vcwuo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/LPg45ut4t3lUNhYGLfYEitLsFBk4ia36VhaW5cWv1I=;
 b=4HuCZLwpF6rCyZzHXf4eKiWyRZrk/79HnBznDWVNGWu4Ef8eGwz4YD8lQwzjxglS5t
 PBq+0trTJr/WoH0P7tAvhy3iEoA6FUuIfkKrGngTiAQNBzdg0JPC/L7LUR9LYot15qqG
 aPLaD7iLijwpUG4z9ocLnosBUBP3o0dB9nlctv9mT0VWcVfK4Fj3NtjKZPGBcPtkVnvv
 61NahvQ02hR3T0AGJIl7wergi5t3eKV3GdXw82x4qLZOxxgbJhoe0L7FeKr6JMD44S0h
 dijumtkYZoJbZB6HQ9qzeYXCzbR243Qz3Mn4PRlhXvyR0uwjdsfBSVo6/0cIhYkCKGn3
 Tmkw==
X-Gm-Message-State: AOAM5305WJ6+avN6jhc8EDWjkuzgH8PwSQy0L2B3mIglpPc+0qEMQcAV
 ASgIIAfS6lulTbOEll5poresA1LHuRA8LGUu1sY8QExONEmUU6kP3W2DCXYdDInPuA/QqI+NyNh
 kZSobO/aI9ljF5eUCDggcnWU3EUsKWKe6UQ==
X-Google-Smtp-Source: ABdhPJz7PI4DnzYte7kiuebVtHfnEm62JtCTMXslcD3eRhPkfqE4VgKOeFexg0Cub9quow+f6uAvU0ydcxu853CrdSo=
X-Received: by 2002:a17:906:9be3:: with SMTP id
 de35mr13192342ejc.110.1635711414173; 
 Sun, 31 Oct 2021 13:16:54 -0700 (PDT)
MIME-Version: 1.0
References: <20211030123921.29672-1-ap420073@gmail.com>
 <CAA93jw5kd5wZGg6f-CTNiJW10ZTPdOdE15KEEQDuNS3JhBto9A@mail.gmail.com>
 <CAHb6LvpYQWDDo5eCPXXmKL5OC5SqUbbx5_6EEWnCtuci7F9doQ@mail.gmail.com>
 <E0763E01-7A5C-4C72-8737-0EDD2C3C5E34@akamai.com>
In-Reply-To: <E0763E01-7A5C-4C72-8737-0EDD2C3C5E34@akamai.com>
Date: Sun, 31 Oct 2021 13:16:43 -0700
Message-ID: <CAHb6LvrC2y-9wtWJvh394n1v_W0rXvyT+bGy4Cn+=ia9M0dMJw@mail.gmail.com>
To: "Holland, Jake" <jholland@akamai.com>
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
Content-Type: multipart/mixed; boundary="===============3960777751861124575=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============3960777751861124575==
Content-Type: multipart/alternative; boundary="000000000000cc3ddf05cfabbd18"

--000000000000cc3ddf05cfabbd18
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

iperf 3 is about research networks carrying large data sets, e.g. particle
collider data acquisition captures., less about latency & multicast. And I
don't think anybody has plans to multicast CERN data over a WiFi network.

It's unfortunate that the naming has been confusing, e.g. the number 3
implies the next version of iperf. In reality, it's a separate design and
coding team and we intentionally don't share code, giving some independence
between the tools which helps to verify that the tools aren't driving the
measurement but the network is.

Bob

On Sun, Oct 31, 2021 at 12:34 PM Holland, Jake <jholland@akamai.com> wrote:

> Yes, iperf2 and VLC are my main go-tos outside of my own stuff.
>
>
>
> This was one of the big things that made me sad about iperf3.  Thanks Bob
> for getting it in there, it was really helpful for me :)
>
>
>
> -Jake
>
>
>
> *From: *Bob McMahon via Make-wifi-fast <
> make-wifi-fast@lists.bufferbloat.net>
> *Reply-To: *Bob McMahon <bob.mcmahon@broadcom.com>
> *Date: *Sat,2021-10-30 at 10:17 AM
> *To: *Dave Taht <dave.taht@gmail.com>
> *Cc: *Cake List <cake@lists.bufferbloat.net>, Make-Wifi-fast <
> make-wifi-fast@lists.bufferbloat.net>, ECN-Sane <
> ecn-sane@lists.bufferbloat.net>
> *Subject: *Re: [Make-wifi-fast] Fwd: [PATCH net-next v5 0/5] amt: add
> initial driver for Automatic Multicast Tunneling (AMT)
>
>
>
> As an FYI, iperf 2 supports both source specific and standard multicast
> joins. I think this one of the few open source traffic tools that support=
s
> multicast testing.
>
>
> Bob
>
>
>
> On Sat, Oct 30, 2021 at 7:24 AM Dave Taht <dave.taht@gmail.com> wrote:
>
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
> <https://urldefense.com/v3/__https:/datatracker.ietf.org/doc/html/rfc7450=
__;!!GjvTz_vk!A3ij1BC95UcJhHaWLSgiIdef_RePfYenud3dJANXLSHbiJJgd44psjItrAOc6=
Og$>
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
> <https://urldefense.com/v3/__https:/www.youtube.com/watch?v=3Dc9gLo6Xrwgw=
__;!!GjvTz_vk!A3ij1BC95UcJhHaWLSgiIdef_RePfYenud3dJANXLSHbiJJgd44psjItJ65P8=
PM$>
>
> Dave T=C3=A4ht CEO, TekLibre, LLC
> _______________________________________________
> Make-wifi-fast mailing list
> Make-wifi-fast@lists.bufferbloat.net
> https://lists.bufferbloat.net/listinfo/make-wifi-fast
> <https://urldefense.com/v3/__https:/lists.bufferbloat.net/listinfo/make-w=
ifi-fast__;!!GjvTz_vk!A3ij1BC95UcJhHaWLSgiIdef_RePfYenud3dJANXLSHbiJJgd44ps=
jIteu0IZA4$>
>
>
> This electronic communication and the information and any files
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

--000000000000cc3ddf05cfabbd18
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">iperf 3 is about research networks carrying large data set=
s, e.g. particle collider data acquisition=C2=A0captures., less about laten=
cy &amp; multicast. And I don&#39;t think anybody has plans to multicast CE=
RN data over a WiFi network.<br><br>It&#39;s unfortunate that the naming ha=
s been confusing, e.g. the number 3 implies the next version of iperf. In r=
eality, it&#39;s a separate design and coding team and we intentionally don=
&#39;t share code, giving some independence between the tools which helps t=
o verify that the tools aren&#39;t driving the measurement but the network =
is.<br><br>Bob</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Sun, Oct 31, 2021 at 12:34 PM Holland, Jake &lt;<a href=
=3D"mailto:jholland@akamai.com">jholland@akamai.com</a>&gt; wrote:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex">





<div lang=3D"EN-US" style=3D"overflow-wrap: break-word;">
<div class=3D"gmail-m_4841439331996680252WordSection1">
<p class=3D"MsoNormal">Yes, iperf2 and VLC are my main go-tos outside of my=
 own stuff.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">This was one of the big things that made me sad abou=
t iperf3.=C2=A0 Thanks Bob for getting it in there, it was really helpful f=
or me :)<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">-Jake<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div style=3D"border-right:none;border-bottom:none;border-left:none;border-=
top:1pt solid rgb(181,196,223);padding:3pt 0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:12pt;color:black">From: =
</span></b><span style=3D"font-size:12pt;color:black">Bob McMahon via Make-=
wifi-fast &lt;<a href=3D"mailto:make-wifi-fast@lists.bufferbloat.net" targe=
t=3D"_blank">make-wifi-fast@lists.bufferbloat.net</a>&gt;<br>
<b>Reply-To: </b>Bob McMahon &lt;<a href=3D"mailto:bob.mcmahon@broadcom.com=
" target=3D"_blank">bob.mcmahon@broadcom.com</a>&gt;<br>
<b>Date: </b>Sat,2021-10-30 at 10:17 AM<br>
<b>To: </b>Dave Taht &lt;<a href=3D"mailto:dave.taht@gmail.com" target=3D"_=
blank">dave.taht@gmail.com</a>&gt;<br>
<b>Cc: </b>Cake List &lt;<a href=3D"mailto:cake@lists.bufferbloat.net" targ=
et=3D"_blank">cake@lists.bufferbloat.net</a>&gt;, Make-Wifi-fast &lt;<a hre=
f=3D"mailto:make-wifi-fast@lists.bufferbloat.net" target=3D"_blank">make-wi=
fi-fast@lists.bufferbloat.net</a>&gt;, ECN-Sane &lt;<a href=3D"mailto:ecn-s=
ane@lists.bufferbloat.net" target=3D"_blank">ecn-sane@lists.bufferbloat.net=
</a>&gt;<br>
<b>Subject: </b>Re: [Make-wifi-fast] Fwd: [PATCH net-next v5 0/5] amt: add =
initial driver for Automatic Multicast Tunneling (AMT)<u></u><u></u></span>=
</p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<div>
<p class=3D"MsoNormal">As an FYI, iperf 2 supports both source specific=C2=
=A0and standard multicast joins. I think this one of the few open source tr=
affic tools that supports multicast testing.<u></u><u></u></p>
</div>
<p class=3D"MsoNormal"><br>
Bob<u></u><u></u></p>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal">On Sat, Oct 30, 2021 at 7:24 AM Dave Taht &lt;<a hre=
f=3D"mailto:dave.taht@gmail.com" target=3D"_blank">dave.taht@gmail.com</a>&=
gt; wrote:<u></u><u></u></p>
</div>
<blockquote style=3D"border-top:none;border-right:none;border-bottom:none;b=
order-left:1pt solid rgb(204,204,204);padding:0in 0in 0in 6pt;margin-left:4=
.8pt;margin-right:0in">
<p class=3D"MsoNormal">This should be &quot;fun&quot;.<br>
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
<a href=3D"https://urldefense.com/v3/__https:/datatracker.ietf.org/doc/html=
/rfc7450__;!!GjvTz_vk!A3ij1BC95UcJhHaWLSgiIdef_RePfYenud3dJANXLSHbiJJgd44ps=
jItrAOc6Og$" target=3D"_blank">https://datatracker.ietf.org/doc/html/rfc745=
0</a><br>
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
Fixing Starlink&#39;s Latencies: <a href=3D"https://urldefense.com/v3/__htt=
ps:/www.youtube.com/watch?v=3Dc9gLo6Xrwgw__;!!GjvTz_vk!A3ij1BC95UcJhHaWLSgi=
Idef_RePfYenud3dJANXLSHbiJJgd44psjItJ65P8PM$" target=3D"_blank">
https://www.youtube.com/watch?v=3Dc9gLo6Xrwgw</a><br>
<br>
Dave T=C3=A4ht CEO, TekLibre, LLC<br>
_______________________________________________<br>
Make-wifi-fast mailing list<br>
<a href=3D"mailto:Make-wifi-fast@lists.bufferbloat.net" target=3D"_blank">M=
ake-wifi-fast@lists.bufferbloat.net</a><br>
<a href=3D"https://urldefense.com/v3/__https:/lists.bufferbloat.net/listinf=
o/make-wifi-fast__;!!GjvTz_vk!A3ij1BC95UcJhHaWLSgiIdef_RePfYenud3dJANXLSHbi=
JJgd44psjIteu0IZA4$" target=3D"_blank">https://lists.bufferbloat.net/listin=
fo/make-wifi-fast</a><u></u><u></u></p>
</blockquote>
</div>
<p class=3D"MsoNormal"><br>
<span style=3D"font-size:10pt;color:black;background:white">This electronic=
 communication and the information and any files transmitted with it, or at=
tached to it, are confidential and are intended solely for the use of the i=
ndividual or entity to whom it is
 addressed and may contain information that is confidential, legally privil=
eged, protected by privacy laws, or otherwise restricted from disclosure to=
 anyone else. If you are not the intended recipient or the person responsib=
le for delivering the e-mail to
 the intended recipient, you are hereby notified that any use, copying, dis=
tributing, dissemination, forwarding, printing, or copying of this e-mail i=
s strictly prohibited. If you received this e-mail in error, please return =
the e-mail to the sender, delete
 it from your computer, and destroy any printed copy of it.</span> <u></u><=
u></u></p>
</div>
</div>

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
--000000000000cc3ddf05cfabbd18--

--===============3960777751861124575==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============3960777751861124575==--
