Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id D077AAFD036
	for <lists+cake@lfdr.de>; Tue,  8 Jul 2025 18:10:02 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 78AD23CB39;
	Tue,  8 Jul 2025 12:10:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1751991000;
	bh=vyLKp9ARoOzipBMLzU3P7PaMaFRm+CboDRXGDjF83zc=;
	h=Date:References:In-Reply-To:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=lz1VOezcoRTft5SH9aVloBg8utg3UqUniGf6qHQA0CY3pSkborkTfvlvvAK+kSe92
	 y2aMLIBl1dO30E0zzWWM/P+fI2GLZBj6QEigEbPd/PUfKqLp0Vql0ml2ZhuVfAZoXF
	 iz+rYMtHzFu3z9f+AbKmPF/KR/GjvXsfTi01L72Z9eR2UET26Jq6NlgHLzsnxaIpRV
	 uJr+IClXm6zJJ3UwgpqnWQfBJ1dQKtdYhKblF4B9bwUVNFVg70ROEP1WtnaPD4tUKZ
	 WWvqA0oMUebIQdul2sI86yJWgTQcGZjZ9znTDZnKthHK0+hGJkx8PEHeN5T+yMM7fu
	 YyoKesZtxmEDw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id F00933B2A4
 for <cake@lists.bufferbloat.net>; Tue,  8 Jul 2025 12:09:58 -0400 (EDT)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 6C3BB5C6214;
 Tue,  8 Jul 2025 16:09:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1AB0EC4CEED;
 Tue,  8 Jul 2025 16:09:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1751990998;
 bh=t3mvrMIcy/79FXuMLK5XWUKhx/6LM12SR6Z/0TqBx+c=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=crbcAhI+cccrN5VD1pj7UM+JSbdzz9tf9au20E2U1CCDDV2tNPJ6hu2qQtgYo86s/
 nS9XOJgXaZA737rqSvMrMBBpmm4ydLiZZfVzZlxd5gKWPPnDmrbez1FI+kAhutGGoX
 lad9vmU1GOH3OsxdRsZTnW81ptg1/so9WCvLvq5njRarSCa+lIGYWCNepwjhppen9M
 QNNmd3vjM/xCH3zCO6IyMpjuxp0XgTZKhWTdyC93DpifHG9lR6U4wXvovvuMd7ygm4
 Nz/M95f1La3msHPmfV7eMcHPhN1S+sDFifLfUJXQgGMxCH51orqEWM3dnWmPF5OdLb
 eMCwWQci7xL+Q==
Received: from [10.30.226.235] (localhost [IPv6:::1])
 by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 342F3380DBEE; Tue,  8 Jul 2025 16:10:22 +0000 (UTC)
MIME-Version: 1.0
Message-Id: <175199102074.4122127.1763624884260031017.git-patchwork-notify@kernel.org>
Date: Tue, 08 Jul 2025 16:10:20 +0000
References: <20250702160741.1204919-1-gfengyuan@google.com>
In-Reply-To: <20250702160741.1204919-1-gfengyuan@google.com>
To: Fengyuan Gong <gfengyuan@google.com>
Subject: Re: [Cake] [PATCH net-next] net: account for encap headers in qdisc
	pkt len
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
From: patchwork-bot+netdevbpf--- via Cake <cake@lists.bufferbloat.net>
Reply-To: patchwork-bot+netdevbpf@kernel.org
Cc: kuniyu@google.com, jiri@resnulli.us, netdev@vger.kernel.org,
 jhs@mojatatu.com, ahmed.zaki@intel.com, cake@lists.bufferbloat.net,
 aleksander.lobakin@intel.com, edumazet@google.com, sdf@fomichev.me,
 willemb@google.com, horms@kernel.org, xiyou.wangcong@gmail.com,
 kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SGVsbG86CgpUaGlzIHBhdGNoIHdhcyBhcHBsaWVkIHRvIG5ldGRldi9uZXQtbmV4dC5naXQgKG1h
aW4pCmJ5IEpha3ViIEtpY2luc2tpIDxrdWJhQGtlcm5lbC5vcmc+OgoKT24gV2VkLCAgMiBKdWwg
MjAyNSAxNjowNzo0MSArMDAwMCB5b3Ugd3JvdGU6Cj4gUmVmaW5lIHFkaXNjX3BrdF9sZW5faW5p
dCB0byBpbmNsdWRlIGhlYWRlcnMgdXAgdGhyb3VnaAo+IHRoZSBpbm5lciB0cmFuc3BvcnQgaGVh
ZGVyIHdoZW4gY29tcHV0aW5nIGhlYWRlciBzaXplCj4gZm9yIGVuY2Fwc3VsYXRpb25zLiBBbHNv
IHJlZmluZSBuZXQvc2NoZWQvc2NoX2Nha2UuYwo+IGJvcnJvd2VkIGZyb20gcWRpc2NfcGt0X2xl
bl9pbml0KCkuCj4gCj4gU2lnbmVkLW9mZi1ieTogRmVuZ3l1YW4gR29uZyA8Z2Zlbmd5dWFuQGdv
b2dsZS5jb20+Cj4gCj4gWy4uLl0KCkhlcmUgaXMgdGhlIHN1bW1hcnkgd2l0aCBsaW5rczoKICAt
IFtuZXQtbmV4dF0gbmV0OiBhY2NvdW50IGZvciBlbmNhcCBoZWFkZXJzIGluIHFkaXNjIHBrdCBs
ZW4KICAgIGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvbmV0ZGV2L25ldC1uZXh0L2MvYTQxODUxYmVh
N2JmCgpZb3UgYXJlIGF3ZXNvbWUsIHRoYW5rIHlvdSEKLS0gCkRlZXQtZG9vdC1kb3QsIEkgYW0g
YSBib3QuCmh0dHBzOi8va29yZy5kb2NzLmtlcm5lbC5vcmcvcGF0Y2h3b3JrL3B3Ym90Lmh0bWwK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1h
aWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZl
cmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==
