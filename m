Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 76F1638CA6B
	for <lists+cake@lfdr.de>; Fri, 21 May 2021 17:51:11 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 230FB3CB39;
	Fri, 21 May 2021 11:51:10 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1621612270;
	bh=1pMCsldIWb6Bj6F4vkNoRrFkrY+Cv0Bx6vLitVRKJNc=;
	h=Date:In-Reply-To:References:To:From:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=KGPvCafVO8d6Lqr0LnXy64wPC8ofPKxMv9x0hs1EDDcGLjNmYuW1L1b3IKJ8q2roe
	 ZWu68Uyrj0aDmbbx1r04AmbJ+ztNNkiijY+kpIU9aJ5aI4FAlrgIVsdlt0qxoTIuCx
	 jiU6YL4TCUklpau3xRZ99FbtE8dZCw6JD7l2+nXvfVG66wtVPd8sdWDjhTCX6ZbxVY
	 uX6p+0VsSjGbTxwDbm3KJXqmEMUGMmrfslssFHdXpQEHsyiSmhifk32TK5Ab03EBeg
	 CDyg1oN1kC5AUbXBshnMYmVRPBCPaiDLlkZPWBn8SS6fd6DzM7FJG+2yIvNy8pF4nX
	 X+h2VkwIotAVg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from relay9-d.mail.gandi.net (relay9-d.mail.gandi.net
 [217.70.183.199])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id DEC473CB35
 for <cake@lists.bufferbloat.net>; Fri, 21 May 2021 11:51:08 -0400 (EDT)
Received: (Authenticated sender: jcsmail@sager.me.uk)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 5EBF7FF802
 for <cake@lists.bufferbloat.net>; Fri, 21 May 2021 15:51:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sager.me.uk; s=gm1;
 t=1621612267;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=pdyZTefi3uKoGaq/2IM3xm+7ueKSCR6zWSUZits1Iug=;
 b=ESy54XRdH9RLswRBe5rcRx3WzxOAdfe3b6syE0+BppkTXScUoSFs3JMZjISbz4sA+pYlVp
 Av4Mm+btR/gVV9mGKadHVMwlrTR/BhN++XLQwUYAuP4n9XRqrIILMMz1ofBQVhGkcPLZXr
 FwfJwQUqQ8dNNrzFAzWzLJCBRZVavuOxZbdXrTMkOPGjyrhdCSe2Ce7rGzF4cKlbPTYcVv
 isbIZG4J51xJbxsYuzhOFjrrprdSjLqS6Ox6FkgpGNc0kIB3CqYyWF2wsFT9xzzSAsC7WR
 KR/xoMrLrvIt3dWiVImKn9wQ69HeH0rg9crhfMryP/1qvFNEbMgVlO3TvqMaPw==
Received: from [192.168.240.4] by mainserver.wc with esmtp (Exim 4.93)
 (envelope-from <john@sager.me.uk>) id 1lk7QY-0015PT-ER
 for cake@lists.bufferbloat.net; Fri, 21 May 2021 16:51:06 +0100
Date: Fri, 21 May 2021 16:51:04 +0100
User-Agent: K-9 Mail for Android
In-Reply-To: <91d484ec338c58f622c25285bf4ff8658fde4a03.camel@lochnair.net>
References: <91d484ec338c58f622c25285bf4ff8658fde4a03.camel@lochnair.net>
MIME-Version: 1.0
To: cake@lists.bufferbloat.net
From: John Sager <john@sager.me.uk>
Message-ID: <2BB2622F-69F0-4ED3-9A85-3FF96D618F21@sager.me.uk>
Subject: Re: [Cake] CAKE host isolation modes with NAT - two routers
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
Content-Type: multipart/mixed; boundary="===============3856031180653981180=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============3856031180653981180==
Content-Type: multipart/alternative; boundary="----7NZCDA9LHC44LRE2S44V7V0QRBNSWA"
Content-Transfer-Encoding: 7bit

------7NZCDA9LHC44LRE2S44V7V0QRBNSWA
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

