Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E05E5FBAA8
	for <lists+cake@lfdr.de>; Tue, 11 Oct 2022 20:44:10 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 82ADE3CB43;
	Tue, 11 Oct 2022 14:44:03 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1665513843;
	bh=G31ILVFmbUsz8hq++1ICL893NaWZRrZ3anR4891PDus=;
	h=Date:In-Reply-To:To:References:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=IFbvIRisO+ygwwudgQvZk8kYREp2ytYh9YDkQprn+eBPBV5gAfjcnWhq4cS49gbbV
	 79tln8E567R92j9cHcqGrP3d/rTsetdvcuTNTuE+C6eYBKyVm+NXd6QnChJTRjbJHW
	 9f6kC8vEhLoaBd5gm3i7XwVtgRWRdKgOqoyJ8Jh3aqlDk71obbMK/vqW6M5ahQWUCt
	 l/NYNDLUP75iXTyU4Z3qkZOwxD7K3QhyDdDYPt7AEBdRTdrT1j7BQ0zNE9YEdgbBeX
	 JubuBtlCOkVaNgI+sWlPMTDQnIo7gZVC/Hx7UaYS3CxhIaZOVWoQwkMepQStf/htfc
	 lN8MDa6mjRBqw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-qk1-x734.google.com (mail-qk1-x734.google.com
 [IPv6:2607:f8b0:4864:20::734])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 38ACC3B2A4;
 Tue, 11 Oct 2022 14:44:02 -0400 (EDT)
Received: by mail-qk1-x734.google.com with SMTP id b25so3230248qkk.7;
 Tue, 11 Oct 2022 11:44:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=references:to:cc:in-reply-to:date:subject:mime-version:message-id
 :from:from:to:cc:subject:date:message-id:reply-to;
 bh=u/GggHlkdfvk7boPHxQ1rFPMq/0IRDhedUxJ+zDWf7Y=;
 b=hId53SL7F5IlhT8FdeufgAN6c7LNqjdTb6KI4yzDMa/RGm2s+rOosJQKIXDD/aCevy
 PWSKAsYn8sxZiOqCjosi7OzFiZlFv/EfBCdyRZW8hKh2Fjm9WdBYZigkkEyhH8FWPWSt
 fSuT+KKZT3d0/nDLdzrYrPduQaW7y07xNCpIiHJcHcNlh3fGKiyxXsXmOp0IthfflklT
 klhNl5L+wLLu/s88/2zbQvW7kGu++DVN2+QsUDZK2+ibSVuc6FosfFuVfDpVfFasCV9y
 O8Si5oZiviHzbJUNfdrx4PPunET1LiXSHdETkGbgo6yMn2VIwhhuDcULd5Ndn0WzsQVP
 SNvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=references:to:cc:in-reply-to:date:subject:mime-version:message-id
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=u/GggHlkdfvk7boPHxQ1rFPMq/0IRDhedUxJ+zDWf7Y=;
 b=JoHDEQjn73F70Ri1fA0UOk/gh1YPN7G4tsYKeUl/1pNUZSR+qYxWwhyBQNkYPK38Lv
 9q6tCZY4Rvk7Q8tiXRcaYg+1tnQe+kIqkqUvkR11C0gzaDbmZJPCqvRenKeax7HfUMb4
 YeVOpPbTNJZDIWcyhCtKZpgjZxTyec+QdEs9A1Y4WzhxpQ5uE2sFJfA4P+nHJutjB+Yv
 IM+imVyTA3HkCcu2SHWuSGrZ9PduOiNv0on/7nK5tDLRDHW3be79HPPAzGPWtDbJj2Qk
 9jJ7g9y2b5buZxou1O2HBXEBCL3tfe4zHlDkGHor8mGFRF26VAkmTRoNAFm7VMkoW52P
 3qbw==
X-Gm-Message-State: ACrzQf3fCo1j3dDYTvodCaAlfWDHAfnlAVygLt4gQ96hyXSROcgdOhhS
 xFw2ArmMpmI2Zl7YuYy6G0Y=
