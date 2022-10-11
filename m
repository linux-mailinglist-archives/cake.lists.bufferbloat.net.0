Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 982265FB3F9
	for <lists+cake@lfdr.de>; Tue, 11 Oct 2022 15:57:46 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id B5CF03CB43;
	Tue, 11 Oct 2022 09:57:43 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1665496663;
	bh=thkM5qE9OvUuI7BYHY827mVCJtNL3cmkIiF3tDjvD1U=;
	h=Date:In-Reply-To:To:References:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=bkHTIV0C4VpndFGbu+D7blrhLlXFwf6mVSetF2cyNB6Th5f9BPm5VtMpjJF5XQ2Sj
	 Vtvj+zpu9XZo3afQ/zRMT86A0UKD7laZLa0UM44TLw1hvtq/Md1iQU7PNfp4P/Z8av
	 o5F4Uad8z6pPCqa3qTHZEtb5QL1Ld7f9D9/mhwFsXBKHHIGvhCph7i1xxvN6ZCkgZg
	 qJYWhfHkTzXG2F+2XQplVcp4r6Evynv99VndfdrflQ3s6SsbB3NA8eVQuwvOXf+QOe
	 p4RtylqLVaOvyYcKrCJA0EQ/GP5iNZfCgpVKUnh3gWeIkNDoqPhy6biWan1uopwe2i
	 6bkquxc2TzK/A==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-qv1-xf30.google.com (mail-qv1-xf30.google.com
 [IPv6:2607:f8b0:4864:20::f30])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 76B383B2A4;
 Tue, 11 Oct 2022 09:57:41 -0400 (EDT)
Received: by mail-qv1-xf30.google.com with SMTP id i12so8986346qvs.2;
 Tue, 11 Oct 2022 06:57:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=references:to:cc:in-reply-to:date:subject:mime-version:message-id
 :from:from:to:cc:subject:date:message-id:reply-to;
 bh=OHOTprnXylxQKy+tSkTP/nU3Tgrp5u6iCIgf8ZUvfAk=;
 b=Y+gOgQXAjhVSvFEZ2FQ2Z27zMGEW7ucDjbPxnqN4ixMeab7cDjSTJlGGqR3royEqJd
 Hp5tFx/fAYSH3qiEbIvUeiuSCPi1VE3GJxfDJXHMdpDKgP0wSwzM3PE3Qi2l0w7FI3Tg
 X5SX2KYiIeag9OQfE2UwMJn5DF0cyAdyNM8g8ZCynHPAjZWXjNaj1zLN6y7lM9DExVjL
 KhR4V1NPDyDgN8RMfzwbD0ZTlvuFALbsxvYcRYKdKmxi9T4LgJG0AyuSNl28BY6aS+Bt
 CrCSeSQmAuznrqxtgWGF716098IWAgp3SQru7cCG7WO9426Wu20HyI4tI4bfVkvf++g5
 mvEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=references:to:cc:in-reply-to:date:subject:mime-version:message-id
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=OHOTprnXylxQKy+tSkTP/nU3Tgrp5u6iCIgf8ZUvfAk=;
 b=UymjILqkYLmRdDJi8PzEt6xzae3entPpTP3B4RbCOwHRgyAx7ZCVpx1u799iamEmTl
 1q/784NGDACORKi8Zjj4CHE3ORIR3A4vittNhiO4qwEjZGXWn5FJJDUk3KIkxeIrP3Lm
 Gp6o1THqrvn3PDhCAMUTUIr2dscNaGXRrSsN1CC3KCnTOF8yY6Jrsx4FckVeM3UU+UEs
 awcoBq+e+AalMJZqUZScOUG44I+c+kImSRbYvuL6aXRw9dR8EwVKLCXAgQYHZfpjPsSw
 pTOfQtBmoC2cpRNkJetjHfB3xIQJ9UrV/YPoCao7nOiNJcDJbsdEm3CAUh99sPHg7m/R
 KNeA==
