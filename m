Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id F0D995A452E
	for <lists+cake@lfdr.de>; Mon, 29 Aug 2022 10:34:01 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id D8E6C3CB40;
	Mon, 29 Aug 2022 04:33:59 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1661762039;
	bh=JxMJnKs6jyIqBPnBT0QH6t8I6uAu4LHuf5OHOEj6QRo=;
	h=To:In-Reply-To:References:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=qBYveC5Da3xOT5BMuTR25Fx0HDwU8j7awsIRjUgLMCT2MxmZXtsuw/XCFQHB+WF6L
	 hGcRYjJRz7ln5ulDstuiNACpINVLV95cQz2rzZ8jjIntWq8leBphSUZ8eTCyv36z9u
	 9R1th0GHcGxp8GnxjPuSHZnRoMjR7v+mqDg+qIpjTKFFmukYbMjhA27ljsUsq9ErSE
	 LCSyHMxmSpSkeed4VFNyI0k3BrXu4YH818b/AWTDvyX/WFWBy8lNdTstylL6ypTvOW
	 mBaGtg1zyIcyZYS4kSwBkYhCCDmjz5dY/kaPSdTLgErcr5jYRJjTPbPiRuJLwW7YjD
	 mrUCydLIlXGoA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 9A67D3B2A4
 for <cake@lists.bufferbloat.net>; Mon, 29 Aug 2022 04:33:58 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
 t=1661762036; bh=1vMZ0dX5dY0+I40JPo+IzGf0b+MZYSJImU8ZR2XqqQs=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=SoCNSiGx48l+rdngjy81aq2A4fYWJspecsZEkjjwEL2b+JT7ZTzGs7NUXr8Jzv82C
 tBewXXCEwolXTcG7vLIXlULQBR5sr2LXgZHuAzR8peB7CXYUrK+922upum0Dtfe8WX
 oqgySWoXR6LZBOnWkekISbb23xJKpdi1Q6talUdNIdqioHryYH9PAYL0CpECe6E1ne
 3LBgIuIA285+22uzfJIRMY/QLrI/st0gbw0ow2HPfMnD1RpTnrYpeYTONOkn25P7xm
 xYZjTCT/haw87O7HyH1qD72e1AxW/raKc5QHvLyOKFxx39tJs3JtklN8Xdc41P1IwS
 ESfgrF2BBdlEQ==
To: Zhengchao Shao <shaozhengchao@huawei.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, jhs@mojatatu.com, xiyou.wangcong@gmail.com,
 jiri@resnulli.us, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, stephen@networkplumber.org
In-Reply-To: <20220829071219.208646-1-shaozhengchao@huawei.com>
References: <20220829071219.208646-1-shaozhengchao@huawei.com>
Date: Mon, 29 Aug 2022 10:33:55 +0200
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <87fshf78jw.fsf@toke.dk>
MIME-Version: 1.0
Subject: Re: [Cake] [PATCH net-next,
 v2] net: sched: remove redundant NULL check in change hook function
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
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= via Cake
 <cake@lists.bufferbloat.net>
Reply-To: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@toke.dk>
Cc: cake@lists.bufferbloat.net, yuehaibing@huawei.com, shaozhengchao@huawei.com,
 weiyongjun1@huawei.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

WmhlbmdjaGFvIFNoYW8gPHNoYW96aGVuZ2NoYW9AaHVhd2VpLmNvbT4gd3JpdGVzOgoKPiBDdXJy
ZW50bHksIHRoZSBjaGFuZ2UgZnVuY3Rpb24gY2FuIGJlIGNhbGxlZCBieSB0d28gd2F5cy4gVGhl
IG9uZSB3YXkgaXMKPiB0aGF0IHFkaXNjX2NoYW5nZSgpIHdpbGwgY2FsbCBpdC4gQmVmb3JlIGNh
bGxpbmcgY2hhbmdlIGZ1bmN0aW9uLAo+IHFkaXNjX2NoYW5nZSgpIGVuc3VyZXMgdGNhW1RDQV9P
UFRJT05TXSBpcyBub3QgZW1wdHkuIFRoZSBvdGhlciB3YXkgaXMKPiB0aGF0IC5pbml0KCkgd2ls
bCBjYWxsIGl0LiBUaGUgb3B0IHBhcmFtZXRlciBpcyBhbHNvIGNoZWNrZWQgYmVmb3JlCj4gY2Fs
bGluZyBjaGFuZ2UgZnVuY3Rpb24gaW4gLmluaXQoKS4gVGhlcmVmb3JlLCBpdCdzIG5vIG5lZWQg
dG8gY2hlY2sgdGhlCj4gaW5wdXQgcGFyYW1ldGVyIG9wdCBpbiBjaGFuZ2UgZnVuY3Rpb24uCj4K
PiBTaWduZWQtb2ZmLWJ5OiBaaGVuZ2NoYW8gU2hhbyA8c2hhb3poZW5nY2hhb0BodWF3ZWkuY29t
PgoKZm9yIHNjaF9jYWtlOgoKQWNrZWQtYnk6IFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiA8dG9r
ZUB0b2tlLmRrPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xp
c3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==
