Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id AD85D5F9C1D
	for <lists+cake@lfdr.de>; Mon, 10 Oct 2022 11:40:34 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 1C33D3CB47;
	Mon, 10 Oct 2022 05:40:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1665394828;
	bh=VsvdjBclubPDcaPsOJiOmXrmrf0ifstRsyLde4dFqu4=;
	h=In-Reply-To:Date:References:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=XE6UHJ5g/nksJqovuMa1E3lbDoOOU3qYKxbY7tkYVb4V9KoyacCXVmU2PfdYbXfNn
	 mWJsQSD7T3P25zRIcgPDZrJqV9C9SqG04KAyxHRa7jFyXzIsIRAUbjTRJKdJ+gKGBf
	 6k6Oy1oXQy2Q5PCtYkutooIKSZQLXzNHi8RWJu+b9/lxlqst0K+sY27t+Fzj+QmkI7
	 Mioc0G1CmP/W8AZwR27vK6/8GhXH1kXVJYkAtyZutqxhI7LEoSHKJwjnkIUnFaqMeZ
	 FEtmPkGBPPBoCmYd46fDMiqTpJGZD0oFgX/cylmlz94XD1MQJBqwPamv0qoC5TDI1X
	 1tpPS0/HFjVTw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id E2B193B29E;
 Mon, 10 Oct 2022 05:40:25 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1665394822;
 bh=ojr5Ph65eYY1UL2xAWjD69rDL8/nS8DO7ZFwbvatl+s=;
 h=X-UI-Sender-Class:Subject:From:In-Reply-To:Date:Cc:References:To;
 b=iNEYEd2XAnqYMXRNGk5H3YhhhKnlB+HAkRpRAdEiLOZQBLaMtqE+pGdaHq+ycCvmH
 rNhR4lEcgDL1cJq+qIHFoXtIjw/vdBY4KNVhlc/Yn4WON9j8TtRDPac/qSxxWiDkXz
 +d4iWO2DUBEElgIOrQHVMkElgrp090YeDwIgeCfA=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from smtpclient.apple ([134.76.241.253]) by mail.gmx.net (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1N33Ed-1pB0NX1GVp-013OSU; Mon, 10
 Oct 2022 11:40:22 +0200
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.120.41.1.1\))
In-Reply-To: <BB4CAEC2-669B-4595-BE6A-26D365B70535@telenor.no>
Date: Mon, 10 Oct 2022 11:40:21 +0200
Message-Id: <72674884-9E0D-4645-B5F5-C593CC45A8F0@gmx.de>
References: <CAA93jw77h=ztEOzyADriH2PnswUDQiyNvBdsuFi+K5EexpoxUQ@mail.gmail.com>
 <CE784DAD-5012-4FD3-9E2D-B931CBF1EBF8@telenor.no>
 <E615B656-9AAA-4AD4-8507-C461659846C5@gmx.de>
 <BB4CAEC2-669B-4595-BE6A-26D365B70535@telenor.no>
