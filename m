Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 47540C90585
	for <lists+cake@lfdr.de>; Fri, 28 Nov 2025 00:36:52 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 383E89D61F1;
	Fri, 28 Nov 2025 00:36:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=20250711; t=1764286611;
	bh=rsBeJ04ldTAi72mnJK75vRcl4PJnkHquDCfet7hc7lA=;
	h=Date:To:Cc:In-Reply-To:References:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=AJlqWEyV1FtSubohk34H4RAEPw9aOoHT5Ljija5QhNqkMWR5ifGYm+9Ls1P41OYz5
	 mf110XTlFKTnbDPSj7XXkG8YsWS0sypHE8cmblLIUf8hB95+FLpzs9pH1RBUU3NeFM
	 h61eOv7Ea1+IZBuxv+LOXzu5OD7MSzmu3dfrFWJyjOgHKS+N43moX0EIo1ShVZIO7r
	 +b6/fFBkMOZQbW6EYbQiP2rxfCcBQwiM1XKK9jWJVsEphXpPkPiBA+wqn+S0QwfKnf
	 vQfv3JF7R0vGKjFarSSY16YPuYHMR8YELEEFgb6PCqmczD7G1v26kXb7A0WWPRkobL
	 xBri1131q0maw==
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1764286611;
 b=Ft4BCmzNzhL/rul2ojOafqNmBWBQIBLO9LYp5dq/ZFtRuBTK2bKfAz2gS2E4LhHA5A9AK
 WG65A7qBTgttGZAjAoxxj4lvFGU8vLy1QxS0UssB3JMQOxvnMXjez9KF6pJdfxJUGMCJ5bb
 +BNW8CopFDKAbi9FBJqEOZCkxMYGWzs=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1764286611; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=bJ5MNc/4iAez4h7AHT5UWjsIAV8IHTsnX2LJv3eQG/M=;
 b=avwwMln2GQrev32KUqPTIiWOh++Qevz32CVRIMV47+JCh1l839UJzb9SQem/tlI95IJ2c
 aC5ZkS9Q6qsprwKCBpSe/G3FQXC8Kiv+IgnnkiLuunL3DKAaCSaGQbyMFKQ6boKDZ83HwDy
 AqUTOd0HRuWZHyS/bjyrPTTuGsI4iBc=
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
	by mail.toke.dk (Postfix) with ESMTPS id D9F239D61DA
	for <cake@lists.bufferbloat.net>; Fri, 28 Nov 2025 00:36:48 +0100 (CET)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 4C82A43B1E;
	Thu, 27 Nov 2025 23:36:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A52D5C4CEF8;
	Thu, 27 Nov 2025 23:36:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764286606;
	bh=34KozKoOVCmT+6fnS1OOQMxNpW5m8bk9dYmhP2vKwYU=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=GM7O+sLHQe2TWcnufenIMMz9qPJHizbr/IzJAQqhFAVwpfiUENzpz/7cZs2iH94FZ
	 9B1nMlScIz9crUcUbv4MLW0yJynaZS7PRPc1RR9gmnioyBA4aLBZGKy+IuGj8zaraC
	 ct/0Nh4Rj+5t+JtrFX8mBWHLeLLnRNTKu//9+Gd3iRcsAh5V99TrBuBMF2tjPqzAxb
	 RzAXfdQ982OYeAptmqCV7gC/TsASXjZz9mfF9AwEkkKVOwFoKjXpmvvbxvvXd2VcpS
	 c2tFw0oSGv+32usdJKwUqpCBe7Osux7Z1mDSPDstuDbr/1x4OwCduqPSDgv0F08iHC
	 g6H/CteAL7q+Q==
Date: Thu, 27 Nov 2025 15:36:44 -0800
To: Xiang Mei <xmei5@asu.edu>
Cc: security@kernel.org, netdev@vger.kernel.org, toke@toke.dk,
 xiyou.wangcong@gmail.com, cake@lists.bufferbloat.net, bestswngs@gmail.com
Message-ID: <20251127153644.55ef4796@kernel.org>
In-Reply-To: <20251126194513.3984722-1-xmei5@asu.edu>
References: <20251126194513.3984722-1-xmei5@asu.edu>
MIME-Version: 1.0
Message-ID-Hash: AT4LCNCRIFH2OFDK4BFS52VFDZSJTD7L
X-Message-ID-Hash: AT4LCNCRIFH2OFDK4BFS52VFDZSJTD7L
X-MailFrom: kuba@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [PATCH net v7 1/2] net/sched: sch_cake: Fix incorrect qlen
 reduction in cake_drop
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/20251127153644.55ef4796@kernel.org/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
From: Jakub Kicinski via Cake <cake@lists.bufferbloat.net>
Reply-To: Jakub Kicinski <kuba@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, 26 Nov 2025 12:45:12 -0700 Xiang Mei wrote:
> In cake_drop(), qdisc_tree_reduce_backlog() is used to update the qlen
> and backlog of the qdisc hierarchy. Its caller, cake_enqueue(), assumes
> that the parent qdisc will enqueue the current packet. However, this
> assumption breaks when cake_enqueue() returns NET_XMIT_CN: the parent
> qdisc stops enqueuing current packet, leaving the tree qlen/backlog
> accounting inconsistent. This mismatch can lead to a NULL dereference
> (e.g., when the parent Qdisc is qfq_qdisc).

This series does not apply, please rebase on netdev/net/main.
-- 
pw-bot: cr
_______________________________________________
Cake mailing list -- cake@lists.bufferbloat.net
To unsubscribe send an email to cake-leave@lists.bufferbloat.net
