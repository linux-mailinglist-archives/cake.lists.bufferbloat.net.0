Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id E089C5BB67
	for <lists+cake@lfdr.de>; Mon,  1 Jul 2019 14:22:40 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id DBAFF3CB3B;
	Mon,  1 Jul 2019 08:22:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1561983759;
	bh=njtBSJaowDpVOQMwNeeCYkrvDBvrnG0Ma5Vwyo3fQUI=;
	h=To:In-Reply-To:References:List-Id:List-Post:From:Cc:
	 List-Subscribe:List-Unsubscribe:List-Archive:Reply-To:List-Help:
	 Subject:From;
	b=Z+kaiMRcNiwBfOFDitFWlz+L/19eZTWRhawflpcnK3mF6MPO/M5CdUEoht9bM9ef6
	 KcgnQN0wukiRMS29C0BItU7iAmpv8wY8wakiiCqv853Tj2HQZ8DqYidvYsNDB12bfc
	 wl/6B1bjWbD0Rn/2ZeUJtoGN+5NrXGxMXana8eBIzt8GkUGQouivuzbDRniOoAKuub
	 cPgwRD+ievEF+awfqw1YR+WCDeivwOwixxzN0vfMrJqoKVbw0KWD8EqctGpS6ewqPw
	 Vv6p/sVQu1BnMcO92RCOs3QeY+OjYXQzX/iATvYtiCaPtmUQ+eB/E0xWkeldECC/hi
	 afmppx0gmmliA==
To: Alban <albeu@free.fr>, cake@lists.bufferbloat.net
In-Reply-To: <20190701135251.08defe75@eos>
References: <20190701135251.08defe75@eos>
MIME-Version: 1.0
Message-ID: <mailman.9.1561983759.1240.cake@lists.bufferbloat.net>
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= via Cake
 <cake@lists.bufferbloat.net>
Precedence: list
Cc: Alban <albeu@free.fr>
X-Mailman-Version: 2.1.20
X-BeenThere: cake@lists.bufferbloat.net
List-Subscribe: <https://lists.bufferbloat.net/listinfo/cake>,
 <mailto:cake-request@lists.bufferbloat.net?subject=subscribe>
List-Unsubscribe: <https://lists.bufferbloat.net/options/cake>,
 <mailto:cake-request@lists.bufferbloat.net?subject=unsubscribe>
List-Archive: <https://lists.bufferbloat.net/pipermail/cake>
Reply-To: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@toke.dk>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
Subject: Re: [Cake] Recommendations for using cake in complex setup
	(wireguard + vlan + bond)
Content-Type: multipart/mixed; boundary="===============8562197537333516739=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============8562197537333516739==
Content-Type: message/rfc822
Content-Disposition: inline

Return-Path: <toke@toke.dk>
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.toke.dk (mail.toke.dk [52.28.52.200])
	(using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by lists.bufferbloat.net (Postfix) with ESMTPS id 4C6873CB37
	for <cake@lists.bufferbloat.net>; Mon,  1 Jul 2019 08:22:39 -0400 (EDT)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@toke.dk>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
	t=1561983758; bh=qkP4c+Zh1Wtu2gGKRL5QpauHEA1pbZjl4c1/4O1xRuc=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=hdAfaLqYGEQXj+T7cBf3LHHq5ruUNkX90YVsxkyFMG+JbIluMuceSHOfRGlOB7XJB
	 Jw+eZESr585DJ1RdMtqb9wB5gU8VDPOrcLbQt0HHTOVvO7oKXU5zKHT/0im95KQWGS
	 NYu7+ZgAZmgiyVUULde6utSQSX5MfPWxgpsVcNh2SHa4q3XVRUPLXBAG2KU+uwFgUR
	 o8x3T7RrZXgNBai1vNNo1tb4gevIwbc9t5vKMvpGrABpSSxyyfCqtfRGFEI24GIaPr
	 PqBjnzh/EL9FOdbaWpTzKDBHUX8+Hox7tAsQU71O7bJw0YIbZwHfkKSdeq3aJJkPX9
	 rs57sUgBLb1WQ==
To: Alban <albeu@free.fr>, cake@lists.bufferbloat.net
Cc: Alban <albeu@free.fr>
Subject: Re: [Cake] Recommendations for using cake in complex setup (wireguard + vlan + bond)
In-Reply-To: <20190701135251.08defe75@eos>
References: <20190701135251.08defe75@eos>
Date: Mon, 01 Jul 2019 14:22:37 +0200
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <87tvc654he.fsf@toke.dk>
MIME-Version: 1.0
Content-Type: text/plain

Alban <albeu@free.fr> writes:

> Hi everybody,
>
> I am setting a new router with a non trivial setup and I really like to
> get some recommendations on how to best use cake. First of all the
> router is using VLAN on top of 2 bonded gigabit Ethernet interface:
>
>                         +--> VLAN1 (LAN)
>  eth0 <--+              |
>          +---> bond0 <--+--> VLAN2 (WAN1)
>  eth1 <--+              |
>                         +--> VLAN3 (WAN2)
>
> The bond is using LACP, but mainly for redundancy and not for the
> increased bandwidth. Both WAN VLAN are going to ISP provided FritzBox
> connected to 50/10Mbit VDSL2 lines.

What are the physical interfaces connected to? How is the traffic
getting to the FritzBoxes?

-Toke

--===============8562197537333516739==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============8562197537333516739==--
