Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id E7AE6AD036A
	for <lists+cake@lfdr.de>; Fri,  6 Jun 2025 15:45:36 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id EDE6C3CB45;
	Fri,  6 Jun 2025 09:45:35 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1749217535;
	bh=eWqnaf+GrmHTrQcr22q1Xs8fCcyV+Bv1VJk11KOnpNo=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:
	 From;
	b=Mrh7xDXFCUY5w3AgSLNwoC4FNbn6xQBbFFW8UCyKcbazNfo+Kb9OrierFLoR41vIF
	 LSA+WS1bQivIybs3gvX2oixBRT6kNWrwfF6v72qOCCZUV0G7Pssw6E9YDDltx6hEl/
	 57FChRP46HqiavppA/QvMIdpOmyovfPC32v6hBf4c4RQASJG4EXwC+A39p9LJ46YHK
	 qFDlug4Ub7yB4ytSNuVTA4fMEUlIddCmRiS0K6h3cMvW+ufmQCqa5uaVVEm5p5Cs2M
	 Ykog5rk2ZAldC6YbO8trDSL3ibBhu+G+KmfSiwiY8xNgYU55cs79CqKyWQsI87Wl7G
	 YdQMgMcqHwZ5w==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from fhigh-b5-smtp.messagingengine.com
 (fhigh-b5-smtp.messagingengine.com [202.12.124.156])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 78B1A3B29D
 for <cake@lists.bufferbloat.net>; Fri,  6 Jun 2025 09:45:34 -0400 (EDT)
Received: from phl-compute-08.internal (phl-compute-08.phl.internal
 [10.202.2.48])
 by mailfhigh.stl.internal (Postfix) with ESMTP id DD288254010C
 for <cake@lists.bufferbloat.net>; Fri,  6 Jun 2025 09:45:33 -0400 (EDT)
Received: from phl-imap-09 ([10.202.2.99])
 by phl-compute-08.internal (MEProxy); Fri, 06 Jun 2025 09:45:33 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lochnair.net; h=
 cc:content-type:content-type:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:subject
 :subject:to:to; s=fm3; t=1749217533; x=1749303933; bh=epe0t6+Sb8
 mhkfsO/+k5HZFyJ6xQ1GjCM7dJjRPSVto=; b=bCsDTV3IAcyc+frfSc2s+PIe8e
 gejei2Qrch1ZvMDflwA90NHjqGCUwaac3LjJ/uZBXS1i3nDS8pVIiNTmGL8LoELv
 FcUOzUwhr4s76J+sZ8vedhFKO0V7BXG+4L/zsj7KxeC9Fvd3PZu/BBH113K+GVv0
 1EFy3RYI+M6FW8fvkRXdzoKvrMnqT23yj53e/j4RsNNIzmdW3yScExCpMimYr1Iq
 gL/+SWqwS+QRFS1e+s8uRcS/ug5MVWWNcM80vUrGuOGPmtSDUU6I+SoGH8do98Wn
 oYMdY3Sb3AzuXCIQ/jpKT9+/Tquo+VTwlL6ivPqpHhygg3aaxMf39u8Ri3dg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
 1749217533; x=1749303933; bh=epe0t6+Sb8mhkfsO/+k5HZFyJ6xQ1GjCM7d
 JjRPSVto=; b=kRKsBCzblxGIkhQtRTI5cVL3jd40DASy1zHuqJvJV5Ibliu3fWF
 J0dqOGutO/Skh8GndCZJxYXNgXvnSQiFJBdNzY1/C6Y9SC2XbyMYEYiDhpA9aBou
 BsU7Ewrk8MZliQSvH8cbj4hXyvaxjMF3gbSb52r2tXvesb7cEVFqeGipzknEZqm5
 3u3cXxFMU2XbUS2MNbS2KMjIwzmLvI2wdnTfnbSiWDOZ7kb0vznVr4elnYrBlNyK
 LayEfMzHUx4i9NwRG78yZMtm9t3ipC1PFaqvSE7sMshW6CKhs2iyeRCHnYDGGiZh
 1ShkqrF3QQakSILj+p/LWQUMtvIe3c6S4Wg==
X-ME-Sender: <xms:_fBCaLDdftoPGLDcgYdvC9PJZXP_QFsmPSwkRQggVcnFU2lOoqLXfA>
 <xme:_fBCaBigZkleRVHY4ILvYI5qJhYsU5NYFpCHmrNHxCMO18jq1afrA-YuX4y5DTujr
 WqpcxSc6q7utpmLLQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtddugdehudejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnh
 htshculddquddttddmnecujfgurhepofggfffhvffkjghfufgtsegrtderreertddtnecu
 hfhrohhmpedfpfhilhhsucetnhgurhgvrghsucfuvhgvvgdfuceomhgvsehlohgthhhnrg
 hirhdrnhgvtheqnecuggftrfgrthhtvghrnhepueegvddvtdefhfehlefgleehhfeltefh
 jeejffehtdfgtedthfeiheduiefftdffnecuffhomhgrihhnpegsuhhffhgvrhgslhhorg
 htrdhnvghtnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhho
 mhepmhgvsehlohgthhhnrghirhdrnhgvthdpnhgspghrtghpthhtohepuddpmhhouggvpe
 hsmhhtphhouhhtpdhrtghpthhtoheptggrkhgvsehlihhsthhsrdgsuhhffhgvrhgslhho
 rghtrdhnvght
