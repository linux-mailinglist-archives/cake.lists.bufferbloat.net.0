Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F508BDA82A
	for <lists+cake@lfdr.de>; Tue, 14 Oct 2025 17:55:42 +0200 (CEST)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id C2203796C15;
	Tue, 14 Oct 2025 17:55:40 +0200 (CEST)
Authentication-Results: mail.toke.dk;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=g001.emailsrvr.com header.i=@g001.emailsrvr.com header.a=rsa-sha256 header.s=feedback header.b=lWO0zc2X
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1760457340;
 b=HB6BABETL6f+qALTLTUAdQcuDAomOXSZnosJ4WRMO0KQAdHS1ZJ6K0BSCyKAWqftO4Si/
 EnCKiccxmR1/SyulDkwewsO1K2hL7FN1BbrXfiURjwP4XsHjrVrEe3zCqCF1DVJJRco12UR
 ep6KRTZY30sgjXvd9bqNtzW6soI9ygU=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1760457340; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=Lz/rm9AO8U385XMVdE6ke58U+QQa/PLACp2Vb61QfcM=;
 b=4paHC0im3Je89+kzlgTflDHcUBFoecoCVsktonmIb7MpmAooa/cfsJ/1QmwZSoMtLWWsb
 RoWF6i4pn1uewYPBWCI0AlSzCpDi5HYGidvGYKFyLQTicyyqqNnBnQ7V1rL4S6Q3rJWTiWr
 tmHc9ttjBbMhM9fXcjINlK14c2zbPGg=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=;
 dkim=pass header.d=g001.emailsrvr.com;
 arc=none;
 dmarc=fail header.from=deepplum.com policy.dmarc=none
Authentication-Results: mail.toke.dk; spf=pass smtp.mailfrom=;
 dkim=pass header.d=g001.emailsrvr.com; arc=none (Message is not ARC signed);
 dmarc=fail (Used From Domain Record) header.from=deepplum.com
 policy.dmarc=none
Received: from smtp103.iad3a.emailsrvr.com (smtp103.iad3a.emailsrvr.com
 [173.203.187.103])
	by mail.toke.dk (Postfix) with ESMTPS id DE9E1796BDD
	for <cake@lists.bufferbloat.net>; Tue, 14 Oct 2025 17:55:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=g001.emailsrvr.com;
	s=feedback; t=1760457335;
	bh=qz6MpomKzgk8a1Bya/GArvvq0S1GPBCIaHrT/z3zArA=;
	h=Date:Subject:From:To:From;
	b=lWO0zc2XVhgVYLyw+cMxNF4EWtnM5oiP5we2JdQZ2t1vrEMtLvCpma73ar06yZSp7
	 bN7mWnuO3xl6b3gUO3L/6HI7rM51zpTYncVYhpsbok0xCqmx1Hfqk6otGtwx2sCQL/
	 WH9rVsPsd8pPp34I1S2aopXGayYQm1BIGI8SmUh8=
Received: from app18.wa-webapps.iad3a (relay-webapps.rsapps.net
 [172.27.255.140])
	by smtp29.relay.iad3a.emailsrvr.com (SMTP Server) with ESMTP id D0BDC25124;
	Tue, 14 Oct 2025 11:55:34 -0400 (EDT)
Received: from deepplum.com (localhost.localdomain [127.0.0.1])
	by app18.wa-webapps.iad3a (Postfix) with ESMTP id 9F943211B6;
	Tue, 14 Oct 2025 11:55:34 -0400 (EDT)
Received: by apps.rackspace.com
    (Authenticated sender: dpreed@deepplum.com, from: dpreed@deepplum.com)
    with HTTP; Tue, 14 Oct 2025 11:55:34 -0400 (EDT)
X-Auth-ID: dpreed@deepplum.com
Date: Tue, 14 Oct 2025 11:55:34 -0400 (EDT)
From: "David P. Reed" <dpreed@deepplum.com>
To: "Frantisek Borsik" <frantisek.borsik@gmail.com>
Cc: "Cake List" <cake@lists.bufferbloat.net>,
 codel@lists.bufferbloat.net,
 "bloat" <bloat@lists.bufferbloat.net>,
 "Jeremy Austin via Rpm" <rpm@lists.bufferbloat.net>,
 "libreqos" <libreqos@lists.bufferbloat.net>,
 "Dave Taht via Starlink" <starlink@lists.bufferbloat.net>
MIME-Version: 1.0
Importance: Normal
X-Priority: 3 (Normal)
X-Type: plain
In-Reply-To: 
 <CAJUtOOgSe2CjMUxu2AyLPD9h=eiH5+v1+dc9fYX=a2JzHWwKTA@mail.gmail.com>
References: 
 <CAJUtOOgSe2CjMUxu2AyLPD9h=eiH5+v1+dc9fYX=a2JzHWwKTA@mail.gmail.com>
X-Client-IP: 209.6.168.128
Message-ID: <1760457334.648412280@apps.rackspace.com>
X-Mailer: webmail/19.0.28-RC
X-Classification-ID: 9dc88b32-37c4-43ed-99fa-39b5d251f5ae-1-1
Message-ID-Hash: CP343KROW4PNPF5KKS7Q5DD5HGOCGRQZ
X-Message-ID-Hash: CP343KROW4PNPF5KKS7Q5DD5HGOCGRQZ
X-MailFrom: dpreed@deepplum.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: The Bust of the Bandwidth Bubble (from Bandwidth by Dan Caruso)
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/1760457334.648412280@apps.rackspace.com/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Some comments below by me that point out that "bandwidth bubble" makes no sense as a concept economically.

