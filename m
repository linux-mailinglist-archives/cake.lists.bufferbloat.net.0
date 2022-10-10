Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 248F25FA224
	for <lists+cake@lfdr.de>; Mon, 10 Oct 2022 18:45:56 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 85AF63CB4B;
	Mon, 10 Oct 2022 12:45:46 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1665420346;
	bh=CJ7g2wW/bSqO9388T0wHqCCESnIADrAkE7JgNeo39qI=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=VUcypXLEY0dS11qp8DJ/k2L6mPDMSmiTMKoSdaSV55JD9DmpstFTlQ5etmMOfszPH
	 RacWDmx5gnuAM0IORTzilIMPdryDL1VrMViR0/pn2WUu+cMgiIZZlTPbt0t0BwNPMW
	 R7VDjAL2LeZxJPGpJDst3qcpP4DP12MJjmamHAnPXZDlz8cVAygCwPdTiIqzc9D8EP
	 ArVpXj2SGuyed56iMiEenWqPlM0MBzr+qZMgQAyzqgY04LTzP3EypMyVG18d5GM00o
	 YFSarVVv8XjNYRzQ0Y10N+wEXjwX9562YmlQ4CPGwutQwAq9jgTBwfS01mCzLuz4NY
	 Id7CKRplxoVlQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com
 [IPv6:2a00:1450:4864:20::22f])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 8BC853CB39
 for <cake@lists.bufferbloat.net>; Mon, 10 Oct 2022 12:45:44 -0400 (EDT)
Received: by mail-lj1-x22f.google.com with SMTP id x18so5336101ljm.1
 for <cake@lists.bufferbloat.net>; Mon, 10 Oct 2022 09:45:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=zbdcB1M3cSZnGSvdfPkPgbfj2BH+RP/YQ3sr6MHHMr0=;
 b=TpDCvURYYwKOKBLxuxz4pc9hdG86ot3QhT+YmdVXhq5qQGKzhYDXkP1ONNXSGI6t5R
 nRFtfNyGHLxp5ANHFsDSmW8mrd5Rj1lgp8tmeg/uAiPRVaNCCnN8xjs3fGoV26BPkPFr
 MxZxYrSS9dA0ZK7Ltoxt56ujuKTUyjYoLAqPI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=zbdcB1M3cSZnGSvdfPkPgbfj2BH+RP/YQ3sr6MHHMr0=;
 b=G9IGM+WjOYOVfzqamdHPwXEZdifkIL99J4zsc2wt7OcYbVrBSkjHr5jrA3jWRsQf1z
 obKJBeCZnRUh5Z3OmmZ/2H1thDsEnzRf/M5P7ynJ/HlS5zllRXxSIXJyq7Gu+RDwSu74
 eE55EEzDdrP/1WdDt+UIHjBl4qhNr0g1d2x+xQZe64UfNvLHBzY2+DOaKFVg3DWwa12W
 smTnzuyqIpLe58BuXVmG4mXNw/X21zz6X/Azl8H9MRYbRcfTKr7Sbv9hljSobNW9ZDHe
 zks8KtBIeR4jgirtXBC8ZcYMOGQUtS0p1EtrotUGH5Q7VpmgoHVp0X02myNLyFCfm+Uo
 wcfg==
X-Gm-Message-State: ACrzQf2EzPnVQ5B0nM/0bl9jwZK94eR916CQ2Iher0oC7z6oh3CKifCp
 fBHVJ+Lsbd8sZ8fxvJCfXYYn2eQkfakeQNPPxrJ/x5eMtC94xRMOLWVNELNV66KCBIyHOLtSErq
 ZjXZNyNspnmJSbKU1coxHhuo4wjEx
X-Google-Smtp-Source: AMsMyM5H/9Bm3VGYegVPBlPVu5ObR+zyZJOPeKXKEWGg70jWLYV0s03zXuRC/Uhhitc8rZkdKDTWHbBLzoe+Fqrzlwc=
X-Received: by 2002:a05:651c:114a:b0:25d:5ae6:42a4 with SMTP id
 h10-20020a05651c114a00b0025d5ae642a4mr7082278ljo.255.1665420343081; Mon, 10
 Oct 2022 09:45:43 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw77h=ztEOzyADriH2PnswUDQiyNvBdsuFi+K5EexpoxUQ@mail.gmail.com>
 <CE784DAD-5012-4FD3-9E2D-B931CBF1EBF8@telenor.no>
 <E615B656-9AAA-4AD4-8507-C461659846C5@gmx.de>
 <BB4CAEC2-669B-4595-BE6A-26D365B70535@telenor.no>
 <72674884-9E0D-4645-B5F5-C593CC45A8F0@gmx.de>