To: Taraldsen Erik <erik.taraldsen@telenor.no>
X-Mailer: Apple Mail (2.3696.120.41.1.1)
X-Provags-ID: V03:K1:qeuw31/1O3iCf7TyDXNaRx+hrYUTjRC4B3YjSqTW7QkwBq0zExO
 xYTuN5/uEIAxtag/nc31fmdKBMeMdNeuLM5d/bO+q989odDh/I0+WOoL8UEbOlZz1OPm5Ih
 hLLVRGMJNJeffI4RIGq3P7vvZrATsn4lzmI4iOG0dyneqng9wwqVCdF7k2usBsqkFyrOX0N
 Qny1taXOdxaL0h+0+84KA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:pQVIX+MGEkI=:PpGkNCDCWkIlii6GdShsTo
 Z7tSv9RoDT3QSteiI/TArn+yOZQmZiqhuIx03wnSp/RsP5RCTCHyJ64e/08z6F5OE5TcIGgcv
 NT7G2hbOPCF52W/qJOgbb8ysJG4iyFpoN35WWtGy/4itQxPyLNbh9BN3b4bN2FC+k/HWv2ITY
 sj9IY7Yx/F9TYqzBJ6tFlzEBBlr9DVdVr92t41f3GffybU9NqB3+D0gGBXRcjOd+WLtEl3B+k
 MbXlWqQZmtnoGhyaoaE5pHuNHzlk+CJIEmWaHDFrrXw02lDTvLbHf8dlSoP2rRE2OoduKsrei
 RUTFrc00yVGisM1mK5llgI4Mj8WqWqp7LXtsQhwu89wy7WtjehUcWnFO8MVxmgyGZ78hyoyQS
 PLqS4WdL2lbm1HC7c+dcrGt9W4wSh/jjH8dblNJkKiakvWBr80/ilg+Wu1tpAg4ZZgeQgQxnC
 GWDZxocPoHJAwLjfd2Mfg0dCBdc5ZDpGgKbQUkD5JuWnGclPoszRUJC6prb00xd70tRy0MvPX
 zrPNGUeONra6sdMDfk3nAqTaahae2xAVMyyq615LXjajeN7+j/8MvEQd4TI4c861b6WWsC5DO
 LwCHHMUChwxo6b9pu3elv35Au3yWMmH97a2zv+7SJdn1gpUJy0wo5t9phB1cI6XYpynaafrsE
 baN+LlOt34NDmkkvKBcqFU/sty34Exuf0jOaCKZb10Un17GVLmmLaf4gvY3lY9SuSOqJAYuPx
 T5SIg4xfUj5x4wncgtkUTS23EijH6pejMBS/tqxm8NpG5RXCMiDCjkW1MNnDBK6d98vbGSbKB
 v2D35hE9SMdy4NC1TRSA/N8YuYCa0jbWlA3enfRU4QJp75jA5MxZKS4X4A/xq1JsMyvLFfm27
 zKvkoy29QcvWO+YAoURx412hyVpo7xtMuQtYYRQO91/6l97A8fuO4C0vix9UcFc3L8sL0a00V
 kR4QmO3gf/LL3l8+kxuQfoK1fV+f6fYtdafmW8K2kJ4eGT2wUYhOAIt+7WmzAWPDNjwYW27W3
 nZwTsDxUg+Rl03/Y0iMM2e6RbsyvmYc5gNj9KuL4XvXLZkxwVRD0fZbBCwdTLWGdC2wRcsXy2
 tocAdDxqo1DIkgwkoU4FBBHC+YOCCtVaKNUqgh+qPFiXBz587ohsYEw/sinYluU8vFoAudgPO
 xQna9CN3BHkw7TcUHaa8EfG4q7tgkVqNavDIPf94KnP07Y6Nz0Jgq5TjYa4IPqPkjXrn4GOrq
 yThE8n9cPnHvvGXmlxmLDB8P+Rk5PCqvqrPDaZP4JTP8kzfFuymMrAiNvnfhCXRg4kMqxl00m
 /L9VYGvma9lPaj+U9zD3uZTY8YAvmejRo++n74TNLcMOWVio2PmEOeB4ocGUFTY5QrWUS9aH9
 6gw5qhtQczaXxPjWsv8EmXFUOPeW+m7R7RH8/jjIeB+hcbKrZLiSZg3Q7cxG2YDv9SQu1pOBz
 oNn8qbMDyFDK+Un8TPEN+9grCLizYL1+dgR2QtLLG++O0P48UwT+zpaFrzqaeX8Cbs9mGkFu5
 7gSy//ZgCoxAx9nBWFzv1YJFZ7i2f1MxQetHSVUByJ/Hg
