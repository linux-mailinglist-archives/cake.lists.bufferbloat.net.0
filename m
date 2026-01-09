Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C7C3D089DB
	for <lists+cake@lfdr.de>; Fri, 09 Jan 2026 11:38:04 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 53DB8B88FE7;
	Fri, 09 Jan 2026 11:38:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=20250711; t=1767955083;
	bh=fMyIVsQDFjEEq/btzo1YNaym4iGcIyKn8SIq2/9GnO0=;
	h=To:Cc:In-Reply-To:References:Date:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=T4stxIQnrItzpXMAdVPpb0E0SrsvKOjrs+xQ3CJgEvUcLRo/HlhdZh2hRiGaYvqi4
	 AP8Zkn39PiF3olglFNUxgT0WvzDwywMg70VbYvcfOBkYQixm+rvYKeTwuPbwIPThbL
	 IOnnIZGZ7Nx5cOsICVyxI8peaoS7sSjlin6vuTGXoRup+9bUdzileOmwtbWDBoN46N
	 j95ABEDf4YgaZTjTbi6nc6x+GI3f7x7L8xLqb02F0ugLTHYMJuYvcmwR8TccC1O+0k
	 2nOXj9U1sarNXEN9RcGdSJi1fGMf69SkjXed4ha+/t133FsWL17GOOjQs7aNzn/C7q
	 MjvZO5U/90rVQ==
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1767955083;
 b=dgFoo2bCTothsmi1BicYJrzRk7riBbNnIaiAeraCI14aaf/+0pItmq/a3rwesANmqioUg
 57HPGrra/daX5BXfiwx/ozUejw/C7vPEmCbcNAWfCP+T9KahxxOCbh4BCNspLe4T1gnygUj
 bbIhQb7pLC3DkxS+1ZWVx+zj3AuDzLs=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1767955083; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=VpJS27mEaQ9OouvGL9s+Rlf3lb4hhR9qmMC6VHtUT3w=;
 b=Gj0/cBIfH26QwKjYRlylapAKMi+k1rSdUIWsW2yd457bvSTwE9CdwscMVy6fkb/i5QzT/
 7L2PiATQHC6pwFcJKz4NlASYuFUHfYjyRjoxMLfKAED+1K1NklzEIgJTxgAwH/cHgkXDHoV
 AtS6m6GCj15sx5l4fcPAGTS3tHwR+Hc=
ARC-Authentication-Results: i=1; mail.toke.dk;
 dkim=pass header.d=toke.dk;
 arc=none;
 dmarc=pass header.from=toke.dk policy.dmarc=reject
Authentication-Results: mail.toke.dk; dkim=pass header.d=toke.dk;
 arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=toke.dk policy.dmarc=reject
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
	t=1767955082; bh=ucIdzzWI2zkCadxG+XMJ2cPClencE+x+z6GmUnX0jK0=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=NOj7WStQNq1Kdw6IfozFzgEL+BUt108PVum2j43GPNL58FJiTUCVYk/QXVlBXyqHH
	 oRa39HjOR1C+2jCujsFdkTPPy8z0s5q1FMuiMSsC01dmOy25IGG6CpkPhHX9ozQ+hP
	 YrModytk4vI+SDL670H/twbsly/bJcgBkEwsaX42ptkb1IAlxlw5UoWR+NJY99Sc4I
	 tD0bbXQTLalM3itIaxsuL0n1Yoh3Lv3n++RllxzcMHIVa6xYDveZPw3WT/F6PCXwQx
	 DKtX4JJIzsoW6/wcE3gdpLkI0RROYvNXjgEt/smVGurk+BBIMUXBEjzxQE7xvEswKP
	 eSfgZ35kqtOCA==
To: Jakub Kicinski <kuba@kernel.org>
Cc: Jakub Kicinski <kuba@kernel.org>, jiri@resnulli.us,
 cake@lists.bufferbloat.net, j.koeppeler@tu-berlin.de, willemb@google.com,
 xiyou.wangcong@gmail.com, horms@kernel.org, pabeni@redhat.com,
 jhs@mojatatu.com, davem@davemloft.net, netdev@vger.kernel.org,
 edumazet@google.com, victor@mojatatu.com
In-Reply-To: <20260109041214.2918115-1-kuba@kernel.org>
References: <20260108-mq-cake-sub-qdisc-v7-4-4eb645f0419c@redhat.com>
 <20260109041214.2918115-1-kuba@kernel.org>
Date: Fri, 09 Jan 2026 11:38:00 +0100
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <87bjj32hrr.fsf@toke.dk>
MIME-Version: 1.0
Message-ID-Hash: J2NY6XXITXWXZMQMB2CLMLPGI7XJO5S7
X-Message-ID-Hash: J2NY6XXITXWXZMQMB2CLMLPGI7XJO5S7
X-MailFrom: toke@toke.dk
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [net-next,v7,4/6] net/sched: sch_cake: Share config across cake_mq
 sub-qdiscs
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: <https://lists.bufferbloat.net/cake/87bjj32hrr.fsf@toke.dk/>
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

Jakub Kicinski <kuba@kernel.org> writes:

> This is an AI-generated review of your patch.
>
> For local reproduction steps see https://netdev-ai.bots.linux.dev/ai-local.html
> ---
> net/sched: sch_cake: Share config across cake_mq sub-qdiscs
>
> This commit adds support for configuring the cake_mq instance directly,
> sharing the config across the cake sub-qdiscs.
>
>> diff --git a/net/sched/sch_cake.c b/net/sched/sch_cake.c
>> index deb9f411db98..4dbfee3e6207 100644
>> --- a/net/sched/sch_cake.c
>> +++ b/net/sched/sch_cake.c
>
> [ ... ]
>
>> +	if (tb[TCA_CAKE_AUTORATE]) {
>> +		if (!!nla_get_u32(tb[TCA_CAKE_AUTORATE])) {
>> +			if (q->is_shared) {
>> +				NL_SET_ERR_MSG_ATTR(extack, tb[TCA_CAKE_NAT],
>                                                          ^^^^^^^^^^^^^^
> Should this be tb[TCA_CAKE_AUTORATE] instead of tb[TCA_CAKE_NAT]? The
> check here is for TCA_CAKE_AUTORATE, but the error message attribute
> points to TCA_CAKE_NAT. This appears to be a copy-paste from the NAT
> handling code just above. When a user enables autorate-ingress on
> cake_mq, the error will reference the wrong netlink attribute.

Argh, the spicy autocomplete is right! This was indeed a copy-paste
error, sorry about that. Will fix and respin...

-Toke
_______________________________________________
Cake mailing list -- cake@lists.bufferbloat.net
To unsubscribe send an email to cake-leave@lists.bufferbloat.net
