Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id D38C13C6286
	for <lists+cake@lfdr.de>; Mon, 12 Jul 2021 20:21:45 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 9C20D3CB53;
	Mon, 12 Jul 2021 14:21:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1626114099;
	bh=al0+p6HvYkp99AXjDdYR4IvHijXC9cgZsnIGQMFBTDw=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=XQGU39y969dpJI76ZnwKe4N/yaCRf10wqpnQcufOURqXqrt6MTYU3Ldq1cQvZCy+r
	 tQtBdpKRNPd91peenOAggtkF03gbyGCOv80OESIfmGgKImQDgU+IvG2GXX16DHhyrc
	 T/wtKafxdp0j40UcDfizplEdLgR99xjl2eVa8/HmamBCHpJtQ/C+n11F2uLg/GOtVG
	 qnOS5zLThR2IjfpF+nnYt//Vgm9lsRvcq0YTTD+wJyddd/IcAK8F2U5aP2UMaEFPLN
	 XhcOhkzax9lhxTaD4NWSn0BD71DvZ8yHNp7/NK1AtGotC5hmnlIwql/5s8pGxAflIk
	 DeWz+OxJhf3ww==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com
 [IPv6:2a00:1450:4864:20::536])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 479363CB44
 for <cake@lists.bufferbloat.net>; Mon, 12 Jul 2021 14:21:38 -0400 (EDT)
Received: by mail-ed1-x536.google.com with SMTP id l1so7606006edr.11
 for <cake@lists.bufferbloat.net>; Mon, 12 Jul 2021 11:21:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+BPGAT/N/8HHwkHWddq+q1ottFkDHSBr0Zm71MObd58=;
 b=XG5WdBoq+UYWFYKGngL5H6GesYjb8QRbKLiZFvDRXYjsQSBA+h9AWEXePb82QTAjPP
 CmvRdMS6VDsrBuDUiE4++WiMxOvOWT6dcs2V2eaEpU6BFt8YHTy/MIGGNB2UVur6bTrb
 Xs8Ql/hkbJ2UV7yblTeymlbD9YDmXKxKHQvsw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+BPGAT/N/8HHwkHWddq+q1ottFkDHSBr0Zm71MObd58=;
 b=dYucCL3vQWjHMgq2anx1wvl9cxuEyZMmofpOcbxPpEP61Nig8bQBFMshu82vTbZSzb
 5q74EYDDaJNdB9oNdkg0IdgCAvzkAvoYIPBYKF/gULTy2HSGW++xGmaDbFzcMRN782mu
 xMwaiRU+Aa/Qxyg0kIYc48XSxdLO0ItUTBFReGWAc2Cb8eJxCaJW0Wr1V6YcuqQxQMk1
 9VUbUHVO3Hge5HlVblUw74nz9eEeAgMamMZ+7QHCUrJKOefsVO1LvnlmRDTprXX4BS2O
 AGg2WhcIbZsjO+Pub6kUDKM/vY7ENB/uQQRoBsxkx32/nZkoPvwdPSrdFftZRuI070jA
 rs8w==
X-Gm-Message-State: AOAM53168LnBJrJ0siYK2pPod1ZzAbj1U5R6hZiuHkZUP/jBLrt0FuW7
 exK49AfW8T4uPKU2zxCS4tl9zOSIAMC0tFO0BsjH4OshsOc1LlCWOWn2LyuyJFyflyDzhawrhQ5
 aaK8zrxY6lUlll034S4e+eIx12cXO
X-Google-Smtp-Source: ABdhPJynLxI5JmU3j2960dFn7dThXbyvPJd2z7p2DtK6xulGRR3T8z0cY1UGNIB8qSNFKbwl4hj6Hq6MGrNjJzSWAJY=
X-Received: by 2002:a05:6402:14c7:: with SMTP id
 f7mr167995edx.84.1626114097023; 
 Mon, 12 Jul 2021 11:21:37 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw7ZFWRWsBK-R1See9jRCASHd1U8ZFawyDXOT8fh2pLTag@mail.gmail.com>
 <1625188609.32718319@apps.rackspace.com>
 <CAA93jw5wQ5PYL08hWcdUucUYWt-n=uKDAbF23Pp3t5u9dEDEng@mail.gmail.com>
 <CAHb6LvrjgKnfe_jaGgx7_B1VDTkZfTmP0OyTmxL9ojWoxogrsA@mail.gmail.com>
 <989de0c1-e06c-cda9-ebe6-1f33df8a4c24@candelatech.com>
 <1625773080.94974089@apps.rackspace.com>
 <FDF5C7A7-47A6-4123-A948-352C07C35F02@cs.ucla.edu>
 <CAH8sseShtJHZ1mZWu-hhKYsDLG_LC9GBpX9XRrj68yyzQLPcAg@mail.gmail.com>
 <1625859083.09751240@apps.rackspace.com>
 <EF8D7620-438A-4F65-94D9-B35FDB76FBBD@cable.comcast.com>
 <1626111630.69692379@apps.rackspace.com>
