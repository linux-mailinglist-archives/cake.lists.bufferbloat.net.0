Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FA8560689A
	for <lists+cake@lfdr.de>; Thu, 20 Oct 2022 21:05:01 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id DC0F23CB52;
	Thu, 20 Oct 2022 15:04:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1666292693;
	bh=YruEXzphEIa7ZD3o9KbbqdVlmQDOpg1nO6WbcJq2UNs=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=orwXlFNC4CQKM1rCd/rMP+eyPN6Yg4za1XmEvys77nvuGbE9zp9agF9XvtmVLIcEi
	 x55+OqOu/bbuPKuSJ0RLHkntGG8/YKDR76Ih61rtq7V5iaYGdacK3XpInBhS4EYgf4
	 K94Uv/YL4eWcTIs8EnfQWU/bZGRHO8T1PaotLteiMq2vEtoDqE/fy2vC8qzh4JXRLK
	 laqJ7XsbUtC89Fdd8lY5iqa27e0fCPmatLaK8D3WlYAoY34LN1I1W9yf64RPTEHPD5
	 T3fmq/Kmr+cXJTZ5USSR4mKeAI0dxux8nFUwBE6IfCyNCIZ6MW0PveRZ9fDoDxPFcP
	 eHnxNZWgJnEHw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com
 [IPv6:2a00:1450:4864:20::22a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id DB3873CB39
 for <cake@lists.bufferbloat.net>; Thu, 20 Oct 2022 15:04:51 -0400 (EDT)
Received: by mail-lj1-x22a.google.com with SMTP id r22so611115ljn.10
 for <cake@lists.bufferbloat.net>; Thu, 20 Oct 2022 12:04:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=541LstUVQWwL9wgqwf49/sa1fQBwglIr2d8GGehfRN4=;
 b=Llfp5s9Gfya6xTY83RdfVabploz9qDbueSpzV7DeiFwVgIxy5TXsh7XcfU6BTXlTXC
 EyHrMWxQfSYsSOX7cC5quY/qtMgOwkLXwLesBZF8pdDrIYnUx0RZSh5mNDl1EtqSKGR9
 AjeQ1Kvmu/TcSZ//VrC519aVUMMWbzq4L5J7A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=541LstUVQWwL9wgqwf49/sa1fQBwglIr2d8GGehfRN4=;
 b=KpINESNWwYw0QCFZA009PgJLbmApLsiMQY7/SkmbRT6IGEpsquUAO6yUX3OBqLocmh
 w0839wnM4t+Ei7qcWeG5K/6DVLLODi2BqJMNBfvC5T0AKFD+PEX3qOMXrxMeBNkelnrL
 AF66GDNhxdp3WeE+6RMGjTRLdt7VKNSc1SZifeydAufOVlSU+wwxmqi22N5kmtMfkG9B
 XYcGsnPYAX7OhQSc8F+EhZGOuC7UpgTlmYCvfWk/aggAcrfaNXk37Ny6qPCkWvREH0Zr
 xIEJBY7KZ2h+H8GPX2kzp8K2qNfPy2PR0ZKJJaQiC462kynQrUFcM4dDKSA2EmtUgn84
 45pQ==
X-Gm-Message-State: ACrzQf3n5I8F9pFbA3Xsc9ZBCW/PT3tpbKIwXFrR0p6Y0iIdzsdYzvvP
 jX6yuztRsEwwRFkwWiJk6YFOZkyjUa6ZNnlMu7q/9aCMjD+3alPOYd23JXEOehk89dHf1HE+YH+
 zc7bDINgXoX3yD5BQHPydY9b+50en
X-Google-Smtp-Source: AMsMyM68VARguAcfsiexJfd/yv+5xLoZ1dV8IKo4kzkx+GSrfigbE8enBkI9NW/Is2D2ItKT/vWwSy0zPldEpePEK6Y=
X-Received: by 2002:a2e:860d:0:b0:26f:c230:b61c with SMTP id
 a13-20020a2e860d000000b0026fc230b61cmr5010599lji.107.1666292690221; Thu, 20
 Oct 2022 12:04:50 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw77h=ztEOzyADriH2PnswUDQiyNvBdsuFi+K5EexpoxUQ@mail.gmail.com>
 <938D9D45-DADA-4291-BD8A-84E4257CEE49@apple.com>
 <CAA93jw4KOkgdfT2LunCtPYPjXL+=OtTrouJgPjM7U1bHKtErnw@mail.gmail.com>
 <BD3CEB48-E45E-49DB-AAFC-80C539BB4169@apple.com>
 <9989D2F5-3A6A-454E-ABB8-71A29F3AAC0D@gmx.de>
 <4BE88889-45A9-41E4-91F6-4910530A6B4C@apple.com>
In-Reply-To: <4BE88889-45A9-41E4-91F6-4910530A6B4C@apple.com>
Date: Thu, 20 Oct 2022 12:04:37 -0700
Message-ID: <CAHb6Lvq4NMXDQJPB-Tjo2Bg7BERRGwb4OLbHbbXGa4ZOcJ45dg@mail.gmail.com>
To: Stuart Cheshire <cheshire@apple.com>
Subject: Re: [Cake] [Make-wifi-fast] [Rpm] The most wonderful video ever
	about bufferbloat
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
Cc: Rpm <rpm@lists.bufferbloat.net>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 Cake List <cake@lists.bufferbloat.net>, bloat <bloat@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============6695204015714524372=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============6695204015714524372==
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
	boundary="000000000000ec5b1405eb7bff75"

--000000000000ec5b1405eb7bff75
Content-Type: multipart/alternative; boundary="000000000000e4f79805eb7bff63"

--000000000000e4f79805eb7bff63
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Intel has a good analogous video on this with their CPU video here
<https://youtu.be/o_WXTRS2qTY?t=3D316> going over branches and failed
predictions. And to Stuart's point, the longer pipelines make the forks
worse in the amount of in-process bytes that need to be thrown away.
Interactivity, in my opinion, suggests shrinking the pipeline because, with
networks, there is no quick way to throw away stale data rather every
forwarding device continues forward with invalid data. That's bad for the
network too, spending resources on something that's no longer valid. We in
the test & measurement community never measure this.

There have been a few requests that iperf 2 measure the "bytes thrown away"
per a fork (user moves a video pointer, etc.) I haven't come up with a good
test yet. I'm still trying to get basic awareness about existing latency,
OWD and responsiveness metrics. I do think measuring the amount of
resources spent on stale data is sorta like food waste, few really pay
attention to it.

Bob

FYI, iperf 2 supports TCP_NOTSENT_LOWAT for those interested.

--tcp-write-prefetch n[kmKM]
Set TCP_NOTSENT_LOWAT on the socket and use event based writes per select()
on the socket.


On Thu, Oct 20, 2022 at 11:32 AM Stuart Cheshire via Make-wifi-fast <
make-wifi-fast@lists.bufferbloat.net> wrote:

> On 20 Oct 2022, at 02:36, Sebastian Moeller <moeller0@gmx.de> wrote:
>
> > Hi Stuart,
> >
> > [SM] That seems to be somewhat optimistic. We have been there before,
> short of mandating actually-working oracle schedulers on all end-points,
> intermediate hops will see queues some more and some less transient. So w=
e
> can strive to minimize queue build-up sure, but can not avoid queues and
> long queues completely so we need methods to deal with them gracefully.
> > Also not many applications are actually helped all that much by letting
> information get stale in their own buffers as compared to an on-path queu=
e.
> Think an on-line reaction-time gated game, the need is to distribute
> current world state to all participating clients ASAP.
>
> I=E2=80=99m afraid you are wrong about this. If an on-line game wants low=
 delay,
> the only answer is for it to avoid generating position updates faster tha=
n
> the network carry them. One packet giving the current game player positio=
n
> is better than a backlog of ten previous stale ones waiting to go out.
> Sending packets faster than the network can carry them does not get them =
to
> the destination faster; it gets them there slower. The same applies to
> frames in a screen sharing application. Sending the current state of the
> screen *now* is better than having a backlog of ten previous stale frames
> sitting in buffers somewhere on their way to the destination. Stale data =
is
> not inevitable. Applications don=E2=80=99t need to have stale data if the=
y avoid
> generating stale data in the first place.
>
> Please watch this video, which explains it better than I can in a written
> email:
>
> <https://developer.apple.com/videos/play/wwdc2015/719/?time=3D892>
>
> Stuart Cheshire
>
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

--000000000000e4f79805eb7bff63
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Intel has a good analogous video on this with <a href=3D"h=
ttps://youtu.be/o_WXTRS2qTY?t=3D316">their CPU video here</a>=C2=A0going ov=
er branches and failed predictions. And to=C2=A0Stuart&#39;s point, the lon=
ger pipelines make the forks worse in the amount=C2=A0of in-process bytes t=
hat need to be thrown away. Interactivity, in my opinion, suggests shrinkin=
g the pipeline because, with networks, there is no quick way to throw away =
stale data rather every forwarding device continues forward=C2=A0with inval=
id data. That&#39;s bad for the network too, spending resources on somethin=
g that&#39;s no longer valid. We in the test &amp; measurement community ne=
ver=C2=A0measure this.<br><br>There have been a few requests that iperf 2 m=
easure the &quot;bytes thrown away&quot; per a fork (user moves a video poi=
nter, etc.) I haven&#39;t come up with a good test yet. I&#39;m still tryin=
g to get basic awareness about existing latency, OWD and responsiveness=C2=
=A0metrics. I do think measuring the amount of resources spent on stale dat=
a is sorta like food waste, few really pay attention=C2=A0to it.<br><br>Bob=
<br><br>FYI, iperf 2 supports TCP_NOTSENT_LOWAT for those interested.=C2=A0=
<br><br>--tcp-write-prefetch n[kmKM]<br>Set TCP_NOTSENT_LOWAT on the socket=
 and use event based writes per select() on the socket.<br><br></div><br><d=
iv class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Oct =
20, 2022 at 11:32 AM Stuart Cheshire via Make-wifi-fast &lt;<a href=3D"mail=
to:make-wifi-fast@lists.bufferbloat.net">make-wifi-fast@lists.bufferbloat.n=
et</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
">On 20 Oct 2022, at 02:36, Sebastian Moeller &lt;<a href=3D"mailto:moeller=
0@gmx.de" target=3D"_blank">moeller0@gmx.de</a>&gt; wrote:<br>
<br>
&gt; Hi Stuart,<br>
&gt; <br>
&gt; [SM] That seems to be somewhat optimistic. We have been there before, =
short of mandating actually-working oracle schedulers on all end-points, in=
termediate hops will see queues some more and some less transient. So we ca=
n strive to minimize queue build-up sure, but can not avoid queues and long=
 queues completely so we need methods to deal with them gracefully.<br>
&gt; Also not many applications are actually helped all that much by lettin=
g information get stale in their own buffers as compared to an on-path queu=
e. Think an on-line reaction-time gated game, the need is to distribute cur=
rent world state to all participating clients ASAP.<br>
<br>
I=E2=80=99m afraid you are wrong about this. If an on-line game wants low d=
elay, the only answer is for it to avoid generating position updates faster=
 than the network carry them. One packet giving the current game player pos=
ition is better than a backlog of ten previous stale ones waiting to go out=
. Sending packets faster than the network can carry them does not get them =
to the destination faster; it gets them there slower. The same applies to f=
rames in a screen sharing application. Sending the current state of the scr=
een *now* is better than having a backlog of ten previous stale frames sitt=
ing in buffers somewhere on their way to the destination. Stale data is not=
 inevitable. Applications don=E2=80=99t need to have stale data if they avo=
id generating stale data in the first place.<br>
<br>
Please watch this video, which explains it better than I can in a written e=
mail:<br>
<br>
&lt;<a href=3D"https://developer.apple.com/videos/play/wwdc2015/719/?time=
=3D892" rel=3D"noreferrer" target=3D"_blank">https://developer.apple.com/vi=
deos/play/wwdc2015/719/?time=3D892</a>&gt;<br>
<br>
Stuart Cheshire<br>
<br>
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
--000000000000e4f79805eb7bff63--

--000000000000ec5b1405eb7bff75
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

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
X5dfkSef9T/DbsDM0PeTVMVyYIQoRSMBIGxVkaqp0MJglvQ2mU4CXcoOGgm6XC8LoLoEvYojXFKC
fRgCOT5xeMR10UPSBQIljKwt7fPhpYVY+jTtOclpAgMBAAGjggHZMIIB1TAOBgNVHQ8BAf8EBAMC
BaAwgaMGCCsGAQUFBwEBBIGWMIGTME4GCCsGAQUFBzAChkJodHRwOi8vc2VjdXJlLmdsb2JhbHNp
Z24uY29tL2NhY2VydC9nc2djY3IzcGVyc29uYWxzaWduMmNhMjAyMC5jcnQwQQYIKwYBBQUHMAGG
NWh0dHA6Ly9vY3NwLmdsb2JhbHNpZ24uY29tL2dzZ2NjcjNwZXJzb25hbHNpZ24yY2EyMDIwME0G
A1UdIARGMEQwQgYKKwYBBAGgMgEoCjA0MDIGCCsGAQUFBwIBFiZodHRwczovL3d3dy5nbG9iYWxz
aWduLmNvbS9yZXBvc2l0b3J5LzAJBgNVHRMEAjAAMEkGA1UdHwRCMEAwPqA8oDqGOGh0dHA6Ly9j
cmwuZ2xvYmFsc2lnbi5jb20vZ3NnY2NyM3BlcnNvbmFsc2lnbjJjYTIwMjAuY3JsMCMGA1UdEQQc
MBqBGGJvYi5tY21haG9uQGJyb2FkY29tLmNvbTATBgNVHSUEDDAKBggrBgEFBQcDBDAfBgNVHSME
GDAWgBSWM9HmWBdbNHWKgVZk1b5I3qGPzzAdBgNVHQ4EFgQUpG/4RP1YQA/iXGens9pIRe7CQxMw
DQYJKoZIhvcNAQELBQADggEBACfWLy4qJyCnOa3sl4LEDAMU/gmJ6LbclGE5iR4KanAmlAt92gzN
5lSy/iE+wsRrXiHI7YKFgXX1kVK/RqMiPRrw4hq2j8nxoSi/VFiyS3CsfVMGkbY7HBTlBvla/tH+
+2nJprlXbJyz1GdvoJAeam5RvTWotcCGAjZmMa3U3zMkszgXN849xe3dUK1DauUGiInXEwEdXDcA
/0CVjL3EEMj+kNWcLhrSZKwFtxggUyMW3XWRaAeAL9wOtEaXYqlgbtnV0n9FuoV2TNm3h7Mh7rjV
I2zM+IZ3DE+XFK7dcPwte33u75QyySNJ3UMZqi25CO85yl8Bmo7aWRm99N7HGnkxggJtMIICaQIB
ATBrMFsxCzAJBgNVBAYTAkJFMRkwFwYDVQQKExBHbG9iYWxTaWduIG52LXNhMTEwLwYDVQQDEyhH
bG9iYWxTaWduIEdDQyBSMyBQZXJzb25hbFNpZ24gMiBDQSAyMDIwAgwxrOEJauTmSvZnA80wDQYJ
YIZIAWUDBAIBBQCggdQwLwYJKoZIhvcNAQkEMSIEIGwdj55LVDbpvp0peddm+1sVa/0Ea7z7WdWA
nm52lnU2MBgGCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTIyMTAyMDE5
MDQ1MFowaQYJKoZIhvcNAQkPMVwwWjALBglghkgBZQMEASowCwYJYIZIAWUDBAEWMAsGCWCGSAFl
AwQBAjAKBggqhkiG9w0DBzALBgkqhkiG9w0BAQowCwYJKoZIhvcNAQEHMAsGCWCGSAFlAwQCATAN
BgkqhkiG9w0BAQEFAASCAQClA6Y2dTg6lSu2wFI/qjWGuLLr12ruk/If5JanPQViqW8M299VBZv4
f7bB/48RPNV1gZ9xwX+qaTEDeFPoZMpY5Rc4wP2LhmiTFOqcsLtRs4bqf/5NLf78bIvSB8ykK0Kc
rD93xA9LFNMFMeG6iPOEe5DW1M37X+9sVmqozYgohhAiPy7HjGbnKg0nfoOdmuldnCKk+co0IqOC
DtLlbG2627NoK+yRg0YyfCR2zVDLxJMoOg7qSyLSuYTE7MLOOt++h0+aRPIsv6eOrHyxd/1wnp0A
epp4S96ESvUZidmaYMyiAPJkbP4OOMSRREbGqXD7ni6RNfqLxJ6eVUJsuoUw
--000000000000ec5b1405eb7bff75--

--===============6695204015714524372==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============6695204015714524372==--
