Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 26442B4AABF
	for <lists+cake@lfdr.de>; Tue,  9 Sep 2025 12:32:25 +0200 (CEST)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 27B9E652378;
	Tue, 09 Sep 2025 12:32:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=20250711; t=1757413944;
	bh=2OEDkKNRFzEplSHZeSHYQAAqXzujRLs+qA4wWtZc7/4=;
	h=To:In-Reply-To:References:Date:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=gl652OxFnhUaiM2sbeZ9da2JUbr7Qjv/RBFATav14YIlXHFytavBmLv1jDyT89oA2
	 Vk0bA9XFYOWN1tq0CK0EvcCpsQIOQC4m2/BWY0XY1Uob0jUqGR4jHupzZPepK9Xpry
	 CvIv1P/jiMQVvQMSpXNxRy5TwL3wJrsqyXk2/gXBjPxZovhfs3n71wEdanT3Ifajv/
	 olp/9P8FUeAGK9yrQuByv5O7Og5oY7id4e2PDzpxYlW5T91Bx5ArW6S0Ps6I1CgCMh
	 0GCWUkowc2EqgcLYynOTXZSI9lEhZ8f7MfBEVaBDmLh/5F/yKS6g1imS193XRdmzHF
	 jeMVx+TCFWTKw==
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1757413944;
 b=kFYUR/4IRw5WRJX/IlRVY0RHn+Nb3Xrj3nMSs4X+0LDsUJFi+89De8kRNyx0xpe0Q30XW
 9rZBsYrmM5fi6tP6Jl8bxpTuq/gTx9bOZLOjAThF2KMohaZsSUPQL+RqCb6/ToaSgsJXAxJ
 c0fl+cmkJ7xPcA8Og6BRk1vkJ8M9eps=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1757413944; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=2OEDkKNRFzEplSHZeSHYQAAqXzujRLs+qA4wWtZc7/4=;
 b=FY+3v2zdfeGWd6SkZ453eic/4pSqhRHavztVh12aM7V9yUatN9S8wH8kVVczyB5sPzvNO
 R0vnD46pmKRA3lR9YpNIl81D+wJxwX3iR2B+Q8aRTUh7XJhItwil5cSFmR88j34virajxBX
 ZpEmohWFd6AvqgV84oE1vurfQoUgIrs=
ARC-Authentication-Results: i=1; mail.toke.dk;
 dkim=pass header.d=toke.dk;
 arc=none;
 dmarc=pass header.from=toke.dk policy.dmarc=reject
Authentication-Results: mail.toke.dk; dkim=pass header.d=toke.dk;
 arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=toke.dk policy.dmarc=reject
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
	t=1757413942; bh=pvSI6dEFcQ0w2sJJpT5G1SEE2Ew9QDl8F4bK/tvbS60=;
	h=From:To:Subject:In-Reply-To:References:Date:From;
	b=VuRf3E3jsAKydPE9KwanxGnfZtfBmoTXHpxTyY9iKg/GK0OYxZVXlrg6VkN0fEVrR
	 6sYR7t//dNmjYVef454hnvyXkEZ4INHgALXY+EJt2mzW160pib23+X5GXn9YFhksCx
	 WeZlhM7EkWYP3v1W4axErqwc3HLHm0mGdgqVGEW6mrUskivGxiN5RdrwbhsMW5/oWS
	 FBTVbL3v0wsi4GkcNapX8fNd27tzu/MrdLHYyPTvEIhTlU2wKXgeV4m+fMP0VOu8Yl
	 6nAQ98L8yNqz4MN67lOETWYbONkLa4aDJd1C4OFD4KxjyuwkO/T50LAH5cih+7vXjL
	 V/EJaB1P/3vGQ==
To: Matt Corallo <cltaapptfwbs@mattcorallo.com>, cake@lists.bufferbloat.net
In-Reply-To: <78318be7-30d0-4f6a-80f3-063f4558b142@mattcorallo.com>
References: <78318be7-30d0-4f6a-80f3-063f4558b142@mattcorallo.com>
Date: Tue, 09 Sep 2025 12:32:21 +0200
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <87cy7zor0q.fsf@toke.dk>
MIME-Version: 1.0
Message-ID-Hash: 7MVHBVQP6OJPVBX5UEJ4R65TTJXNZZNI
X-Message-ID-Hash: 7MVHBVQP6OJPVBX5UEJ4R65TTJXNZZNI
X-MailFrom: toke@toke.dk
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: Parsing DSCP out of skb->priority
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: <https://lists.bufferbloat.net/cake/87cy7zor0q.fsf@toke.dk/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
From: =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen_via_Cake?=
 <cake@lists.bufferbloat.net>
Reply-To: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@toke.dk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Matt Corallo <cltaapptfwbs@mattcorallo.com> writes:

> Its (presumably) not uncommon to have multiple encapsulation tunnels
> running on a host which then wants to do (cake) shaping on the actual
> outbound interface. In this case, the skb->hash is (hopefully)
> preserved from the original packet to select the right flow queue, but
> the DSCP isn't. This is ideally what the priority field of the skb is
> for - `skbedit` can set the priority flag of the packet before
> "exiting" the tunnel interface, and cake can ultimately read that
> priority flag to select a tin. However, doing so requires manual tin
> mapping in skbedit, reading the DSCP field and mapping them to the
> right tin entirely be hand.
>
> skbedit also supports `inheritdsfield` which just sets skb->priority
> to the DSCP field as-is. It would be nice if cake could read such
> priority fields, treating skb->priority as a DSCP when
> TC_H_MAJ(skb->priority) is zero (which it always will be in this
> case). Is there any interest in a patch to do so?

Hmm, we already have quite a few custom ways of assigning packets to
tins, so I'm not sure if it's really a good idea to add another one.
What you're describing is fairly straight-forward to do with a BPF
program, without any performance overhead compared to the mapping cake
itself is doing.

> Would such a patch need a new userspace option to disable it, or would
> wash suffice?

We certainly can't assume that any priority value is a diffserv value
without some sort of explicit opt-in. And adding an option just for this
is really pushing it in the complexity-to-niche-feature trade-off scale :)

-Toke
_______________________________________________
Cake mailing list -- cake@lists.bufferbloat.net
To unsubscribe send an email to cake-leave@lists.bufferbloat.net