In-Reply-To: <1626111630.69692379@apps.rackspace.com>
Date: Mon, 12 Jul 2021 11:21:26 -0700
Message-ID: <CAHb6LvoD+ACc+17WhTVmS8HYnYyboJrCg5zQF8uXtzrmqqKfPA@mail.gmail.com>
To: "David P. Reed" <dpreed@deepplum.com>
Subject: Re: [Cake] [Bloat] Little's Law mea culpa,
	but not invalidating my main point
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
Cc: "starlink@lists.bufferbloat.net" <starlink@lists.bufferbloat.net>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 Leonard Kleinrock <lk@cs.ucla.edu>, Cake List <cake@lists.bufferbloat.net>,
 "Livingood, Jason" <Jason_Livingood@comcast.com>,
 "codel@lists.bufferbloat.net" <codel@lists.bufferbloat.net>,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>, Ben Greear <greearb@candelatech.com>
Content-Type: multipart/mixed; boundary="===============9184568707622143848=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============9184568707622143848==
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
	boundary="00000000000023c82405c6f131b8"

--00000000000023c82405c6f131b8
Content-Type: multipart/alternative; boundary="0000000000001ea5e705c6f131fb"

--0000000000001ea5e705c6f131fb
Content-Type: text/plain; charset="UTF-8"

iperf 2 supports OWD and gives full histograms for TCP write to read, TCP
connect times, latency of packets (with UDP), latency of "frames" with
simulated video traffic (TCP and UDP), xfer times of bursts with low duty
cycle traffic, and TCP RTT (sampling based.) It also has support for
sampling (per interval reports) down to 100 usecs if configured with
--enable-fastsampling, otherwise the fastest sampling is 5 ms. We've
released all this as open source.

OWD only works if the end realtime clocks are synchronized using a "machine
level" protocol such as IEEE 1588 or PTP. Sadly, *most data centers don't
provide sufficient level of clock accuracy and the GPS pulse per second *
to colo and vm customers.

https://iperf2.sourceforge.io/iperf-manpage.html

Bob

On Mon, Jul 12, 2021 at 10:40 AM David P. Reed <dpreed@deepplum.com> wrote:

>
> On Monday, July 12, 2021 9:46am, "Livingood, Jason" <
> Jason_Livingood@comcast.com> said:
>
> > I think latency/delay is becoming seen to be as important certainly, if
> not a more direct proxy for end user QoE. This is all still evolving and I
> have to say is a super interesting & fun thing to work on. :-)
>
> If I could manage to sell one idea to the management hierarchy of
> communications industry CEOs (operators, vendors, ...) it is this one:
>
> "It's the end-to-end latency, stupid!"
>
> And I mean, by end-to-end, latency to complete a task at a relevant layer
> of abstraction.
>
> At the link level, it's packet send to packet receive completion.
>
> But at the transport level including retransmission buffers, it's datagram
> (or message) origination until the acknowledgement arrives for that message
> being delivered after whatever number of retransmissions, freeing the
> retransmission buffer.
>
> At the WWW level, it's mouse click to display update corresponding to
> completion of the request.
>
> What should be noted is that lower level latencies don't directly predict
> the magnitude of higher-level latencies. But longer lower level latencies
> almost always amplfify higher level latencies. Often non-linearly.
>
> Throughput is very, very weakly related to these latencies, in contrast.
>
> The amplification process has to do with the presence of queueing.
> Queueing is ALWAYS bad for latency, and throughput only helps if it is in
> exactly the right place (the so-called input queue of the bottleneck
> process, which is often a link, but not always).
>
> Can we get that slogan into Harvard Business Review? Can we get it taught
> in Managerial Accounting at HBS? (which does address logistics/supply chain
> queueing).
>
>
>
>
>
>
>

