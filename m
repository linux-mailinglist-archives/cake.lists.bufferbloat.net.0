Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 50767C57B0C
	for <lists+cake@lfdr.de>; Thu, 13 Nov 2025 14:35:22 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 759819565BA;
	Thu, 13 Nov 2025 14:35:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=20250711; t=1763040921;
	bh=vPtD+7BNuteZ/E3WVM+hwQ+FtD6Ryl/4aVAxaLHnB8g=;
	h=To:Cc:In-Reply-To:References:Date:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=Sm8UPCGRMbC2U6tF62axUXtQ4EAmAp9Ay3pcEL4PIeqzGWF+mOngbHN3SrgkB2Pim
	 jJYNKN5STQpm2pyOQGzrFyTm+OUXgpP/dhOMJYQXq4lYyPqZnq5hvGoFHKkHSpNLNi
	 +1aA6Qf6ParTLgs2Tw7ZUxCGsTIUvP5vi8+qJk7xm0mjAVehkLRMTy1Ujz08oy6eoc
	 KqPGTdXxNbolbKK8g8UkeWu26BA4wzxXsET21vqU14dseWHucq+EutaTzoQ+67xn+B
	 6TiVcJMIAexvuzqcElK7/zwsGGQ5qFOOIIBX04yc2zem0HnZF388AYzTMqhrcrgALO
	 eJ3qLjxPZ3lEg==
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1763040921;
 b=YWbr4xthxPX5A/dQFn82hu0Hh6056jdEZ77QpjGgDtbHkJukMRJT7mUNzBT+6cTzCiWWo
 4orhr8RykKYbHILevV1ps3tlJsoQM9z7eFNy5idC+Niu/FGmm2F90pcJvbQ40YKsqc7FqFj
 UOwGDj00tkkw5okM9BY8EzQC3qRCm/A=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1763040921; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=Mzx0/zqI4p4JlrcTYWqFsA4vIBUk0QkfBjEIQP+bLGw=;
 b=C20/1h48SDY4FQlWQpe6j4U9ie3UftDcEYf25ZYuP1c2CGPdNqaWi5JKSljzFi1dUnCFt
 q9p0HI9Xl/nFUBwOZqOXZiSESWRvKl3T1VXHerhn+aclzs75wHkcmfn8AbN7tRLpitWpqQs
 vfZMMRCEbmdwDSLgDH0TgJMhdXvaGGs=
ARC-Authentication-Results: i=1; mail.toke.dk;
 dkim=pass header.d=toke.dk;
 arc=none;
 dmarc=pass header.from=toke.dk policy.dmarc=reject
Authentication-Results: mail.toke.dk; dkim=pass header.d=toke.dk;
 arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=toke.dk policy.dmarc=reject
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
	t=1763040919; bh=NSDVt8ey4YOlXB+TltCdAR2Hn3qO32j7/zgQJOzbgh8=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=ZokX+vlma2ls8Mn7QPgSEj1egnAkEzfPP0Pc57uOu+PP0Ol4zTMLUSQSqZNeJVegl
	 inIvOcCkNnd7Lhht5VM9d2b3ujKb1oVHUPRYRipj4TfYpG7g4Xbu71u/TfP9PBZ1gW
	 YoNVSrigH4ljX3VB5vAWCdaLl0Jl44tNwmynyJghiu8f1ZUvO/K2mvRj/ma0WWAxAe
	 jMr6L5X7MGGxDhxd8ofgNflugeODYK8MlPtvthV0M12i1lVPkcZMVIIonblpQNFSCH
	 YBr8xM/ULAZtW0Tg9byAXa+zY7hi9xXheA9Eq01tB4AEvmNqFAoUuemQHMzMfB9uUv
	 ZHpkG/FXOgwng==
To: Xiang Mei <xmei5@asu.edu>, security@kernel.org
Cc: netdev@vger.kernel.org, cake@lists.bufferbloat.net, bestswngs@gmail.com
In-Reply-To: <aRVZJmTAWyrnXpCJ@p1>
References: <20251113035303.51165-1-xmei5@asu.edu> <aRVZJmTAWyrnXpCJ@p1>
Date: Thu, 13 Nov 2025 14:35:18 +0100
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <87346ijbs9.fsf@toke.dk>
MIME-Version: 1.0
Message-ID-Hash: WF62R6WZV6TRU7HXBRDE2FW2XNZDGWQN
X-Message-ID-Hash: WF62R6WZV6TRU7HXBRDE2FW2XNZDGWQN
X-MailFrom: toke@toke.dk
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [PATCH net v3] net/sched: sch_cake: Fix incorrect qlen reduction in
 cake_drop
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: <https://lists.bufferbloat.net/cake/87346ijbs9.fsf@toke.dk/>
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

Xiang Mei <xmei5@asu.edu> writes:

> There is still one problem I am not very sure since I am not very 
> experienced with cake and gso. It's about the gso branch [1]. The slen 
> is the lenth added to the cake sch and that branch uses 
> `qdisc_tree_reduce_backlog(sch, 1-numsegs, len-slen);` to inform the 
> parent sched. However, when we drop the packet, it could be probmatic 
> since we should reduce slen instead of len. Is this a potential
> problem?

Hmm, no I think it's fine? The qdisc_tree_reduce_backlog(sch, 1-numsegs,
len-slen) *increases* the backlog with the difference between the
original length and the number of new segments. And then we *decrease*
the backlog with the number of bytes we dropped.

The compensation we're doing is for the backlog update of the parent,
which is still using the original packet length regardless of any
splitting, so that doesn't change the compensation value.

-Toke
_______________________________________________
Cake mailing list -- cake@lists.bufferbloat.net
To unsubscribe send an email to cake-leave@lists.bufferbloat.net
