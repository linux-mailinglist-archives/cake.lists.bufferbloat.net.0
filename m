Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id 28E3CCF460B
	for <lists+cake@lfdr.de>; Mon, 05 Jan 2026 16:24:21 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 27882B5879B;
	Mon, 05 Jan 2026 16:24:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=20250711; t=1767626660;
	bh=GwCuKIxRN1ht6gTfKSzWUhweBe5HpNEaXakk3lSTKIc=;
	h=Date:To:Cc:In-Reply-To:References:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=MZ5nQ0WF7/fgmhPl32VQ5IgRWY5adIRioQZE3V/hGdaGakVs0KkjhtknTmnEbtjh7
	 EDV590QPoJgaZlO8ybss0Tp/deOdcB8awak7kmhjGQmbCj7RVkevYqbH0JSczWpBSQ
	 g1YJP9Mj8SfkLUTV0z6RE1E9UHPlQZGFZjcmRS+I3LB9Kk6i7k2dNTD8UTsC22RGs3
	 R8cmJyuFhCaUowToDWMGvhs/XsHvdI3UjiV4/Igfm4yUHZGGx4s/BgEVDPfu5/Bv8v
	 HvlOJkTtPQVri+5qe8QlO+G/TrKy2Kq6JULI6jViQozGFfByky2gOK/VJrjOvIeZO3
	 ix/DUBeSc01XA==
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1767626660;
 b=sNOWG6rX3PMiz1L1pTU5Fka/d0xMW9LoZG8L6HFqhcvwwJfEuNtrFe8vQOplRcFoRKjW/
 30cWgO2taXDzIAtcRvFF5m1s5nvvaY/3p4+pxrq1n5pgb586KHPN5snpEHWSbAuBtWXFzDY
 tXHW8PMGtEq/aKuMFH7VJ+1x/8TOJto=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1767626660; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=GwCuKIxRN1ht6gTfKSzWUhweBe5HpNEaXakk3lSTKIc=;
 b=RuWYS/7Uzlv8khttGFW9UIebWbfn3EHfXOjcEuZZnVpDnMWolt2rHMBntQS39FOOOvXdd
 f5opJkvycs7ypswBY4urgWF3zVwX3/Yw0VSnvcSlKOxtixVG1sk2jTSbihJVhrb1c/h6DKn
 QOEzQjXx0rsz5IHoVOFcAtciCf76h+0=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=;
 dkim=pass header.d=kernel.org;
 arc=none;
 dmarc=pass header.from=kernel.org policy.dmarc=quarantine
Authentication-Results: mail.toke.dk; spf=pass smtp.mailfrom=;
 dkim=pass header.d=kernel.org; arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=kernel.org
 policy.dmarc=quarantine
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by mail.toke.dk (Postfix) with ESMTPS id 64C1BB58783
	for <cake@lists.bufferbloat.net>; Mon, 05 Jan 2026 16:24:18 +0100 (CET)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 1607C43980;
	Mon,  5 Jan 2026 15:24:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6C564C116D0;
	Mon,  5 Jan 2026 15:24:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767626655;
	bh=GltqLpIfO33b5EX0LYOhzXuxLHkxr13S1gdQw2RYE28=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=XZmu4A/SnDUWnWxZpzemhyTpMQ6i+hGRtmGiJYle3Yb8p3oRao3mq7JeVI59acc5W
	 9ulXrIneX2srKs5O7VprJu20m/8+vd/e9Tw1YhZ7kkn2UppTcPBBdEJ89Jf3enEGhy
	 b6+Rd7Xhi4lSxna32ySMlKM4Elvg530nVi2hdzAXlJdtoaIvIAre7iG1vsUhSZRuk/
	 8ojwCTcOdKL713Au3BIhxEeiqMc7pGpBEhycyg0qlaEfHutA6t0w+kmjSUYlF00n2k
	 Vm8XJDRrL+cxQnUaabId7LgjrnDHg16clGvBNDhJtscF3CoBGagdwMvTGrFINonTWa
	 ALtZI+CbZO6UQ==
Date: Mon, 5 Jan 2026 07:24:14 -0800
To: Toke =?UTF-8?B?SMO4aWxhbmQtSsO4cmdlbnNlbg==?= <toke@redhat.com>
Cc: Toke =?UTF-8?B?SMO4aWxhbmQtSsO4cmdlbnNlbg==?= <toke@toke.dk>, Jamal Hadi
 Salim <jhs@mojatatu.com>, Cong Wang <xiyou.wangcong@gmail.com>, Jiri Pirko
 <jiri@resnulli.us>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Simon Horman
 <horms@kernel.org>, Jonas =?UTF-8?B?S8O2cHBlbGVy?=
 <j.koeppeler@tu-berlin.de>, cake@lists.bufferbloat.net,
 netdev@vger.kernel.org
Message-ID: <20260105072414.50f4537e@kernel.org>
In-Reply-To: <20260105-mq-cake-sub-qdisc-v5-0-8a99b9db05e6@redhat.com>
References: <20260105-mq-cake-sub-qdisc-v5-0-8a99b9db05e6@redhat.com>
MIME-Version: 1.0
Message-ID-Hash: 76LUR5Z7MRTT5T5UHNW2QFXRFQMRS5GB
X-Message-ID-Hash: 76LUR5Z7MRTT5T5UHNW2QFXRFQMRS5GB
X-MailFrom: kuba@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [PATCH net-next v5 0/6] Multi-queue aware sch_cake
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/20260105072414.50f4537e@kernel.org/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
From: Jakub Kicinski via Cake <cake@lists.bufferbloat.net>
Reply-To: Jakub Kicinski <kuba@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCAwNSBKYW4gMjAyNiAxMzo1MDoyNSArMDEwMCBUb2tlIEjDuGlsYW5kLUrDuHJnZW5z
ZW4gd3JvdGU6DQo+IEEgcGF0Y2ggdG8gaXByb3V0ZTIgdG8gbWFrZSBpdCBhd2FyZSBvZiB0aGUg
Y2FrZV9tcSBxZGlzYyB3aWxsIGJlDQo+IHN1Ym1pdHRlZCBzZXBhcmF0ZWx5Lg0KDQpDb3VsZCB5
b3Ugc2VuZCBpdCBvdXQ/IEkgdGhpbmsgd2UgbmVlZCB0byBhcHBseSBpdCB0byBUREMgdG8gbWFr
ZSB0aGUNCnRlc3QgcGFzcy4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0IC0tIGNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0
ClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gY2FrZS1sZWF2ZUBsaXN0cy5idWZmZXJi
bG9hdC5uZXQK