-- 
This electronic communication and the information and any files transmitted 
with it, or attached to it, are confidential and are intended solely for 
the use of the individual or entity to whom it is addressed and may contain 
information that is confidential, legally privileged, protected by privacy 
laws, or otherwise restricted from disclosure to anyone else. If you are 
not the intended recipient or the person responsible for delivering the 
e-mail to the intended recipient, you are hereby notified that any use, 
copying, distributing, dissemination, forwarding, printing, or copying of 
this e-mail is strictly prohibited. If you received this e-mail in error, 
please return the e-mail to the sender, delete it from your computer, and 
destroy any printed copy of it.

--0000000000001ea5e705c6f131fb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">iperf 2 supports OWD and gives full histograms for TCP wri=
te to read, TCP connect times, latency of packets (with UDP), latency of &q=
uot;frames&quot; with simulated=C2=A0video=C2=A0traffic (TCP and UDP), xfer=
 times of bursts with low duty cycle traffic, and TCP RTT (sampling based.)=
 It also has support for sampling (per interval reports) down to 100 usecs =
if configured with --enable-fastsampling, otherwise the fastest sampling is=
 5 ms. We&#39;ve released all this as open source.<br><br>OWD only works if=
 the end realtime clocks are synchronized using a &quot;machine level&quot;=
 protocol such as IEEE 1588 or PTP. Sadly, *most data centers don&#39;t pro=
vide sufficient level of clock accuracy and the GPS pulse per second * to c=
olo and vm customers.<div><br><a href=3D"https://iperf2.sourceforge.io/iper=
f-manpage.html">https://iperf2.sourceforge.io/iperf-manpage.html</a><br><br=
>Bob</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gm=
ail_attr">On Mon, Jul 12, 2021 at 10:40 AM David P. Reed &lt;<a href=3D"mai=
lto:dpreed@deepplum.com">dpreed@deepplum.com</a>&gt; wrote:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex">=C2=A0<br>
On Monday, July 12, 2021 9:46am, &quot;Livingood, Jason&quot; &lt;<a href=
=3D"mailto:Jason_Livingood@comcast.com" target=3D"_blank">Jason_Livingood@c=
omcast.com</a>&gt; said:<br>
<br>
&gt; I think latency/delay is becoming seen to be as important certainly, i=
f not a more direct proxy for end user QoE. This is all still evolving and =
I have to say is a super interesting &amp; fun thing to work on. :-)<br>
=C2=A0<br>
If I could manage to sell one idea to the management hierarchy of communica=
tions industry CEOs (operators, vendors, ...) it is this one:<br>
<br>
&quot;It&#39;s the end-to-end latency, stupid!&quot;<br>
<br>
And I mean, by end-to-end, latency to complete a task at a relevant layer o=
f abstraction.<br>
<br>
At the link level, it&#39;s packet send to packet receive completion.<br>
<br>
But at the transport level including retransmission buffers, it&#39;s datag=
ram (or message) origination until the acknowledgement arrives for that mes=
sage being delivered after whatever number of retransmissions, freeing the =
retransmission buffer.<br>
<br>
At the WWW level, it&#39;s mouse click to display update corresponding to c=
ompletion of the request.<br>
<br>
What should be noted is that lower level latencies don&#39;t directly predi=
ct the magnitude of higher-level latencies. But longer lower level latencie=
s almost always amplfify higher level latencies. Often non-linearly.<br>
<br>
Throughput is very, very weakly related to these latencies, in contrast.<br=
>
<br>
The amplification process has to do with the presence of queueing. Queueing=
 is ALWAYS bad for latency, and throughput only helps if it is in exactly t=
he right place (the so-called input queue of the bottleneck process, which =
is often a link, but not always).<br>
<br>
Can we get that slogan into Harvard Business Review? Can we get it taught i=
n Managerial Accounting at HBS? (which does address logistics/supply chain =
queueing).<br>
=C2=A0<br>
=C2=A0<br>
=C2=A0<br>
=C2=A0<br>
=C2=A0<br>
<br>
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
--0000000000001ea5e705c6f131fb--

