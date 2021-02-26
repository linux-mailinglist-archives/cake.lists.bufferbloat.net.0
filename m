Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FF4A3264B6
	for <lists+cake@lfdr.de>; Fri, 26 Feb 2021 16:27:46 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id D59B53CB38;
	Fri, 26 Feb 2021 10:27:44 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1614353264;
	bh=ldV4DyUh+v6MpK2BYoTzVKoTZaIPaKq05UvWB2AW9tE=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=RtffB5xy0LA3vSksU+oSmkXF4Cw8WiKe7IGpFe5XcQh8HRF9jh4Z932l7VWjb54ce
	 w9ii+V11imrRQRkJ5c/h+2SfZXe70TJDNl53kQmdSliXx9+wQIUOFmldFglMRnNNUW
	 dfRBUV9TND4/tuWpv05rIWSCEaYFrSxgH+4XCMFebQ1LWdq1hlrsm8LsHIRjEZtOGo
	 sjLkUYc9mleLdneWcEUBIMm7VxyAwmVa6at3p+nbL0hOXppxG/ktuHZbsd5gizEEpS
	 hlNtbWDr7k4dJynfFu8qYxh+BZsVczgh1jUV4YySv5cukeDu9pznh9pQ8/Pv0ZoFPq
	 Rw3A1Nk2xbGUA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from wout3-smtp.messagingengine.com (wout3-smtp.messagingengine.com
 [64.147.123.19])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 65F8B3B29E;
 Fri, 26 Feb 2021 10:27:43 -0500 (EST)
Received: from compute7.internal (compute7.nyi.internal [10.202.2.47])
 by mailout.west.internal (Postfix) with ESMTP id C841CA3E;
 Fri, 26 Feb 2021 10:27:41 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute7.internal (MEProxy); Fri, 26 Feb 2021 10:27:42 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lochnair.net; h=
 subject:to:cc:references:from:message-id:date:mime-version
 :in-reply-to:content-type; s=fm2; bh=q65TEQQcY+MEbQQTixxnkLsV4eq
 MPP9Wb1nnAtFL2z8=; b=jhMOuzfT6wlmNskM3InPfr1bb2LafAvpeQc+yRHvBEW
 8IjvJECxKW5tZn4GAKflIRtSwFLs6XnB9KO9m1EJNnfYaZT4eAhgDVmP49z7B3ml
 nZEL0GFEa1WiP77EHCVHaZu7YvFsvyFGU3jsbaFTzUdSx3D7TB8aPOHV7U9Mpx75
 zBQCQGBolcENySVHuohfZlT1WdNjM+E1I3QmK/dURRpPBbdjexeT0bnj6THWAmkd
 XOFao3DbSCwEIHwDwk69M6CGJIb/Ryqp2XhokV7I2tRxWh3SIu4aFzNQ1QujjQQY
 mBl+4xW249UBDy1jlTk9WNgh/t07rBFFIK50EFMVTnw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=q65TEQ
 QcY+MEbQQTixxnkLsV4eqMPP9Wb1nnAtFL2z8=; b=FnPV4IFuuf/E/lVduNrdWl
 ww4z7S2vE0MmLcyzc2LvdzSCmZHKWHrRez3Ps8meLCanTYaN+2CIPHMyDYsYwV8K
 Jql4MtnZiv3yh9RSPrP+WwOBjQpzNdUMeFYsdjjk52Dw6IjZdWokNxmzJwY/F6PQ
 8Lig42wE+bMKWht80sgnhn0cTaZET6KrF0DPWJB7RmEVkP6Bxik0k6wYHC4s8xbE
 7djxMJJeyr+U/RztlcpAdAMzhg5Jd+RyTkksYd412IjO8L/FevdiH6olqAiBZGRd
 sJseYdw3wBypAJiJoJvh4RKhQYuUEp9eMYkVm4Yms6wKX08jDOmSiCqavblmgcrA
 ==
X-ME-Sender: <xms:bBM5YChCM_bew4Uah2T8yRXwIt1xcqSJM-HTZsApTNl2iopfSwq93w>
 <xme:bBM5YKcS9T8XxpmmyloXfiC0Y5fvlAxUvFLQVnJ48aLcr3QlAloFoPCZxyAu6ZjS_
 fuezHhnTPE0vrnITw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrledugdejkecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefuvfhfhffkffgfgggjtgesrgdtreertdefjeenucfhrhhomheppfhilhhsucet
 nhgurhgvrghsucfuvhgvvgcuoehmvgeslhhotghhnhgrihhrrdhnvghtqeenucggtffrrg
 htthgvrhhnpeethfeugfejgfejhfffveekueekuedtfeejieegveeutdekfffhjedtgfff
 tdffheenucfkphepjeejrddukedrudegkedruddtgeenucevlhhushhtvghrufhiiigvpe
 dtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmvgeslhhotghhnhgrihhrrdhnvght