X-Google-Smtp-Source: AMsMyM7Y/BDxhn9p/XxSJRyKCuO5Wgw2+AK9tatCPMVJiZFKjbi0xvdkC88TGpkiCShkCCkfX81YyQ==
X-Received: by 2002:a05:620a:462b:b0:6ce:7dce:82d6 with SMTP id
 br43-20020a05620a462b00b006ce7dce82d6mr17574332qkb.476.1665513841708; 
 Tue, 11 Oct 2022 11:44:01 -0700 (PDT)
Received: from [192.168.253.116] ([198.55.239.10])
 by smtp.gmail.com with ESMTPSA id
 y8-20020a05620a25c800b006cbe3be300esm13490016qko.12.2022.10.11.11.44.00
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Oct 2022 11:44:01 -0700 (PDT)
Message-Id: <F5B10A7A-7722-442A-B58E-2D2C004D93FD@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.7\))
Date: Tue, 11 Oct 2022 14:44:00 -0400
In-Reply-To: <CAHb6Lvr-JST083ZAyyxCOS8GrhH5xoa_d+SkkB9aPEr1ijcjUQ@mail.gmail.com>
To: Bob McMahon <bob.mcmahon@broadcom.com>
References: <CAA93jw77h=ztEOzyADriH2PnswUDQiyNvBdsuFi+K5EexpoxUQ@mail.gmail.com>
 <CE784DAD-5012-4FD3-9E2D-B931CBF1EBF8@telenor.no>
 <E615B656-9AAA-4AD4-8507-C461659846C5@gmx.de>
 <BB4CAEC2-669B-4595-BE6A-26D365B70535@telenor.no>
 <72674884-9E0D-4645-B5F5-C593CC45A8F0@gmx.de>
 <CAHb6LvqHNv_R2Asn944Kx91Cud5J3XSM-c+PcK8Bz19uaMDynw@mail.gmail.com>
 <q06231q2-n7qn-345s-np6r-p5717713q3po@ynat.uz>
 <CAHb6Lvqbj0MDhWvLaEk8Hbr_vZwDs1NdCj1X9Xvxp+x+Mbs0Vw@mail.gmail.com>
 <D0D4490C-061A-46DA-9592-51C3D210772F@gmail.com>
 <CAHb6Lvr-JST083ZAyyxCOS8GrhH5xoa_d+SkkB9aPEr1ijcjUQ@mail.gmail.com>
X-Mailer: Apple Mail (2.3608.120.23.2.7)
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
From: Rich Brown via Cake <cake@lists.bufferbloat.net>
Reply-To: Rich Brown <richb.hanover@gmail.com>
Cc: Cake List <cake@lists.bufferbloat.net>, bloat <bloat@lists.bufferbloat.net>,
 Rpm <rpm@lists.bufferbloat.net>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============3092875974034438953=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>


--===============3092875974034438953==
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_53FB8F67-909E-4B98-A08D-A219B60BF5F6"


--Apple-Mail=_53FB8F67-909E-4B98-A08D-A219B60BF5F6
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii




> On Oct 11, 2022, at 1:05 PM, Bob McMahon <bob.mcmahon@broadcom.com> =
wrote:
>=20
> I agree that bufferbloat awareness is a good thing. The issue I have =
is the approach - ask consumers to "detect it" and replace a device with =
a new one, that may or may not, meet all the needs of the users.
>=20
> Better is that network engineers "design bloat out" from the beginning =
starting by properly sizing queues to service jitter, and for WiFi, to =
also enable aggregation techniques that minimize TXOP consumption.

The Yes, but... part of my answer emphasizes awareness. How are the =
network engineers going to know it's worth the (minor) effort of =
creating properly-sized queues?

There are two fronts to attack:

- Manufacturers - This video is a start on getting their customers to =
use these responsiveness test tools and call the support lines.