Subject: Re: [Cake] [Bloat] The most wonderful video ever about bufferbloat
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
From: Sebastian Moeller via Cake <cake@lists.bufferbloat.net>
Reply-To: Sebastian Moeller <moeller0@gmx.de>
Cc: Rpm <rpm@lists.bufferbloat.net>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 Cake List <cake@lists.bufferbloat.net>, bloat <bloat@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SGkgRXJpaywKCgo+IE9uIE9jdCAxMCwgMjAyMiwgYXQgMTE6MzIsIFRhcmFsZHNlbiBFcmlrIDxl
cmlrLnRhcmFsZHNlbkB0ZWxlbm9yLm5vPiB3cm90ZToKPiAKPiBPbiAxMC8xMC8yMDIyLCAxMTow
OSwgIlNlYmFzdGlhbiBNb2VsbGVyIiA8bW9lbGxlcjBAZ214LmRlPiB3cm90ZToKPiAKPiAgICBO
aWNlIQo+IAo+PiBPbiBPY3QgMTAsIDIwMjIsIGF0IDA3OjUyLCBUYXJhbGRzZW4gRXJpayB2aWEg
Q2FrZSA8Y2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQ+IHdyb3RlOgo+PiAKPj4gSXQgdG9vayBh
Ym91dCAzIGhvdXJzIGZyb20gdGhlIHZpZGVvIHdhcyByZWxlYXNlIGJlZm9yZSB3ZSBnb3QgdGhl
IGZpcnN0IHJlcXVlc3QgdG8gaGF2ZSBTUU0gb24gdGhlIENQRSdzICB3ZSBtYW5hZ2UgYXMgYSBJ
U1AuICBGaW5hbGx5IGdldHRpbmcgc29tZSBjdXN0b21lciByZXNwb25zZSBvbiB0aGUgaXNzdWUu
IAo+IAo+ICAgIAlbU01dIFdpbGwgeW91IGJlIGFibGUgdG8gYnVtcCB0aGVzZSByZXF1ZXN0cyB0
byBoaWdoZXItdXBzIGFuZCBhdCBsZWFzdCBjaGFuZ2Ugc29tZSBwZXJjZXB0aW9uIG9mIGN1c3Rv
bWVyIGRlbWFuZCBmb3IgdGlnaHRlciBsYXRlbmN5IHBlcmZvcm1hbmNlPwo+IAo+IFRoYXQgd291
bGQgYmUgdGhlIGhvcGUuCgoJW1NNfSBFeGNlbGxlbnQsIGhvcGUgdGhpcyBwbGF5cyBvdXQgYXMg
d2Ugd2lzaCBmb3IuCgoKPiAgV2UgYWN0dWFsbHkgaGF2ZSBmcV9jb2RlbCBpbXBsZW1lbnRlZCBv
biB0aGUgdHdvIGxhdGVzdCBnZW5lcmF0aW9ucyBvZiBEU0wgcm91dGVycy4gIFVzZSBzeW5jIHJh
dGUgYXMgaW5wdXQgdG8gc2V0IHRoZSByYXRlLiAgV29ya3MgcXVpdGUgd2VsbC4KCglbU01dIENv
b2wsIGlmIEkgbWlnaHQgYXNrIHdoYXQgZnJhY3Rpb24gb2YgdGhlIHN5bmMgYXJlIHlvdSBzZXR0
aW5nIHRoZSB0cmFmZmljIHNoYXBlciBmb3IgYW5kIGFyZSB5b3UgZG9pbmcgZmluZSBncmFpbmVk
IG92ZXJoZWFkIGFjY291bnRpbmcgKG9yIHNpbXBseSBmb2xkIHRoYXQgaW50byBhIGdyYW5kICJk
ZS1yYXRpbmciLWZhY3Rvcik/CgoKPiBUaGVyZSBpcyBhbHNvIGEgYml0IG9mIHRyYWN0aW9uIGFy
b3VuZCBzcGVlZHRlc3QubmV0J3MgaW5jbHVzaW9uIG9mIGxhdGVuY3kgdW5kZXIgbG9hZCBpbnRl
cm5hbGx5LiAgCgoJW1NNXSBZZXMsIGFsdGhvdWdoIElJVUMgdGhleSBhcmUgcmVwb3J0aW5nIHRo
ZSBpbnRlcnF1YXJ0aWxlIG1lYW4gZm9yIHRoZSB0d28gbG9hZGVkIGxhdGVuY3kgZXN0aW1hdGVz
LCB3aGljaCBpcyBwcmV0dHkgY29uc2VydmF0aXZlIGFuZCBvbmx5IHJlYWxseSAidHJpZ2dlcnMi
IGZvciBtYXNzaXZlIGNvbnNpc3RlbnRseSBlbGV2YXRlZCBsYXRlbmN5OyBzbyBJIGV4cGVjdCB0
aGlzIHRvIGJlIGdyZWF0IGZvciBkZXRlY3RpbmcgcmVhbGx5IGJhZCBjYXNlcywgYnV0IEkgZmVh
ciBpdCBpcyB0b28gY29uc2VydmF0aXZlIGFuZCB3aWxsIG1ha2UgYSBudW1iZXIgb2YgcHJvYmxl
bWF0aWMgbGlua3MgbG9vayBPSy4gQnV0IGhleSwgZXZlbiB0aGF0IGlzIGxlYXBzIGFuZCBib3Vu
ZHMgYmV0dGVyIHRoYW4gdGhlIG9sZCBvbmx5IGlkbGUgbGF0ZW5jeSByZXBvcnQuCgoKPiBNeSBo
b3BlIGlzIHRoYXQgc29tZSBwdWJsaWNhdGlvbiBpbiBOb3J3YXkgd2lsbCBwaWNrIHVwIG9uIHRo
YXQgc2NvcmUgYW5kIGRvIGEgdGVzdCBhbmQgZ2V0IHNvbWUgbWFpbnN0cmVhbSBwdWJsaWNpdHkg
d2l0aCB0aGUgcmVzdWx0cy4KCglbU01dIEluc2lkZSB0aGUgRVUgdGhlIGNoYWxsZW5nZSBpcyB0
byBnZXQgbmF0aW9uYWwgcmVndWxhdG9ycyBhbmQgdGhlIEJFUkVDIHRvIHN0YXJ0IGJvdGhlcmlu
ZyBhYm91dCBsYXRlbmN5LXVuZGVyLWxvYWQgYXQgYWxsLCAic29tZSBtYWluc3RyZWFtIHB1Ymxp
Y2l0eSIgd291bGQgcHJvYmFibHkgaGVscCBoZXJlIGFzIHdlbGwuCgpSZWdhcmRzCglTZWJhc3Rp
YW4KCgo+IAo+IC1FcmlrCj4gCj4gCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0
Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==
