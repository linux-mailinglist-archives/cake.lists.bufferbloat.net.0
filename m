Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id A82D820A5DA
	for <lists+cake@lfdr.de>; Thu, 25 Jun 2020 21:31:39 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 86CA93CB38;
	Thu, 25 Jun 2020 15:31:38 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1593113498;
	bh=plmSxe0At0u26Oct/Xsr3ddHJVwWwWMg6pB5wZ0xRkU=;
	h=Date:To:From:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=EzYNpkOw6aZ7KU0Hl+VqRtJ8F2PaG9t1XPbjY9HTtiLfylnRmUgLGEj5EZJR6TnKA
	 DR/1QKEdTB47R8Ct4LN5w19O4XXZbNpctx5hObbWxV9AjRXDWZtOOYRUrBlWxtAxtR
	 5rrgDG3QJpbmO8X2Ggvx1ak0ALItwdpJZGYCDvwKEhosV5j1p1n2emazCoR0lyvECO
	 cXuMiOcDECiimYvSpv1PSKLxMg8gzc4HKPJgIpyb+nP5JxSUKIrjTB/VDY2HXtgw+e
	 dwImUL7JEBoyQd5y3m7BbMZCfVGDXkHBQvP94W0gSlTyzqi3xBFmiU83NoC7Ir+GNg
	 Dy66ilmZ24Ljw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from shards.monkeyblade.net (shards.monkeyblade.net
 [IPv6:2620:137:e000::1:9])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 15DBE3B29D
 for <cake@lists.bufferbloat.net>; Thu, 25 Jun 2020 15:31:36 -0400 (EDT)
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 2BED612ECDD87;
 Thu, 25 Jun 2020 12:31:36 -0700 (PDT)
Date: Thu, 25 Jun 2020 12:31:35 -0700 (PDT)
Message-Id: <20200625.123135.515382790882106490.davem@davemloft.net>
To: toke@redhat.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <159308610282.190211.9431406149182757758.stgit@toke.dk>
References: <159308610282.190211.9431406149182757758.stgit@toke.dk>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 25 Jun 2020 12:31:36 -0700 (PDT)
Subject: Re: [Cake] [PATCH net-next 0/5] sched: A series of fixes and
 optimisations for sch_cake
X-BeenThere: cake@lists.bufferbloat.net
X-Mailman-Version: 2.1.20
Precedence: list
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
List-Unsubscribe: <https://lists.bufferbloat.net/options/cake>,
 <mailto:cake-request@lists.bufferbloat.net?subject=unsubscribe>
List-Archive: <https://lists.bufferbloat.net/pipermail/cake>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Subscribe: <https://lists.bufferbloat.net/listinfo/cake>,
 <mailto:cake-request@lists.bufferbloat.net?subject=subscribe>
Cc: cake@lists.bufferbloat.net, netdev@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

RnJvbTogVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIDx0b2tlQHJlZGhhdC5jb20+CkRhdGU6IFRo
dSwgMjUgSnVuIDIwMjAgMTM6NTU6MDIgKzAyMDAKCj4gVGhlIGZpcnN0IHRocmVlIHBhdGNoZXMg
aW4gdGhlIHNlcmllcyBhcmUgY2FuZGlkYXRlcyBmb3IgaW5jbHVzaW9uIGludG8gc3RhYmxlLgoK
U3RhYmxlIGNhbmRpZGF0ZXMsIGllLiBmaXhlcywgc2hvdWxkIHRhcmdldCAnbmV0JyBub3QgJ25l
dC1uZXh0Jy4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
Q2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0
cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=