On Tuesday, October 14, 2025 01:39, "Frantisek Borsik" <frantisek.borsik@gmail.com> said:

...

> Years before the Bandwidth Bubble had begun to take shape, data had
> surfaced that indicated something major was amiss. In 1998 an AT&T Labs
> Internet researcher named Andrew M. Odlyzko published a paper debunking the
> widely held view that Internet traffic was doubling every three months.
> Odlyzko explained that the implications of this rapid traffic doubling
> would imply that by 2001 Internet traffic would have grown by a factor of
> seventeen million. The amount of Bandwidth, Odlyzko calculated, would
> require every Internet user on Earth to stream video twenty-four hours a
> day. Clearly, that wasn't the trajectory.

Andrew Odlyzko was a good friend of mine at the time. Andrew's a mathematician, not an "Internet researcher", and this paper was trenchant and brilliant. He was not speaking for AT&T. He was just pointing out that the Emperor was naked, which many of us engineers and mathematicians were also pointing out. Naked, in the sense that no data supported the claim. None at all. I tried to track the claim back to the source, and found it was made up in a talk by an "industry analyst", and then echoed over and over by Very Serious People who gave speeches. (so often this is the case ... self-reproducing "facts" that have a life of their own).

> 
> "[Doubling every three months] was an extremely convenient myth," said
> Odlyzko. "Every entrepreneur who was getting financing could quote it." In
> contrast, Odlyzko's analysis suggested Internet usage was doubling only
> once a year.
> 
> Odlyzko's inconvenient truth was either unnoticed or, more likely,
> 
> ignored."

As noted, many people knew that the claim was not founded in data or reality at the time. So Andrew wasn't unnoticed, nor was his paper ignored. It just was never cited by journalists or industry analysts, along with those of us in the industry who knew the real story. I spoke to many reporters "on background" about this at the time. But I, like Andrew, wasn't a "spokesman" for VCs. 

...
> 
> 
> "In the intermediate run, there would be neither be a clear "bandwidth
> glut" nor a "bandwidth scarcity," but a more balanced situation, with
> supply and demand growing at comparable rates.
> My reaction after reading Odlyzko's paper that night was: "Holy crap. UUnet
> is lying." What I said was similar to the reaction I had when I read about
> a deal
> between Enron and Blockbuster for internet bandwidth since I knew that
> Enron had no bandwidth to sell.
> Again, "Holy crap."

This is consonant with my brief experience advising consultants to Enron at the time.
Enron was selling what amounted to "futures" (but not regulated futures) as if they were products. Interestingly, in their accounting (which was very creative), they valued these "future sales" of bandwidth as Real Options on those "futures". That is, they projected their future sales as a stream of payments, and then created accounting units to value the volatility of those future sales using Black Scholes based on the presumed volatility. Then they "sold" these options to a corporate entity that "bought" them (actually it was structured as a collateralized loan). The result was that they could say the options were "capital assets".  [I've simplified this, but it is well documented in the Enron bankruptcy].

What was going on was a legal way to create "capital" from nothing. (the future uncertainty of Enron's sales of bandwidth to Blockbuster is the "nothing", it was "unknowable").

It's very similar to how NVidia gains a capital asset by a letter of intent to provide OpenAI with GPUs as just announced, and OpenAI gives Oracle a capital asset by promising to have Oracle resell a huge amount OpenAI's products.

On its face, this is all *legal*. But it is openly a scam, too. Just not an illegal scam.

Enron's "bandwidth trading" platform was real, even though they had no bandwidth to trade. They were proposing to be a "two-sided market" and valuing the volatility of the future trading.

So, things weren't so simple. Finance (modern finance) and financial accounting now operate on a plane of unreality.

Andrew Odlyzko was right - there was no bandwidth there at all. But to start a platform, you don't need bandwidth to start. You need a "trading network", and just as Enron also was a platform for trading Oil Future Sales, it was betting it could be such a platform for bandwidth trading too.

The bug here was that (as I learned), Enron had no clue how "bandwidth trading" might connect to the way the Internet worked - things like peering and routing. They thought they could somehow sign up all the suppliers of bandwidth to this big thing called "The Internet" and insert themselves as a middleman, a trading platform.

[And that's what I noticed, as a network engineer - they were clueless on the technology side of how the Internet worked. Utterly clueless. Just finance mathematicians. It's why I lost interest in their platform entirely.]

However, the value of a network isn't the volume of traffic it carries. The value of the network is the diversity of connections and groups it can support. That's what makes a network different from an optical fiber. It's the switching it can do.

And this is my view of why the "Bandwidth Bubble" was a bubble. The investors and analysts were clueless when they decided that the value of the Internet was measured by capacity.

The value of Starlink, for example, would be near zero, if it didn't connect to the entire Internet. The options it creates for users (connections they can choose to make in the future) come entirely from Internet access, not dishy-to-dishy packets.

It's worth noting that the value in POTS was never in the subscriber line capacities (copper), which never carried many bits at all. The value in POTS was in the number of places each customer can call when they need to. That's "option value", not capacity.

(PS: I'm the guy who Reed's Law is named after. Along with Metcalfe's Law, it explains the value of the Internet to users. The capacity of the Internet cannot be measured, because so much of it is in LANs these days. No one knows how much of all the WiFi nets are used or not. Most are mostly idle most of the time.)

So the two things that fundamentally matter in the Internet are:

1. Latency
2. Reachability via switching

Neither is measured by "bandwidth".

_______________________________________________
Cake mailing list -- cake@lists.bufferbloat.net
To unsubscribe send an email to cake-leave@lists.bufferbloat.net