X-ME-Proxy: <xmx:bBM5YHcDjaKPgFv8ty6UejyogsJtF8N1gH_CH6Iy2vSVs1puZQJ_uA>
 <xmx:bBM5YE_npTNLMuQbmYJ6GPoon-S0-8fglMnBOk9awrZIwLI8vI2aZg>
 <xmx:bBM5YDnyqTTHOI8GYJ5UxUbCB6PbJ2yHO2E-di2wMH5GNBBV71I_5Q>
 <xmx:bRM5YDUVQotuNUNjd-4K0Ndmza2PonQBk5U8NVwtnl0I-ByQz0LC_A>
Received: from [10.1.100.229] (77.18.148.104.tmi.telenormobil.no
 [77.18.148.104])
 by mail.messagingengine.com (Postfix) with ESMTPA id 7CD14240064;
 Fri, 26 Feb 2021 10:27:39 -0500 (EST)
To: =?UTF-8?Q?Toke_H=c3=b8iland-J=c3=b8rgensen?= <toke@toke.dk>,
 Dave Taht <dave.taht@gmail.com>
References: <874ki24ref.wl-jch@irif.fr>
 <CAA93jw5GdseVR+mUwYKg53ToRdKrU-v-ZLHaKnbDZ1Y65DLBDg@mail.gmail.com>
 <1e41ddf7-cd08-4fec-b31a-3021f8111dc6@www.fastmail.com>
 <CAA93jw4-wspLUfL_ZJW1BN0uWaEqZGMOVnD3Z1jgrKOJ_r8xLw@mail.gmail.com>
 <87im6h4u2p.fsf@toke.dk>
 <a43b8d79-8d32-4048-a47e-df92eae622fa@www.fastmail.com>
 <369A70AB-3ADF-4211-8A09-E9FB77CEE59D@toke.dk>
 <90a13934-4ec7-4872-bbf8-c6c0f6304ce3@www.fastmail.com>
 <87wnuw1luc.fsf@toke.dk> <86692246-90d3-4b5b-bcb3-5a67a29d67f7@lochnair.net>
 <87mtvryrsi.fsf@toke.dk>
From: Nils Andreas Svee <me@lochnair.net>
Message-ID: <7513975f-9fba-f036-2037-f901e6c29af1@lochnair.net>
Date: Fri, 26 Feb 2021 16:27:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <87mtvryrsi.fsf@toke.dk>
Content-Language: en-US
Subject: Re: [Cake] [Bloat] Fwd: [Galene] Dave on bufferbloat and jitter at
 8pm CET Tuesday 23
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
Cc: =?UTF-8?Q?Toke_H=c3=b8iland-J=c3=b8rgensen_via_Cake?=
 <cake@lists.bufferbloat.net>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 Simon Sundberg <Simon.Sundberg@kau.se>, bloat <bloat@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============3881204904584676968=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

This is a multi-part message in MIME format.
--===============3881204904584676968==
Content-Type: multipart/alternative;
 boundary="------------1625E888C91907451206AC00"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------1625E888C91907451206AC00
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 2/26/21 12:47 PM, Toke Høiland-Jørgensen wrote:

> Yeah, there would have to be some kind of probing to discover when the
> bandwidth goes up (maybe something like what BBR does?). Working out the
> details of this is still in the future, this is all just loose plans
> that I'll try to get back to once we have the measurement tool working
> reasonably well. Input and experiments welcome, of course!

I've kept to maintaining CAKE binaries for the EdgeRouters, so I have a 
lot to read up on if I'm gonna take a stab at this, should be fun though :)

I'll have a look at how BBR does it, and see if I can't figure out how 
that works at least.


--------------1625E888C91907451206AC00
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#ffffff" bgcolor="#000000">
    <p>On 2/26/21 12:47 PM, Toke Høiland-Jørgensen wrote:<br>
    </p>
    <blockquote type="cite" cite="mid:87mtvryrsi.fsf@toke.dk">Yeah,
      there would have to be some kind of probing to discover when the
      <pre class="moz-quote-pre" wrap="">bandwidth goes up (maybe something like what BBR does?). Working out the
details of this is still in the future, this is all just loose plans
that I'll try to get back to once we have the measurement tool working
reasonably well. Input and experiments welcome, of course!
</pre>
    </blockquote>
    <p>I've kept to maintaining CAKE binaries for the EdgeRouters, so I
      have a lot to read up on if I'm gonna take a stab at this, should
      be fun though :)</p>
    <p>I'll have a look at how BBR does it, and see if I can't figure
      out how that works at least.<br>
    </p>
  </body>
</html>

--------------1625E888C91907451206AC00--

--===============3881204904584676968==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============3881204904584676968==--
