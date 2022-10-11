Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id C3C375FB8EC
	for <lists+cake@lfdr.de>; Tue, 11 Oct 2022 19:06:06 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 3F4C63CB39;
	Tue, 11 Oct 2022 13:06:05 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1665507965;
	bh=mPTQzPh9ZLIl03Yzx9O379ritGMuZ/JeLGf0P1MaHRQ=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=iERYFAjqJOKMQOOlqlR1e+WOad4/Hkdtr1DA2cBOzVoqpIVMR/T4QcRmtL7WZFeLT
	 FMgIV//IZHC8rM2eqeLE7F4jpiR9OI+w4dIUxaTNwRyk1iQ6XG8yKI29QC3eooM+Kk
	 cARolK2WDeJcj+qAHo7Vmfaol3/qNcUCxBKztTypsrgxFXt4SIx7jJNZzry0TmAw42
	 3QT4XTtns7q6TgaNJyx7TqKCJC1SyrFSILiO770uEC2VGzwEjBsp0P0K1IyGaYYDGI
	 vtqNUvNA07sQ2aptS20qRnxUJw3faKjd6xCRO+91zbiHzK4mXP0DEgYHE2N4bbGf1o
	 FoQYQ6+ficYAQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com
 [IPv6:2a00:1450:4864:20::12b])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id A8EBE3CB38
 for <cake@lists.bufferbloat.net>; Tue, 11 Oct 2022 13:06:03 -0400 (EDT)
Received: by mail-lf1-x12b.google.com with SMTP id b1so17092073lfs.7
 for <cake@lists.bufferbloat.net>; Tue, 11 Oct 2022 10:06:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=mwAR0bA59TdR7w4XWj7kVtW+MVvUN5J1D7a+vKoOP/c=;
 b=CFjzT95Vm7sWD5bV5UuomhQ8w8LZ51+dvXGuKkIji1y1mXxwG6M9DPQF65+UAzEvRb
 Ga8zGFuNkaVXStHGNyCbB+vcfHWSnrkPS5X/woAOOz1KYJaX4t6cyhZQh/2tGTl+3AYQ
 b9jVNVPZoHeoDyGlLurjWMEmgqO/6Td/Dx0kE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=mwAR0bA59TdR7w4XWj7kVtW+MVvUN5J1D7a+vKoOP/c=;
 b=RlMWPwBpUCzEKNfRFZVdXa+0obMf3Ul/v0W+0J11LfSYyiz94TFLPuwMFHuFafmgC5
 S7DMOwPG02w0RezBvLCMkWvwQO7Qdi0PApQGDH5mTMScxjQOQPGd2kGfb+x9iVgixbwB
 FgD5QcaUk2pgW2uELLeQAobdcZT6XyGnl4OnpUb/lEZezJ1to6xDSlPoUXORQ1eIjgyq
 b/R2taM3Dpt9FWRIZtQK6E1iHLplcsE3W6CZQVbF0gxfINwXbLEooUogWyUby+lsXGnt
 JK5MbUSq1Re2dKj1YluJGX3C/y71kDQZFmEFIFWaKsTFAMF0LEIVs/9+MSGF8yoJoK0o
 zDDA==
X-Gm-Message-State: ACrzQf0hy1MDFArXUKcwRg3P89vJ9i42WRIX57d+cXDinAJo6eLOKIqr
 b6INOrrmuAmxFEH/TXJi/AovhhSyBWChLibymTSlbL7NUKWyWuebQIomtJk4xBEOcnlFJjKdHAW
 dzyQt3Mbcgh275sdITF+QJC2emZLD
