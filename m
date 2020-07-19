Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E4A5225474
	for <lists+cake@lfdr.de>; Mon, 20 Jul 2020 00:18:06 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 8CF333CB38;
	Sun, 19 Jul 2020 18:18:04 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1595197084;
	bh=WRYO2A2nbozcO3ybRX72ownAtJsesVyqOfxNTPN73nI=;
	h=Date:To:From:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=fyaP5IIWzXzyX8+en0TDVL65B2a+NVSh4io4bc+KQGiDgRo/UdYH29So1GdSmcZp7
	 97OiObt+9mVcZvksHh9zpN4qom+u6NpOdVCD1ujuGRWLg370M/We8t1XYosGCsceDQ
	 lkDmhIpjEZNK5Wx5mGSea3S0EueKkpP9SWl7ckzeCiZq4w0ct2TP7yH5VN0+O3m9Q9
	 s5tSxOiWW1SF07Ye53PnriIXXDXUZHww8CWPOa9l7OYyGvcWzve6/hlKU7Eiiua8QA
	 V1uOKzBpJLN+RpEup7RH69/DPIaZRcf+ulUls2r03xm2eUMp3+Swf4djLlHnwBPPRO
	 AzIlaoHZxjQXw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from shards.monkeyblade.net (shards.monkeyblade.net
 [IPv6:2620:137:e000::1:9])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id A42243B29E
 for <cake@lists.bufferbloat.net>; Sun, 19 Jul 2020 18:18:02 -0400 (EDT)
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id BF46F12812C1D;
 Sun, 19 Jul 2020 15:18:00 -0700 (PDT)
Date: Sun, 19 Jul 2020 15:17:57 -0700 (PDT)
Message-Id: <20200719.151757.18086897439312800.davem@davemloft.net>
To: grandmaster@al2klimov.de
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200719122232.58647-1-grandmaster@al2klimov.de>
References: <20200719122232.58647-1-grandmaster@al2klimov.de>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Sun, 19 Jul 2020 15:18:01 -0700 (PDT)
Subject: Re: [Cake] [PATCH for v5.9] sch_cake: Replace HTTP links with HTTPS
	ones
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
Cc: jiri@resnulli.us, netdev@vger.kernel.org, jhs@mojatatu.com,
 linux-kernel@vger.kernel.org, cake@lists.bufferbloat.net, kuba@kernel.org,
 xiyou.wangcong@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

ClBsZWFzZSBkb24ndCBkbyB0aGlzICJmb3IgdjUuOSIgc3R1ZmYuCgpUaGVyZSBpcyBubyBwcmVj
ZW5kZW5jZSBmb3IgdGhpcyBhbmQgaXQgbG9va3MgbGlrZSAtc3RhYmxlIHBhdGNoCnNlcmllcyB0
byBqdXN0IGFib3V0IGFueW9uZS4KClRoZXJlIGFyZSB3ZWxsIGRlZmluZWQsIGVzdGFibGlzaGVk
LCB3YXlzIHRvIHdyaXRlIFN1YmplY3QgbGluZXMgZm9yCnByb3BlciBwYXRjaCBzdWJtaXNzaW9u
cy4KClBsZWFzZSBkbyBub3QgaW52ZW50IHlvdXIgb3duIHdheSBvZiBkb2luZyB0aGlzLiAgSXQg
aXMgdmVyeQpmcnVzdHJhdGluZyBmb3IgbWUgcGVyc29uYWxseSwgZXNwZWNpYWxseSB3aXRoIHRo
ZSBhbW91bnQgb2YKcGF0Y2hlcyBJIGhhdmUgdG8gcHJvY2VzcyBhbmQgcmV2aWV3LCB0byB3YXRj
aCBob3cgeW91IHdpbGRseQpjaGFuZ2UgeW91ciBwYXRjaCBzdWJtaXNzaW9uIGZvcm1hdHRpbmcg
b3ZlciBhbmQgb3ZlciBhZ2Fpbi4KCkp1c3QgZG8gd2hhdCBvdGhlciBkZXZlbG9wZXJzIGFyZSBk
b2luZyBhbmQgeW91J2xsIGJlIGZpbmUuICBEb24ndAppbnZlbnQgeW91ciBvd24gd2F5LgoKSSdt
IGlnbm9yaW5nIGFsbCBvZiB5b3VyICJmb3IgdjUuOSIgZm9ybWF0dGVkIHBhdGNoZXMsIHNvcnJ5
LgoKVGhhbmtzLgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xp
c3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==