In-Reply-To: <72674884-9E0D-4645-B5F5-C593CC45A8F0@gmx.de>
Date: Mon, 10 Oct 2022 09:45:31 -0700
Message-ID: <CAHb6LvqHNv_R2Asn944Kx91Cud5J3XSM-c+PcK8Bz19uaMDynw@mail.gmail.com>
To: Sebastian Moeller <moeller0@gmx.de>
Subject: Re: [Cake] [Make-wifi-fast] [Bloat] The most wonderful video ever
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
Content-Type: multipart/mixed; boundary="===============8496155093862475134=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============8496155093862475134==
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
	boundary="000000000000f9f0a005eab0e35e"

--000000000000f9f0a005eab0e35e
Content-Type: multipart/alternative; boundary="000000000000f3d93405eab0e3b6"

--000000000000f3d93405eab0e3b6
Content-Type: text/plain; charset="UTF-8"

I think conflating bufferbloat with latency misses the subtle point in that
bufferbloat is a measurement in memory units more than a measurement in
time units. The first design flaw is a queue that is too big. This youtube
video analogy doesn't help one understand this important point.

Another subtle point is that the video assumes AQM as the only solution and
ignores others, i.e. pacing at the source(s) and/or faster service rates. A
restaurant that let's one call ahead to put their name on the waitlist
doesn't change the wait time. Just because a transport layer slowed down
and hasn't congested a downstream queue doesn't mean the e2e latency
performance will meet the gaming needs as an example. The delay is still
there it's just not manifesting itself in a shared queue that may or may
not negatively impact others using that shared queue.

Bob



On Mon, Oct 10, 2022 at 2:40 AM Sebastian Moeller via Make-wifi-fast <
make-wifi-fast@lists.bufferbloat.net> wrote:

> Hi Erik,
>
>
> > On Oct 10, 2022, at 11:32, Taraldsen Erik <erik.taraldsen@telenor.no>
> wrote:
> >
> > On 10/10/2022, 11:09, "Sebastian Moeller" <moeller0@gmx.de> wrote:
> >
> >    Nice!
> >
> >> On Oct 10, 2022, at 07:52, Taraldsen Erik via Cake <
> cake@lists.bufferbloat.net> wrote:
> >>
> >> It took about 3 hours from the video was release before we got the
> first request to have SQM on the CPE's  we manage as a ISP.  Finally
> getting some customer response on the issue.
> >
> >       [SM] Will you be able to bump these requests to higher-ups and at
> least change some perception of customer demand for tighter latency
> performance?
> >
> > That would be the hope.
>
>         [SM} Excellent, hope this plays out as we wish for.
>
>
> >  We actually have fq_codel implemented on the two latest generations of
> DSL routers.  Use sync rate as input to set the rate.  Works quite well.
>
>         [SM] Cool, if I might ask what fraction of the sync are you
> setting the traffic shaper for and are you doing fine grained overhead
> accounting (or simply fold that into a grand "de-rating"-factor)?
>
>
> > There is also a bit of traction around speedtest.net's inclusion of
> latency under load internally.
>
>         [SM] Yes, although IIUC they are reporting the interquartile mean
> for the two loaded latency estimates, which is pretty conservative and only
> really "triggers" for massive consistently elevated latency; so I expect
> this to be great for detecting really bad cases, but I fear it is too
> conservative and will make a number of problematic links look OK. But hey,
> even that is leaps and bounds better than the old only idle latency report.
>
>
> > My hope is that some publication in Norway will pick up on that score
> and do a test and get some mainstream publicity with the results.
>
>         [SM] Inside the EU the challenge is to get national regulators and
> the BEREC to start bothering about latency-under-load at all, "some
> mainstream publicity" would probably help here as well.
>
> Regards
>         Sebastian
>
>
> >
> > -Erik
> >
> >
> >
>
> _______________________________________________
> Make-wifi-fast mailing list
> Make-wifi-fast@lists.bufferbloat.net
> https://lists.bufferbloat.net/listinfo/make-wifi-fast

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

--000000000000f3d93405eab0e3b6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I think conflating bufferbloat with latency misses the sub=
tle point in that bufferbloat is a measurement in memory units more than a =
measurement in time units. The first design flaw is a queue=C2=A0that is to=
o big. This youtube video analogy=C2=A0doesn&#39;t help one understand=C2=
=A0this important point.=C2=A0<br><br>Another subtle point is that the vide=
o assumes AQM as the only solution and ignores others, i.e. pacing at the s=
ource(s) and/or faster service rates. A restaurant=C2=A0that let&#39;s one =
call ahead to put their name on the waitlist doesn&#39;t change the wait ti=
me. Just because a transport layer slowed down and hasn&#39;t congested a d=
ownstream queue doesn&#39;t mean the e2e latency performance will meet the =
gaming needs as an example. The delay is still there it&#39;s just not mani=
festing itself in a shared queue that may or may not negatively impact othe=
rs using that shared queue.<br><br>Bob<br><br>=C2=A0</div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Oct 10, 2022 at=
 2:40 AM Sebastian Moeller via Make-wifi-fast &lt;<a href=3D"mailto:make-wi=
