Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id E037BBACF31
	for <lists+cake@lfdr.de>; Tue, 30 Sep 2025 14:55:52 +0200 (CEST)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id EAAC570F842;
	Tue, 30 Sep 2025 14:55:51 +0200 (CEST)
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1759236951;
 b=YhiqskxAhpaPUqyVcHIUmgs3QwCGW/CFmLXGNDqwvFKWHRNLhL6L4+WF/CqOIfB40dFZs
 0OhA2VioAQI+MovBP3Hy0aLNnTw7j8/WuCjYkmX2B+QnT9sX549yM23QETRYFxumE+aa3eM
 o9ik12OZeECo0L+EEcMzbUKqE8KKmfY=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1759236951; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=5WbtP2NfJjFmb+VkmCKVFc/qnnSWhkXzTB6UZ/Ggn7w=;
 b=KJPxZbbs6wYH56+9uaJVpt7l8GnCQeRxkIx86o8mdSOziY6cPxW/cjQ8GvPMq3p48OAlq
 omhJwMwKK0hMXj3NNyEfd3rmZGbXpSUcUWmy4rnIIyeYqmCLulmRweBcmk6YOOvat5Yr2TE
 jKSHydhimcAjTUIYxLSEmqoU1bx4GCg=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=lang.hm;
 dkim=fail;
 arc=none;
 dmarc=none
Received: from mail.lang.hm (wsip-70-167-213-146.ph.ph.cox.net
 [70.167.213.146])
	by mail.toke.dk (Postfix) with ESMTPS id 53F6F70F832
	for <cake@lists.bufferbloat.net>; Tue, 30 Sep 2025 14:55:49 +0200 (CEST)
Received: from [10.2.2.53] (unknown [10.2.2.53])
	by mail.lang.hm (Postfix) with ESMTP id 9CC3C20AAC6;
	Tue, 30 Sep 2025 05:55:48 -0700 (PDT)
Date: Tue, 30 Sep 2025 05:55:43 -0700 (PDT)
From: David Lang <david@lang.hm>
To: Jonathan Morton <chromatix99@gmail.com>
cc: Sebastian Moeller <moeller0@gmx.de>,
    dave seddon <dave.seddon.ca@gmail.com>, David Lang <david@lang.hm>,
    m@jaap.pro, "cake@lists.bufferbloat.net" <cake@lists.bufferbloat.net>,
    Frantisek Borsik <frantisek.borsik@gmail.com>
In-Reply-To: <D0B5EA4D-B238-44F5-93BB-2CD4E6D1CBB8@gmail.com>
Message-ID: <o99s08p9-3n8s-3229-9348-914qqo7n3929@ynat.uz>
References: <alpine.DEB.2.02.2509280400350.14652@nftneq.ynat.uz>
 <2064666241.42029.1759061544846@app.mailbox.org>
 <alpine.DEB.2.02.2509280523210.14652@nftneq.ynat.uz>
 <CAJUtOOj-FfPic8FPjy-QneCsvbtwtn4Zsxs+1yEsUqytEOEheg@mail.gmail.com>
 <CANypexTvXAdY577pxorqCKL45av3gw+fdupO6xr+gN5p=Wxq=Q@mail.gmail.com>
 <962896BA-6EE5-4815-B6F9-AC50B7252642@gmail.com>
 <C48271F4-4ADF-4FCA-ADA8-72C4B74D1091@gmx.de>
 <D0B5EA4D-B238-44F5-93BB-2CD4E6D1CBB8@gmail.com>
MIME-Version: 1.0
Message-ID-Hash: OJ564JRCJVOKOZ265Y3JTYTEXKX2ZSXF
X-Message-ID-Hash: OJ564JRCJVOKOZ265Y3JTYTEXKX2ZSXF
X-MailFrom: david@lang.hm
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: help request for cake on a large network
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/o99s08p9-3n8s-3229-9348-914qqo7n3929@ynat.uz/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Jonathan Morton wrote:

>> On 30 Sep, 2025, at 9:09 am, Sebastian Moeller <moeller0@gmx.de> wrote:
>>
>> I would really like to see some tc -s qdisc output from this network under load, as that should be informative if any twaeks are necessary at all.
>
> I think the point is that this is a conference/event network that will be set up transiently.  By the time you get a realistic workload to measure the behaviour of, you're in production.

Yep, but that means that figring out what stats we want to gather this year, in 
order to analyze over the next 12 months to configure things for next year is 
very important.

We start plugging everything in on monday, on Wednesday night, the registration 
desk is opened, and the network is now production. The first significant load is 
Thursday morning when the classes start.

David Lang
_______________________________________________
Cake mailing list -- cake@lists.bufferbloat.net
To unsubscribe send an email to cake-leave@lists.bufferbloat.net