X-Google-Smtp-Source: AMsMyM7NfSJmSgMcRIqeQB1GQV6xRe2VnmwjP8pOhzPRxl+iML7gcbo5s5YHJ35thYJXyRBjeWAdtWBdWGqptP/FtHQ=
X-Received: by 2002:ac2:55a8:0:b0:4a2:5d5a:120d with SMTP id
 y8-20020ac255a8000000b004a25d5a120dmr9315172lfg.134.1665507962435; Tue, 11
 Oct 2022 10:06:02 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw77h=ztEOzyADriH2PnswUDQiyNvBdsuFi+K5EexpoxUQ@mail.gmail.com>
 <CE784DAD-5012-4FD3-9E2D-B931CBF1EBF8@telenor.no>
 <E615B656-9AAA-4AD4-8507-C461659846C5@gmx.de>
 <BB4CAEC2-669B-4595-BE6A-26D365B70535@telenor.no>
 <72674884-9E0D-4645-B5F5-C593CC45A8F0@gmx.de>
 <CAHb6LvqHNv_R2Asn944Kx91Cud5J3XSM-c+PcK8Bz19uaMDynw@mail.gmail.com>
 <q06231q2-n7qn-345s-np6r-p5717713q3po@ynat.uz>
 <CAHb6Lvqbj0MDhWvLaEk8Hbr_vZwDs1NdCj1X9Xvxp+x+Mbs0Vw@mail.gmail.com>
 <D0D4490C-061A-46DA-9592-51C3D210772F@gmail.com>
In-Reply-To: <D0D4490C-061A-46DA-9592-51C3D210772F@gmail.com>
Date: Tue, 11 Oct 2022 10:05:50 -0700
Message-ID: <CAHb6Lvr-JST083ZAyyxCOS8GrhH5xoa_d+SkkB9aPEr1ijcjUQ@mail.gmail.com>
To: Rich Brown <richb.hanover@gmail.com>
Subject: Re: [Cake] [Rpm] [Bloat] [Make-wifi-fast] The most wonderful video
 ever about bufferbloat
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
Cc: Cake List <cake@lists.bufferbloat.net>, bloat <bloat@lists.bufferbloat.net>,
 Rpm <rpm@lists.bufferbloat.net>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============4689603919933104528=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============4689603919933104528==
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
	boundary="0000000000007da06a05eac54ad9"

--0000000000007da06a05eac54ad9
Content-Type: multipart/alternative; boundary="00000000000078dcb905eac54a27"

--00000000000078dcb905eac54a27
Content-Type: text/plain; charset="UTF-8"

I agree that bufferbloat awareness is a good thing. The issue I have is the
approach - ask consumers to "detect it" and replace a device with a new
one, that may or may not, meet all the needs of the users.

Better is that network engineers "design bloat out" from the beginning
starting by properly sizing queues to service jitter, and for WiFi, to also
enable aggregation techniques that minimize TXOP consumption.

Bob

On Tue, Oct 11, 2022 at 6:57 AM Rich Brown <richb.hanover@gmail.com> wrote:

>
>
> On Oct 10, 2022, at 8:05 PM, Bob McMahon via Rpm <
> rpm@lists.bufferbloat.net> wrote:
>
> > I think conflating bufferbloat with latency misses the subtle point in
> that
> > bufferbloat is a measurement in memory units more than a measurement in
> > time units.
>
>
> Yes, but... I am going to praise this video, even as I encourage all the
> techies to be sure that they have the units correct.
>
> I've been yammering about the evils of latency/excess queueing for 10
> years on my blog, in forums, etc. I have not achieved anywhere near the
> notoriety of this video (almost a third of a million views).
>
> I am delighted that there's an engaging, mass-market Youtube video that
> makes the case that bufferbloat even exists.
>
> Rich
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