X-Gm-Message-State: ACrzQf0WdOWlodpVh9wYrQQ+Q80kqFsULS21AMMs5NbfSQefEQCH5wjX
 tmPoRgltu9NmoQ9+ef4dmVU=
X-Google-Smtp-Source: AMsMyM4j7v673wyRXsjfYzYjZZ3GEgAoG7mQKazcesY5DJuWUvNpQ7txquWrFnxHKhICExPya4ZE0Q==
X-Received: by 2002:a0c:a711:0:b0:4b1:8816:4168 with SMTP id
 u17-20020a0ca711000000b004b188164168mr18626878qva.46.1665496660803; 
 Tue, 11 Oct 2022 06:57:40 -0700 (PDT)
Received: from [192.168.253.116] ([198.55.239.10])
 by smtp.gmail.com with ESMTPSA id
 1-20020ac85741000000b003998bb7b83asm5684892qtx.90.2022.10.11.06.57.39
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Oct 2022 06:57:40 -0700 (PDT)
Message-Id: <D0D4490C-061A-46DA-9592-51C3D210772F@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.7\))
Date: Tue, 11 Oct 2022 09:57:39 -0400
In-Reply-To: <CAHb6Lvqbj0MDhWvLaEk8Hbr_vZwDs1NdCj1X9Xvxp+x+Mbs0Vw@mail.gmail.com>
To: Bob McMahon <bob.mcmahon@broadcom.com>
References: <CAA93jw77h=ztEOzyADriH2PnswUDQiyNvBdsuFi+K5EexpoxUQ@mail.gmail.com>
 <CE784DAD-5012-4FD3-9E2D-B931CBF1EBF8@telenor.no>
 <E615B656-9AAA-4AD4-8507-C461659846C5@gmx.de>
 <BB4CAEC2-669B-4595-BE6A-26D365B70535@telenor.no>
 <72674884-9E0D-4645-B5F5-C593CC45A8F0@gmx.de>
 <CAHb6LvqHNv_R2Asn944Kx91Cud5J3XSM-c+PcK8Bz19uaMDynw@mail.gmail.com>
 <q06231q2-n7qn-345s-np6r-p5717713q3po@ynat.uz>
 <CAHb6Lvqbj0MDhWvLaEk8Hbr_vZwDs1NdCj1X9Xvxp+x+Mbs0Vw@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============8243323133182925158=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>


--===============8243323133182925158==
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_6C8B5947-C335-4550-BF61-C04404B5DD6A"


--Apple-Mail=_6C8B5947-C335-4550-BF61-C04404B5DD6A
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii



> On Oct 10, 2022, at 8:05 PM, Bob McMahon via Rpm =
<rpm@lists.bufferbloat.net> wrote:
>=20
> > I think conflating bufferbloat with latency misses the subtle point =
in that
> > bufferbloat is a measurement in memory units more than a measurement =
in
> > time units.

Yes, but... I am going to praise this video, even as I encourage all the =
techies to be sure that they have the units correct.

I've been yammering about the evils of latency/excess queueing for 10 =
years on my blog, in forums, etc. I have not achieved anywhere near the =
notoriety of this video (almost a third of a million views).

I am delighted that there's an engaging, mass-market Youtube video that =
makes the case that bufferbloat even exists.=20

Rich=

--Apple-Mail=_6C8B5947-C335-4550-BF61-C04404B5DD6A
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" class=3D""><br =
class=3D""><div><br class=3D""><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Oct 10, 2022, at 8:05 PM, Bob McMahon via Rpm &lt;<a =
href=3D"mailto:rpm@lists.bufferbloat.net" =
class=3D"">rpm@lists.bufferbloat.net</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;" class=3D"">&gt; I think conflating =
bufferbloat with latency misses the subtle point in that</span><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" class=3D""><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;" class=3D"">&gt; bufferbloat is a =
measurement in memory units more than a measurement in</span><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" class=3D""><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;" class=3D"">&gt; time =
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
class=3D"">Rich</div></body></html>=

--Apple-Mail=_6C8B5947-C335-4550-BF61-C04404B5DD6A--

--===============8243323133182925158==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============8243323133182925158==--
