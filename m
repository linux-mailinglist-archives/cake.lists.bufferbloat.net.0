Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F5DECFCCA5
	for <lists+cake@lfdr.de>; Wed, 07 Jan 2026 10:17:31 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 6DA86B7C305;
	Wed, 07 Jan 2026 10:17:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=20250711; t=1767777450;
	bh=RTWRcqLUNFpictXL6BwxHjuDRKDYsZuDXms/yRgjVDU=;
	h=To:Cc:In-Reply-To:References:Date:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=e8Ns7nxBslynueQ92AczSKG3c+CGrOSN0dhUha2gUi4Zz8JKK9lXniwCODN8LOOXe
	 bf/IMMKA/5yqi1+OrmOVhKRPgruDg+3QpaAYTyCHDvIqA0dEHNOFPjXhuNYFAsOEbO
	 TnJvryl/HeZLrSkP0nCZPjeBLx3cOiy7/aLDGuWMiJawk0utezXYHl3I3S3SaGFWn1
	 qDtwUVLVnu52KTuJDIoctyVz+ucMaBzVlBPyA6g6qfUbX/S40p/OD2Ce4oxwuA71yy
	 uIF4SAijE50PJT+yzXrT7P32EpuHOxK7jnX18yJZm512MWCoC5+4DlFWNAE2wFLwvq
	 IJvgl8wH3SFhA==
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1767777450;
 b=r2xXU22QeLmFXh/nF5C47i/rrjhaFQG0KLOymn9D3zFamsAC83kZAEjVPDq+r/dsKk1kv
 HTbgpN9lVN4JpYrgq6jGkySoRhINLyedIeH7Jxm0DFJhTKuXSC9w0hfmPPzq2oqN+/iZ/Tg
 rZQJfLzZXcZc7nQ+zKvCdTm9ocJyw1M=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1767777450; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=p8TW/PTNYGyOcnHmWUlt8/WBM97ssi5kbHyQROj2Ihk=;
 b=GTzzHp781IsmHtdrNyaUVBLQJzRnu9NTt3GAY0FNdd9uaf7TVR8QnkLUGvKscDD3SKa4R
 5u79Vp51BgyZW/HKBN8ijG2AyA8GyoSJT1lfQpV6eM9B7X75nouB6IkvaHQRz9oHNsus6kE
 ksgI7mfT5YvGxu2t7S1sJczd+IbfgIE=
ARC-Authentication-Results: i=1; mail.toke.dk;
 dkim=pass header.d=toke.dk;
 arc=none;
 dmarc=pass header.from=toke.dk policy.dmarc=reject
Authentication-Results: mail.toke.dk; dkim=pass header.d=toke.dk;
 arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=toke.dk policy.dmarc=reject
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
	t=1767777448; bh=sJibSbyiHEkM8f1lwodBlV02zdN7wr4k/0gSXJo4KoY=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=OYyZnfag+BvZ86xIlXCc6s2j0ZU/mwWIDPvaihWNf3NR+WxR/giefkdxvT9Qkecd0
	 fZF957s6y+yZsfPDTK1CmRIDPXxJTzCAPMa4RtJPkpjWKSqRbUOnzN1wza46SUu8Ff
	 wD5I4znXjNmGAzkdo4CmKjs/K99x2v5bDRLql+HPsFMIb2l8VkykiP1zdcLLyVAZ+h
	 Xt7j2j3gxM9GdqvVeILrsEgb9P5gLDjjASk0jnDYVeePAutBqKndp1ONybUCzDTWGz
	 11qqbxOG2dm5V52UlymDAtazwHPixG79eDM7vp71lKAMiEJgY01upwhB08htPodKsY
	 D++NbCT4v2bEA==
To: Willem de Bruijn <willemdebruijn.kernel@gmail.com>, Jamal Hadi Salim
 <jhs@mojatatu.com>, Cong Wang <xiyou.wangcong@gmail.com>, Jiri Pirko
 <jiri@resnulli.us>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Simon Horman <horms@kernel.org>
Cc: Jonas =?utf-8?Q?K=C3=B6ppeler?= <j.koeppeler@tu-berlin.de>,
 cake@lists.bufferbloat.net,
 netdev@vger.kernel.org
In-Reply-To: <willemdebruijn.kernel.21e0da676fe64@gmail.com>
References: <20260106-mq-cake-sub-qdisc-v6-0-ee2e06b1eb1a@redhat.com>
 <20260106-mq-cake-sub-qdisc-v6-2-ee2e06b1eb1a@redhat.com>
 <willemdebruijn.kernel.21e0da676fe64@gmail.com>
Date: Wed, 07 Jan 2026 10:17:27 +0100
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <87jyxt4w9k.fsf@toke.dk>
MIME-Version: 1.0
Message-ID-Hash: NQ6HPV5YZNVGX6RQZALUDJV6AI2K4DG7
X-Message-ID-Hash: NQ6HPV5YZNVGX6RQZALUDJV6AI2K4DG7
X-MailFrom: toke@toke.dk
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [PATCH net-next v6 2/6] net/sched: sch_cake: Factor out config
 variables into separate struct
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: <https://lists.bufferbloat.net/cake/87jyxt4w9k.fsf@toke.dk/>
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

Willem de Bruijn <willemdebruijn.kernel@gmail.com> writes:

>>  static int cake_init(struct Qdisc *sch, struct nlattr *opt,
>>  		     struct netlink_ext_ack *extack)
>>  {
>> -	struct cake_sched_data *q = qdisc_priv(sch);
>> +	struct cake_sched_data *qd = qdisc_priv(sch);
>> +	struct cake_sched_config *q;
>>  	int i, j, err;
>>  
>> +	q = kvcalloc(1, sizeof(struct cake_sched_config), GFP_KERNEL);
>> +	if (!q)
>> +		return -ENOMEM;
>> +
>
> Can this just be a regular kzalloc?

Yeah, I guess so. I'll change this if there's a need to respin for other
reasons, but probably not worth respinning for this on its own? Seeing
as it'll all end up in the same kmalloc call anyway :)

> More importantly, where is q assigned to qd->config after init?

Just below:

>>  	sch->limit = 10240;
>>  	sch->flags |= TCQ_F_DEQUEUE_DROPS;
>>  
>> @@ -2742,33 +2755,36 @@ static int cake_init(struct Qdisc *sch, struct nlattr *opt,
>>  			       * for 5 to 10% of interval
>>  			       */
>>  	q->rate_flags |= CAKE_FLAG_SPLIT_GSO;
>> -	q->cur_tin = 0;
>> -	q->cur_flow  = 0;
>> +	qd->cur_tin = 0;
>> +	qd->cur_flow  = 0;
>> +	qd->config = q;

Here:   ^^^^^^^

-Toke
_______________________________________________
Cake mailing list -- cake@lists.bufferbloat.net
To unsubscribe send an email to cake-leave@lists.bufferbloat.net