--00000000000078dcb905eac54a27
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I agree that bufferbloat awareness is a good thing. The is=
sue I have is the approach - ask consumers to &quot;detect it&quot; and rep=
lace a device with a new one, that may or may not, meet all the needs of th=
e users.<div><br>Better is that network engineers &quot;design bloat out&qu=
ot; from the beginning starting by properly sizing queues to service jitter=
, and for WiFi, to also enable=C2=A0aggregation=C2=A0techniques that minimi=
ze TXOP consumption.<br><br>Bob</div></div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">On Tue, Oct 11, 2022 at 6:57 AM Rich B=
rown &lt;<a href=3D"mailto:richb.hanover@gmail.com">richb.hanover@gmail.com=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
<div style=3D"overflow-wrap: break-word;"><br><div><br><blockquote type=3D"=
cite"><div>On Oct 10, 2022, at 8:05 PM, Bob McMahon via Rpm &lt;<a href=3D"=
mailto:rpm@lists.bufferbloat.net" target=3D"_blank">rpm@lists.bufferbloat.n=
et</a>&gt; wrote:</div><br><div><span style=3D"font-family:Helvetica;font-s=
ize:12px;font-style:normal;font-variant-caps:normal;font-weight:normal;lett=
er-spacing:normal;text-align:start;text-indent:0px;text-transform:none;whit=
e-space:normal;word-spacing:0px;text-decoration:none;float:none;display:inl=
ine">&gt; I think conflating bufferbloat with latency misses the subtle poi=
nt in that</span><br style=3D"font-family:Helvetica;font-size:12px;font-sty=
le:normal;font-variant-caps:normal;font-weight:normal;letter-spacing:normal=
;text-align:start;text-indent:0px;text-transform:none;white-space:normal;wo=
rd-spacing:0px;text-decoration:none"><span style=3D"font-family:Helvetica;f=
ont-size:12px;font-style:normal;font-variant-caps:normal;font-weight:normal=
;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:none=
;white-space:normal;word-spacing:0px;text-decoration:none;float:none;displa=
y:inline">&gt; bufferbloat is a measurement in memory units more than a mea=
surement in</span><br style=3D"font-family:Helvetica;font-size:12px;font-st=
yle:normal;font-variant-caps:normal;font-weight:normal;letter-spacing:norma=
l;text-align:start;text-indent:0px;text-transform:none;white-space:normal;w=
ord-spacing:0px;text-decoration:none"><span style=3D"font-family:Helvetica;=
font-size:12px;font-style:normal;font-variant-caps:normal;font-weight:norma=
l;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:non=
e;white-space:normal;word-spacing:0px;text-decoration:none;float:none;displ=
ay:inline">&gt; time units.</span></div></blockquote></div><br><div>Yes, bu=
t... I am going to praise this video, even as I encourage all the techies t=
o be sure that they have the units correct.</div><div><br></div><div>I&#39;=
ve been yammering about the evils of latency/excess queueing for 10 years o=
n my blog, in forums, etc. I have not achieved anywhere near the notoriety =
of this video (almost a third of a million views).</div><div><br></div><div=
>I am delighted that there&#39;s an engaging, mass-market Youtube video tha=
t makes the case that bufferbloat even exists.=C2=A0</div><div><br></div><d=
iv>Rich</div></div></blockquote></div>

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
--00000000000078dcb905eac54a27--

--0000000000007da06a05eac54ad9
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
YIZIAWUDBAIBBQCggdQwLwYJKoZIhvcNAQkEMSIEINAhTyq6qxi+poWemkcLlALx8FgDVnpYDds6
NAphvG2/MBgGCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTIyMTAxMTE3
MDYwMlowaQYJKoZIhvcNAQkPMVwwWjALBglghkgBZQMEASowCwYJYIZIAWUDBAEWMAsGCWCGSAFl
AwQBAjAKBggqhkiG9w0DBzALBgkqhkiG9w0BAQowCwYJKoZIhvcNAQEHMAsGCWCGSAFlAwQCATAN
BgkqhkiG9w0BAQEFAASCAQACZz+nQk0IIb6MsFLYMxsNOXeHKLTlydmrNjbS6Rgepq6HuPFk1FJj
udYeTQh3XD3gTyMoSI0Qpqk25a3y3mIY7ptKozF/ZBL6v+5EUq93+ceGXJfETyM6y0gejBHD/G52
6ed7xGLntFr52MH9XiE6jz6Iw7Ia4wJT02g5gyy1Cx81IcVdT3p/tQre9Sq040DaqmDbKgwPyJBh
cesSott81WkCpsSlaQ2Ba0tsxLyORQt/09QfWaJPNspa+gL3a0YqIBpO9C5WOUlFrJMa+xkIfqOd
HQfgETEE/Oiy2O4pw0huRBeEYQ9bqg3nIgU7qY2c2QbQFAqpLM2PMEw+LXLJ
--0000000000007da06a05eac54ad9--

--===============4689603919933104528==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============4689603919933104528==--