I did something similar some years ago in an attempt to divine video server=
s (eg YouTube) from their TLS certificates in Https connections to mark the=
 connection appropriately=2E The nfqueue stuff worked beautifully, the cert=
 stuff less so, so I abandoned it=2E With the latest TLS version the cert s=
tuff is no longer visible anyway=2E

There is a Python binding to libnetfilter_queue  which might make it easie=
r to play quickly=2E

regards,
John


On 20 May 2021 17:07:43 BST, Nils Andreas Svee <me@lochnair=2Enet> wrote:
>Hi folks
>
>Currently my setup looks something like this: LAN <-> EdgeRouter <->
>WireGuard <-> VPS <-> Internet=2E
>
>CAKE for upstream is running on the EdgeRouter and downstream on the
>VPS=2E
>
>The public IPs are all on the VPS per today, so that the host isolation
>can do its job with NAT enabled=2E
>
>Ideally I'd like to route the public IPs to each endpoint and handle
>NAT-ing there, but then I'd obviously lose the ability to do proper
>host isolation=2E
>
>Now, I've been toying with the idea of using an userspace application
>to extract conntrack information, to let the VPS know which host hash
>it should use=2E
>
>I might be way of here, but I'm thinking of using NFQUEUE to mark new
>flows based on information from the EdgeRouter, and let tc filters set
>the host hash based on that mark=2E For performance purposes only send
>unmarked flows to NFQUEUE=2E
>
>I realise this is kinda overkill, but it might we a fun weekend
>project=2E
>
>--=20
>Best Regards,
>Nils
>
>_______________________________________________
>Cake mailing list
>Cake@lists=2Ebufferbloat=2Enet
>https://lists=2Ebufferbloat=2Enet/listinfo/cake

--=20
Sent from the Aether=2E
------7NZCDA9LHC44LRE2S44V7V0QRBNSWA
Content-Type: text/html;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body>I did something similar some years ago in an attem=
pt to divine video servers (eg YouTube) from their TLS certificates in Http=
s connections to mark the connection appropriately=2E The nfqueue stuff wor=
ked beautifully, the cert stuff less so, so I abandoned it=2E With the late=
st TLS version the cert stuff is no longer visible anyway=2E<br><br>There i=
s a Python binding to libnetfilter_queue  which might make it easier to pla=
y quickly=2E<br><br>regards,<br>John<br><br><br><div class=3D"gmail_quote">=
On 20 May 2021 17:07:43 BST, Nils Andreas Svee &lt;me@lochnair=2Enet&gt; wr=
ote:<blockquote class=3D"gmail_quote" style=3D"margin: 0pt 0pt 0pt 0=2E8ex;=
 border-left: 1px solid rgb(204, 204, 204); padding-left: 1ex;">
<pre class=3D"k9mail">Hi folks<br><br>Currently my setup looks something l=
ike this: LAN &lt;-&gt; EdgeRouter &lt;-&gt;<br>WireGuard &lt;-&gt; VPS &lt=
;-&gt; Internet=2E<br><br>CAKE for upstream is running on the EdgeRouter an=
d downstream on the<br>VPS=2E<br><br>The public IPs are all on the VPS per =
today, so that the host isolation<br>can do its job with NAT enabled=2E<br>=
<br>Ideally I'd like to route the public IPs to each endpoint and handle<br=
>NAT-ing there, but then I'd obviously lose the ability to do proper<br>hos=
t isolation=2E<br><br>Now, I've been toying with the idea of using an users=
pace application<br>to extract conntrack information, to let the VPS know w=
hich host hash<br>it should use=2E<br><br>I might be way of here, but I'm t=
hinking of using NFQUEUE to mark new<br>flows based on information from the=
 EdgeRouter, and let tc filters set<br>the host hash based on that mark=2E =
For performance purposes only send<br>unmarked flows to NFQUEUE=2E<br><br>I=
 realise this is kinda overkill, but it might we a fun weekend<br>project=
=2E<br></pre></blockquote></div><br>-- <br>Sent from the Aether=2E</body></=
html>
------7NZCDA9LHC44LRE2S44V7V0QRBNSWA--

--===============3856031180653981180==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============3856031180653981180==--