--00000000000023c82405c6f131b8
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

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
DrPV5EPUikwiGMDmkX8o6roGiUwyqAp8dMZKJZ/vS/aWEELV+gm21Btr7eqdAWyqm09McVpkM4th
v/FOYcj8DeJr8MXmHW53gN2fv0BzQjqAdrdCBPNRAgMBAAGjggHZMIIB1TAOBgNVHQ8BAf8EBAMC
BaAwgaMGCCsGAQUFBwEBBIGWMIGTME4GCCsGAQUFBzAChkJodHRwOi8vc2VjdXJlLmdsb2JhbHNp
Z24uY29tL2NhY2VydC9nc2djY3IzcGVyc29uYWxzaWduMmNhMjAyMC5jcnQwQQYIKwYBBQUHMAGG
NWh0dHA6Ly9vY3NwLmdsb2JhbHNpZ24uY29tL2dzZ2NjcjNwZXJzb25hbHNpZ24yY2EyMDIwME0G
A1UdIARGMEQwQgYKKwYBBAGgMgEoCjA0MDIGCCsGAQUFBwIBFiZodHRwczovL3d3dy5nbG9iYWxz
aWduLmNvbS9yZXBvc2l0b3J5LzAJBgNVHRMEAjAAMEkGA1UdHwRCMEAwPqA8oDqGOGh0dHA6Ly9j
cmwuZ2xvYmFsc2lnbi5jb20vZ3NnY2NyM3BlcnNvbmFsc2lnbjJjYTIwMjAuY3JsMCMGA1UdEQQc
MBqBGGJvYi5tY21haG9uQGJyb2FkY29tLmNvbTATBgNVHSUEDDAKBggrBgEFBQcDBDAfBgNVHSME
GDAWgBSWM9HmWBdbNHWKgVZk1b5I3qGPzzAdBgNVHQ4EFgQUpyXYr5rh8cZzkns+zXmMG1YkBk4w
DQYJKoZIhvcNAQELBQADggEBACfauRPak93nzbpn8UXqRZqg6iUZch/UfGj9flerMl4TlK5jWulz
Y+rRg+iWkjiLk3O+kKu6GI8TLXB2rsoTnrHYij96Uad5/Ut3Q5F4S0ILgOWVU38l0VZIGGG0CzG1
eLUgN2zjLg++xJuzqijuKQCJb/3+il2MTJ8dcDaXuYcjg7Vt6+EtCBS1SGMVhOTH4Fp50yGWj8ZA
bPF1uuJM+dGLJLheUizCr5J/OBEdENg+DSmrqoZ+kZd76iRaF2CkhboR2394Ft8lFlKQiU0q8lnR
9/kdZ0F0iCcUfhaLaGYWujW7N0LZ+rQuTfuPGLx9zZNeNMWSZi/Pc8vdCO7EnlIxggJtMIICaQIB
ATBrMFsxCzAJBgNVBAYTAkJFMRkwFwYDVQQKExBHbG9iYWxTaWduIG52LXNhMTEwLwYDVQQDEyhH
bG9iYWxTaWduIEdDQyBSMyBQZXJzb25hbFNpZ24gMiBDQSAyMDIwAgwYS+5PXokx35blu9EwDQYJ
YIZIAWUDBAIBBQCggdQwLwYJKoZIhvcNAQkEMSIEINaow9Zwq9d46xlQ4itfMuiZ3Lj64PGCWYtu
IniAK1gfMBgGCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTIxMDcxMjE4
MjEzN1owaQYJKoZIhvcNAQkPMVwwWjALBglghkgBZQMEASowCwYJYIZIAWUDBAEWMAsGCWCGSAFl
AwQBAjAKBggqhkiG9w0DBzALBgkqhkiG9w0BAQowCwYJKoZIhvcNAQEHMAsGCWCGSAFlAwQCATAN
BgkqhkiG9w0BAQEFAASCAQCZZzLWuS9yT7fd5VMhPDWYQzpvXJxGkZAVZA1GM8wKtiJ2841MQXJx
hMgoYHF4oDikqu+NHxz9sdOz9wwPK4+mx8tuJfE2Hk8iOKDkvfW++gIBDSpafW205rkfrPvPHo1E
UVcn4kKjSvWQuuq8BEcBqZ1UDkvQit/hTHNszgh5oGV/QoEdPOcCqUyFSIYjbcchYc2O9RlYfjWu
SS60nA932ybx6wT7cvSlGpfS81l7oTxcoWbomnHeMg6Dq7x2emUdATMp3vHfctAk/uk68TZO6m/R
bmTBzq4fY3z7OjG6QImh0uWVK9WbplKHdUuYUTwlJdcYDnJkAw1hj5DMqu5j
--00000000000023c82405c6f131b8--

--===============9184568707622143848==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============9184568707622143848==--