fi-fast@lists.bufferbloat.net">make-wifi-fast@lists.bufferbloat.net</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi Erik,=
<br>
<br>
<br>
&gt; On Oct 10, 2022, at 11:32, Taraldsen Erik &lt;<a href=3D"mailto:erik.t=
araldsen@telenor.no" target=3D"_blank">erik.taraldsen@telenor.no</a>&gt; wr=
ote:<br>
&gt; <br>
&gt; On 10/10/2022, 11:09, &quot;Sebastian Moeller&quot; &lt;<a href=3D"mai=
lto:moeller0@gmx.de" target=3D"_blank">moeller0@gmx.de</a>&gt; wrote:<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 Nice!<br>
&gt; <br>
&gt;&gt; On Oct 10, 2022, at 07:52, Taraldsen Erik via Cake &lt;<a href=3D"=
mailto:cake@lists.bufferbloat.net" target=3D"_blank">cake@lists.bufferbloat=
.net</a>&gt; wrote:<br>
&gt;&gt; <br>
&gt;&gt; It took about 3 hours from the video was release before we got the=
 first request to have SQM on the CPE&#39;s=C2=A0 we manage as a ISP.=C2=A0=
 Finally getting some customer response on the issue. <br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0[SM] Will you be able to bump these requests=
 to higher-ups and at least change some perception of customer demand for t=
ighter latency performance?<br>
&gt; <br>
&gt; That would be the hope.<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 [SM} Excellent, hope this plays out as we wish =
for.<br>
<br>
<br>
&gt;=C2=A0 We actually have fq_codel implemented on the two latest generati=
ons of DSL routers.=C2=A0 Use sync rate as input to set the rate.=C2=A0 Wor=
ks quite well.<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 [SM] Cool, if I might ask what fraction of the =
sync are you setting the traffic shaper for and are you doing fine grained =
overhead accounting (or simply fold that into a grand &quot;de-rating&quot;=
-factor)?<br>
<br>
<br>
&gt; There is also a bit of traction around <a href=3D"http://speedtest.net=
" rel=3D"noreferrer" target=3D"_blank">speedtest.net</a>&#39;s inclusion of=
 latency under load internally.=C2=A0 <br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 [SM] Yes, although IIUC they are reporting the =
interquartile mean for the two loaded latency estimates, which is pretty co=
nservative and only really &quot;triggers&quot; for massive consistently el=
evated latency; so I expect this to be great for detecting really bad cases=
, but I fear it is too conservative and will make a number of problematic l=
inks look OK. But hey, even that is leaps and bounds better than the old on=
ly idle latency report.<br>
<br>
<br>
&gt; My hope is that some publication in Norway will pick up on that score =
and do a test and get some mainstream publicity with the results.<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 [SM] Inside the EU the challenge is to get nati=
onal regulators and the BEREC to start bothering about latency-under-load a=
t all, &quot;some mainstream publicity&quot; would probably help here as we=
ll.<br>
<br>
Regards<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Sebastian<br>
<br>
<br>
&gt; <br>
&gt; -Erik<br>
&gt; <br>
&gt; <br>
&gt; <br>
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
--000000000000f3d93405eab0e3b6--

--000000000000f9f0a005eab0e35e
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
YIZIAWUDBAIBBQCggdQwLwYJKoZIhvcNAQkEMSIEIGSa75/4Vzwmkim7cDydX9od4o8OmporBjae
tYhu1Cz0MBgGCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTIyMTAxMDE2
NDU0M1owaQYJKoZIhvcNAQkPMVwwWjALBglghkgBZQMEASowCwYJYIZIAWUDBAEWMAsGCWCGSAFl
AwQBAjAKBggqhkiG9w0DBzALBgkqhkiG9w0BAQowCwYJKoZIhvcNAQEHMAsGCWCGSAFlAwQCATAN
BgkqhkiG9w0BAQEFAASCAQCM277SrDF66VdJ6e8Ugnm30/MdP5Lrrf6t1ADhcnVEv0EAM+e7pXFo
1WmC/OejpxDKG9EbeYpZnWWLkOMphTLVAtJucqV960aYREQWUOPHNlXomPOZAAwbGRw8AgP0oQxm
oczGeYUIKirVsdWRtnPA2G4CSLIqYRVlOiu4rv6gntKHNxAJRRuRCnqzjDRQmqmz/g8idNIK4gwF
Go5F1tDS3lcFZ22f4A1hiK/j2O9OHsEtS/jrxzgCjR31xYJHOZGZH3j06Lg7Lbljv4byivE1LqFP
k8aapITKHQCydMWuEfii309ylRX8ivI7Dj2vQUKrn7zFTtM6QmKmve+7gsj1
--000000000000f9f0a005eab0e35e--

--===============8496155093862475134==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============8496155093862475134==--