- Hardware (especially router) reviewers - It kills me that there is =
radio silence whenever I ask a reviewer if they have ever measured =
latency/responsiveness.  (BTW: Has anyone heard from Ben Moskowitz from =
Consumer Reports? We had a very encouraging phone call about a year ago, =
and they were going to get back to us...)

Rich


> Bob
>=20
> On Tue, Oct 11, 2022 at 6:57 AM Rich Brown <richb.hanover@gmail.com =
<mailto:richb.hanover@gmail.com>> wrote:
>=20
>=20
>> On Oct 10, 2022, at 8:05 PM, Bob McMahon via Rpm =
<rpm@lists.bufferbloat.net <mailto:rpm@lists.bufferbloat.net>> wrote:
>>=20
>> > I think conflating bufferbloat with latency misses the subtle point =
in that
>> > bufferbloat is a measurement in memory units more than a =
measurement in
>> > time units.
>=20
> Yes, but... I am going to praise this video, even as I encourage all =
the techies to be sure that they have the units correct.
>=20
> I've been yammering about the evils of latency/excess queueing for 10 =
years on my blog, in forums, etc. I have not achieved anywhere near the =
notoriety of this video (almost a third of a million views).
>=20
> I am delighted that there's an engaging, mass-market Youtube video =
that makes the case that bufferbloat even exists.=20
>=20
> Rich
>=20
> This electronic communication and the information and any files =
transmitted with it, or attached to it, are confidential and are =
intended solely for the use of the individual or entity to whom it is =
addressed and may contain information that is confidential, legally =
privileged, protected by privacy laws, or otherwise restricted from =
disclosure to anyone else. If you are not the intended recipient or the =
person responsible for delivering the e-mail to the intended recipient, =
you are hereby notified that any use, copying, distributing, =
dissemination, forwarding, printing, or copying of this e-mail is =
strictly prohibited. If you received this e-mail in error, please return =
the e-mail to the sender, delete it from your computer, and destroy any =
printed copy of it.


