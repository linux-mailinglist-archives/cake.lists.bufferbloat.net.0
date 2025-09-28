Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DCC9BA89F6
	for <lists+cake@lfdr.de>; Mon, 29 Sep 2025 11:31:06 +0200 (CEST)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 9F665707A6F;
	Mon, 29 Sep 2025 11:31:05 +0200 (CEST)
Authentication-Results: mail.toke.dk;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=jaap.pro header.i=@jaap.pro header.a=rsa-sha256 header.s=MBO0001 header.b=03XkwKD3
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1759138265;
 b=iLcoq/oOF4Xrws1p13gwQc5KQAT6lVZTLxrLHh5/CXjcJfLnLkkejtIWvIekJUWyVOpUl
 VwbdUl8s+85MpeeYIEzgsLi+zpp1cf93i6Z/bH0zQ9qFXgWAZRA9eXVJKxYUW9IsVorxHxb
 2YMt3jwxCQ5jlKd9sVfZQTrEFrbSNAg=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1759138265; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=5qeCKX5OZn+Htw+T9fMMFrCW0Z1iYmvi52SrNUgYXNI=;
 b=WGw1ltK/wdOVAk+NsfWrGf1vZKBC0uoZZslzQkiERWkj6cioIMKQJqPG0id8RIKPkOHZg
 o+slFXbWiO/SviOt+TZeLM4t4Gm2sVhM18hWPbU5aKX14wg30w3brX3uNl6FxfkEHmnVgb6
 tHXGxYwyM3dLZGyDS7G6sOibbHMaM+U=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=;
 dkim=pass header.d=jaap.pro;
 arc=none;
 dmarc=pass header.from=jaap.pro policy.dmarc=none
Authentication-Results: mail.toke.dk; spf=pass smtp.mailfrom=;
 dkim=pass header.d=jaap.pro; arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=jaap.pro policy.dmarc=none
Received: from mout-p-102.mailbox.org (mout-p-102.mailbox.org
 [IPv6:2001:67c:2050:0:465::102])
	by mail.toke.dk (Postfix) with ESMTPS id 90184701C89
	for <cake@lists.bufferbloat.net>; Sun, 28 Sep 2025 14:12:33 +0200 (CEST)
Received: from smtp202.mailbox.org (smtp202.mailbox.org
 [IPv6:2001:67c:2050:b231:465::202])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest
 SHA256)
	(No client certificate requested)
	by mout-p-102.mailbox.org (Postfix) with ESMTPS id 4cZNVd6LHdz9tmb;
	Sun, 28 Sep 2025 14:12:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jaap.pro; s=MBO0001;
	t=1759061545; h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=pvBG+7bIJu1BY5A1YmN2dV24bO2fUptDkUd1pmx6G/c=;
	b=03XkwKD3aDCbLZ/w/NfGUqjWU07fwMFVLcyqMQ/PxxepZeeawfi4CcY7ZdfnnQo8M/2ah2
	0ybaB/6lHuxTF2z4j+b220uWvYYWFBGbfxjqllsEGahNdnsfjNuxaE98dab7KCBvbtTp7r
	gZrkeuqnxn8FKcfTZa/N7pB0JA5Kq8nCDUtXlc/BPAsCh4dN0ZpPOa/AaMvDKQU+PAs1Yf
	YZdwTDghAvlmRz104QswxA2f+uIhAqZCHo0oCM3MW9LCZKEwEkDETn5R+wILoytcBihhWI
	IMX1TrUPHA1V12TEiFSiWcTnZHm3jdXUIVeBszhvUu3Lm48YGPUhz6geCIKX/g==
Date: Sun, 28 Sep 2025 14:12:24 +0200 (CEST)
From: Jaap de Vos <m@jaap.pro>
To: David Lang <david@lang.hm>, cake@lists.bufferbloat.net
Message-ID: <2064666241.42029.1759061544846@app.mailbox.org>
In-Reply-To: <alpine.DEB.2.02.2509280400350.14652@nftneq.ynat.uz>
References: <alpine.DEB.2.02.2509280400350.14652@nftneq.ynat.uz>
MIME-Version: 1.0
X-Priority: 3
Importance: Normal
X-Rspamd-Queue-Id: 4cZNVd6LHdz9tmb
X-MailFrom: m@jaap.pro
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation
Message-ID-Hash: H56SRA6LGFGOXMJHQAICPBYVCD4G26JB
X-Message-ID-Hash: H56SRA6LGFGOXMJHQAICPBYVCD4G26JB
X-Mailman-Approved-At: Mon, 29 Sep 2025 11:31:03 +0200
X-Mailman-Version: 3.3.10
Precedence: list
Reply-To: "cake@lists.bufferbloat.net" <cake@lists.bufferbloat.net>
Subject: [Cake] Re: help request for cake on a large network
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/2064666241.42029.1759061544846@app.mailbox.org/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi David,

I haven't tried it myself yet, but this sounds like a use case for which LibreQoS is suitable. However, LibreQoS would fit best if you can build something in line with the design assumptions: https://libreqos.readthedocs.io/en/latest/docs/v2.0/design.html
Specifically the part about putting it in between other routers and running a routing protocol with those.

There are some good recommendations around suitable hardware and sizing/scaling too: https://libreqos.readthedocs.io/en/latest/docs/v2.0/requirements.html

What kind of upstream bandwidth are you working with at the conference? I run the Mikrotik implementation of CAKE on a campsite. It really helps to get the most out of our asymmetrical gigabit coax line over there, no fiber available yet. So far, we got close to 500 devices on our outdoor Wi-Fi network with mostly good experiences, amazing. Before that, FQ_CoDel on PfSense worked well too, but the network wasn't as busy back then. I'd like to see CAKE on BSD some day.

Kind regards,
Jaap de Vos


> On 09/28/2025 1:06 PM CEST David Lang <david@lang.hm> wrote:
> 
>  
> I'm starting to prepare for the next Scale conference and we are switching from 
> Juniper routers to Linux routers. This gives me the ability to implement cake.
> 
> One problem we have is classes that tell everyone 'go download this' that 
> trigger hundreds of people to hammer the network at the same time (this is both 
> a wifi and a network bandwidth issue, wifi is being worked on)
> 
> The network is pretty flat, a couple of subnets each on ipv4 and ipv6.
> 
> Any suggestions on how to configure cake for this sort of environment where 
> there are so many devices?
> 
> David Lang
> _______________________________________________
> Cake mailing list -- cake@lists.bufferbloat.net
> To unsubscribe send an email to cake-leave@lists.bufferbloat.net
_______________________________________________
Cake mailing list -- cake@lists.bufferbloat.net
To unsubscribe send an email to cake-leave@lists.bufferbloat.net