X-ME-Proxy: <xmx:_fBCaGkSCNKxd2S13skUkyRtueXNq9u_4mjP6K0Ds3eo5rCzXrnUig>
 <xmx:_fBCaNyYqflVCZ6BSsrCrZ0IJQEWeDF4yykvxteyuDducBipJz7n7A>
 <xmx:_fBCaASCn5sg80n-YX1YCoJWWyQHjbF5f3LPkgoOXuYLX4yvKC15WQ>
 <xmx:_fBCaAaQUGaIERM-FfHAxCJP9QOTCnDam791ZW1-gZaGOhLnuOqYnA>
 <xmx:_fBCaPEOH5cQYgbkjBGyssgKB_iiwV7yvx1lZ-SqBRoGU5YSOOyv2Nn7>
Feedback-ID: i6a5b4305:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
 id 5B97F3020064; Fri,  6 Jun 2025 09:45:33 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
X-ThreadId: T86a21539e26154d8
Date: Fri, 06 Jun 2025 20:45:12 +0700
To: "Cake List" <cake@lists.bufferbloat.net>
Message-Id: <196300b6-d329-46ea-ac32-e564c2bfbc18@app.fastmail.com>
In-Reply-To: <CAPB3MF4ApjawJtr=spCr92rBvPBwBnwGmwR+fsGdPot0pM6_zQ@mail.gmail.com>
References: <CAPB3MF4ApjawJtr=spCr92rBvPBwBnwGmwR+fsGdPot0pM6_zQ@mail.gmail.com>
Subject: Re: [Cake] CAKE on the bonding interface (master) or the
 bondedinterfaces (slaves)?
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
From: Nils Andreas Svee via Cake <cake@lists.bufferbloat.net>
Reply-To: Nils Andreas Svee <me@lochnair.net>
Content-Type: multipart/mixed; boundary="===============0342003380428854077=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============0342003380428854077==
Content-Type: multipart/alternative;
 boundary=5e19343ff436462d84173f7a94aec16d

--5e19343ff436462d84173f7a94aec16d
Content-Type: text/plain
Content-Transfer-Encoding: 7bit

Are you using the shaper (i.e. setting a bandwidth) or shaping on ingress as well?

If so, I'd apply CAKE on the virtual NIC, but if you're running line rate and have a physical NIC with BQL support in the driver, I'd do each individual NIC

(assuming the bonding driver isn't able to do BQL)

Best Regards
Nils

On Thu, Jan 16, 2025, at 09:57, cam enih via Cake wrote:
> Hi CAKE folks,
> 
> I'm new to traffic shaping, just a quick question here:
> 
> I have this virtual NIC set up and a few physical NICs bonded to it. Shall I apply the CAKE algorithm on the virtual one or the physical ones, or all of them? If either can do it, which is the best?
> 
> Thanks,
> Eric
> _______________________________________________
> Cake mailing list
> Cake@lists.bufferbloat.net
> https://lists.bufferbloat.net/listinfo/cake
> 

--5e19343ff436462d84173f7a94aec16d
Content-Type: text/html
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html><html><head><title></title></head><body><div>Are you usin=
g the shaper (i.e. setting a bandwidth) or shaping on ingress as well?</=
div><div><br></div><div>If so, I'd apply CAKE on the virtual NIC, but if=
 you're running line rate and have a physical NIC with BQL support in th=
e driver, I'd do each individual NIC</div><div><br></div><div>(assuming =
the bonding driver isn't able to do BQL)</div><div><br></div><div id=3D"=
sig44785538"><div class=3D"signature">Best Regards</div><div class=3D"si=
gnature">Nils</div></div><div><br></div><div>On Thu, Jan 16, 2025, at 09=
:57, cam enih via Cake wrote:</div><blockquote type=3D"cite" id=3D"qt" s=
tyle=3D""><div dir=3D"ltr"><div>Hi CAKE folks,</div><div><br></div><div>=
I'm new to traffic shaping, just a quick question here:</div><div><br></=
div><div>I have this virtual NIC set up and a few&nbsp;physical&nbsp;NIC=
s bonded to it. Shall I apply the CAKE algorithm on the virtual one or t=
he physical ones, or all of them? If either can do it, which is the best=
?</div><div><br></div><div>Thanks,</div><div>Eric</div></div><div>______=
_________________________________________</div><div>Cake mailing list</d=
iv><div><a href=3D"mailto:Cake@lists.bufferbloat.net">Cake@lists.bufferb=
loat.net</a></div><div><a href=3D"https://lists.bufferbloat.net/listinfo=
/cake">https://lists.bufferbloat.net/listinfo/cake</a></div><div><br></d=
iv></blockquote><div><br></div></body></html>
--5e19343ff436462d84173f7a94aec16d--

--===============0342003380428854077==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============0342003380428854077==--