--Apple-Mail=_53FB8F67-909E-4B98-A08D-A219B60BF5F6
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" =
class=3D""><div><br class=3D""></div><div><blockquote type=3D"cite" =
class=3D""><div dir=3D"ltr" class=3D""></div></blockquote><br =
class=3D""><br class=3D""><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Oct 11, 2022, at 1:05 PM, Bob McMahon &lt;<a =
href=3D"mailto:bob.mcmahon@broadcom.com" =
class=3D"">bob.mcmahon@broadcom.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div dir=3D"ltr" =
class=3D"">I agree that bufferbloat awareness is a good thing. The issue =
I have is the approach - ask consumers to "detect it" and replace a =
device with a new one, that may or may not, meet all the needs of the =
users.</div></div></blockquote><blockquote type=3D"cite" class=3D""><div =
class=3D""><div dir=3D"ltr" class=3D""><div class=3D""><br =
class=3D"">Better is that network engineers "design bloat out" from the =
beginning starting by properly sizing queues to service jitter, and for =
WiFi, to also enable&nbsp;aggregation&nbsp;techniques that minimize TXOP =
consumption.<br class=3D""></div></div></div></blockquote><div><br =
class=3D""></div>The Yes, but... part of my answer emphasizes awareness. =
How are the network engineers going to know it's worth the (minor) =
effort of creating properly-sized queues?</div><div><br =
class=3D""></div><div>There are two fronts to attack:</div><div><br =
class=3D""></div><div>- Manufacturers - This video is a start on getting =
their customers to use these responsiveness test tools and call the =
support lines.</div><div><br class=3D""></div><div>- Hardware =
(especially router) reviewers - It kills me that there is radio silence =
whenever I ask a reviewer if they have ever measured =
latency/responsiveness. &nbsp;(BTW: Has anyone heard from Ben Moskowitz =
from Consumer Reports? We had a very encouraging phone call about a year =
ago, and they were going to get back to us...)</div><div><br =
class=3D""></div><div>Rich</div><div><br class=3D""></div><div><br =
class=3D""></div><div><blockquote type=3D"cite" class=3D""><div =
class=3D""><div dir=3D"ltr" class=3D""><div class=3D"">Bob</div></div><br =
class=3D""><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Tue, Oct 11, 2022 at 6:57 AM Rich Brown &lt;<a =
href=3D"mailto:richb.hanover@gmail.com" =
class=3D"">richb.hanover@gmail.com</a>&gt; wrote:<br =
class=3D""></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex"><div style=3D"overflow-wrap: =
break-word;" class=3D""><br class=3D""><div class=3D""><br =
class=3D""><blockquote type=3D"cite" class=3D""><div class=3D"">On Oct =
10, 2022, at 8:05 PM, Bob McMahon via Rpm &lt;<a =
href=3D"mailto:rpm@lists.bufferbloat.net" target=3D"_blank" =
class=3D"">rpm@lists.bufferbloat.net</a>&gt; wrote:</div><br =
class=3D""><div class=3D""><span =
style=3D"font-family:Helvetica;font-size:12px;font-style:normal;font-varia=
nt-caps:normal;font-weight:normal;letter-spacing:normal;text-align:start;t=
ext-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;tex=
t-decoration:none;float:none;display:inline" class=3D"">&gt; I think =
conflating bufferbloat with latency misses the subtle point in =
that</span><br =
style=3D"font-family:Helvetica;font-size:12px;font-style:normal;font-varia=
nt-caps:normal;font-weight:normal;letter-spacing:normal;text-align:start;t=
ext-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;tex=
t-decoration:none" class=3D""><span =
style=3D"font-family:Helvetica;font-size:12px;font-style:normal;font-varia=
nt-caps:normal;font-weight:normal;letter-spacing:normal;text-align:start;t=
ext-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;tex=
t-decoration:none;float:none;display:inline" class=3D"">&gt; bufferbloat =
is a measurement in memory units more than a measurement in</span><br =
style=3D"font-family:Helvetica;font-size:12px;font-style:normal;font-varia=
nt-caps:normal;font-weight:normal;letter-spacing:normal;text-align:start;t=
ext-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;tex=
t-decoration:none" class=3D""><span =
style=3D"font-family:Helvetica;font-size:12px;font-style:normal;font-varia=
nt-caps:normal;font-weight:normal;letter-spacing:normal;text-align:start;t=
ext-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;tex=
t-decoration:none;float:none;display:inline" class=3D"">&gt; time =
units.</span></div></blockquote></div><br class=3D""><div class=3D"">Yes, =
but... I am going to praise this video, even as I encourage all the =
techies to be sure that they have the units correct.</div><div =
class=3D""><br class=3D""></div><div class=3D"">I've been yammering =
about the evils of latency/excess queueing for 10 years on my blog, in =
forums, etc. I have not achieved anywhere near the notoriety of this =
video (almost a third of a million views).</div><div class=3D""><br =
class=3D""></div><div class=3D"">I am delighted that there's an =
engaging, mass-market Youtube video that makes the case that bufferbloat =
even exists.&nbsp;</div><div class=3D""><br class=3D""></div><div =
class=3D"">Rich</div></div></blockquote></div>

<br class=3D"">
<span style=3D"background-color:rgb(255,255,255)" class=3D""><font =
size=3D"2" class=3D"">This electronic communication and the information =
and any files transmitted with it, or attached to it, are confidential =
and are intended solely for the use of the individual or entity to whom =
it is addressed and may contain information that is confidential, =
legally privileged, protected by privacy laws, or otherwise restricted =
from disclosure to anyone else. If you are not the intended recipient or =
the person responsible for delivering the e-mail to the intended =
recipient, you are hereby notified that any use, copying, distributing, =
dissemination, forwarding, printing, or copying of this e-mail is =
strictly prohibited. If you received this e-mail in error, please return =
the e-mail to the sender, delete it from your computer, and destroy any =
printed copy of it.</font></span></div></blockquote></div><br =
class=3D""></body></html>=

--Apple-Mail=_53FB8F67-909E-4B98-A08D-A219B60BF5F6--

--===============3092875974034438953==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============3092875974034438953==--
