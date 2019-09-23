Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id 92A44BB32D
	for <lists+cake@lfdr.de>; Mon, 23 Sep 2019 13:53:35 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 095B53CB3B;
	Mon, 23 Sep 2019 07:53:32 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1569239612;
	bh=JZv7+14U4V4Qk5LQbc+0lhrNhRhnqzjJTlG/2pQHxsk=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BTFmFiOTYbYGYvKapuTKnCY4iJBbY3hhBpD/4+Kep1VFAgKb0MBBMY5fQbjDYuZ3p
	 j5vAEi6d7LdUXqRQ/y60u2nKlSZceXqgs8dzRVqcTlJp4M29IqM/F3FFBQHwEFIPxd
	 OcXeiizoPhO8rTM0OZh7n+TA34zaEbNMN6WBTHGFCHKCENmQuOAOksYLUYhJM/7IvB
	 QIbYkBfkKh9tvon+COvAztZbiDdjDSv2YgPjPMsP/UMo1sxDbBa2TbpG1fQfX8HgQS
	 sSfFFZ3twnLFMzeeZwqL/BT+GRWSETLbP9ISfmJDqINNBjTV2Jn0vaVveLj4X2Vj8B
	 bbp5p8rJboVFw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-pg1-x52d.google.com (mail-pg1-x52d.google.com
 [IPv6:2607:f8b0:4864:20::52d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 616863B29E
 for <cake@lists.bufferbloat.net>; Mon, 23 Sep 2019 07:53:30 -0400 (EDT)
Received: by mail-pg1-x52d.google.com with SMTP id c17so7902037pgg.4
 for <cake@lists.bufferbloat.net>; Mon, 23 Sep 2019 04:53:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mounce.com.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=mciIdyQjaZnqz0+uMDjSIGaJWy83TOsYabZdJTgvly8=;
 b=Ew67ZEIqDEjx4bPbqkgK0QyB5td7gvkKYOkTmuf588VnsVkPYGNvAJ+e+lTUNXgrMi
 iTV4GdaPO3OOAlBb3P4JShxx2RxwWSTtqMNhwkDV2sjfnhrLSOxLsfqNdu5iYN6rZjaF
 /NOkrqOMj8+WvL6K9KcMPvzir7xPazk7gJ1NWVXSj4Za6JFFuV8LcieGsQum1omI/Ii6
 iXr4X+u9RoSC9F/4DL5lYnAdR25vyVQW7wngLSdwvKYINkXLqKNIqL/U9q3FsZ2nEExi
 a2uaYBR5tb0pP/8kzDImEr31uW8botNb6MWK5bmB3CBm7Ym0ffhHos8rLQ7eoyt+kjjG
 bQxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=mciIdyQjaZnqz0+uMDjSIGaJWy83TOsYabZdJTgvly8=;
 b=nU7PRvhm5XyAGEIhQcgHwFQWz9e6gH5koOSpNoA3GF1Ce0vltJ0x7stsRXWAZi0EBQ
 TPIK/WNk7PvL1VBRnpasbCGZT2XI4IxU34gywIqDMj4se1XxgfVDKs/T+KD9z/Brbc6F
 D3ILRTKqOqCw/8Wr9JspztgpI5vFTSS0NhFrdc4OD43TNe1Hdg8zHnWbmAY4oCEEJBo3
 V2JnCMTt5xVfNt0Ld24tkTdSmi4RE2W9iXmEW4/KEXv6QLef2W/y8/v27snvw5MfBAig
 BtdDng95Mn62L2Lx4QiMkjbl5aUHgS87s/6G8NN0YjX+kyVG3Xea1u2XuJTjOSDyJTk3
 SdDQ==
X-Gm-Message-State: APjAAAUl7KZ1vfsWevD5wlTGopbIWWDtxu/wY9voJFXL2NawMRfCxMMr
 zFIwagfNUHpkm8475IB2Kze7D+UQNucLadBfVReWQA==
X-Google-Smtp-Source: APXvYqw7ObNGfPA7rqH4FdhgW2wv7gHQIu8TaP2ElMFvjHQBy80V2/mXZnTcU3axEzk5rnpDCLo7U8cY/2ejNkaAnbc=
X-Received: by 2002:a65:6798:: with SMTP id e24mr17322541pgr.39.1569239609426; 
 Mon, 23 Sep 2019 04:53:29 -0700 (PDT)
MIME-Version: 1.0
References: <e3d4558a-1d56-a77c-5336-51bb3e6427ea@heavenlysanctuary.com>
 <F35FA667-3AE9-487E-9747-2EFCB6627556@gmail.com>
In-Reply-To: <F35FA667-3AE9-487E-9747-2EFCB6627556@gmail.com>
From: Ryan Mounce <ryan@mounce.com.au>
Date: Mon, 23 Sep 2019 21:23:18 +0930
Message-ID: <CAN+fvRaGQZa2SpJPxwz7Jkc1NWemGV+_tintmBwev5XGuSu4PQ@mail.gmail.com>
To: Jonathan Morton <chromatix99@gmail.com>
Subject: Re: [Cake] Frontier FIOS Framing
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
Cc: Cake List <cake@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gTW9uLCAyMyBTZXAgMjAxOSBhdCAxMzo1NiwgSm9uYXRoYW4gTW9ydG9uIDxjaHJvbWF0aXg5
OUBnbWFpbC5jb20+IHdyb3RlOgo+Cj4gVGhlIG92ZXJoZWFkIGNvbXBlbnNhdGlvbiBtYXR0ZXJz
IG1vcmUgd2l0aCBzbWFsbCBwYWNrZXRzIHRoYW4gd2l0aCB0aGUgbGFyZ2VyIG9uZXMgdXNlZCBm
b3IgYnVsayB0cmFuc2ZlcnM7IGZvciB0aGUgbGF0dGVyLCByZXNlcnZpbmcgYSBsaXR0bGUgbW9y
ZSBiYW5kd2lkdGggd2lsbCBhcHBlYXIgdG8gbWFrZSBldmVyeXRoaW5nIHdvcmsuICBGb3IgZmli
cmUgSSB3b3VsZCB0cnkgImV0aGVybmV0IiBhbmQgcmVzZXJ2ZSBhYm91dCAxJSBiYW5kd2lkdGgg
ZWFjaCB3YXksIHRoZW4gaWYgcG9zc2libGUgdGVzdCB0byBzZWUgd2hldGhlciB0aGVyZSBpcyBh
bnkgYmxvYXQuCgpUaGUgImV0aGVybmV0IiBrZXl3b3JkIGlzIHBlcmZlY3QgZm9yIHNoYXBpbmcg
cmVhbCBsaW5lIHJhdGUgZXRoZXJuZXQsCmhvd2V2ZXIgaXQncyBtb3JlIGxpa2VseSB0aGF0IHRo
ZSB1cHN0cmVhbSBPTlUvT0xUL0JORyBpcwpzaGFwaW5nL3BvbGljaW5nIHdpdGhvdXQgcmVnYXJk
IGZvciB0aGUgOCBieXRlIHByZWFtYmxlICsgMTIgYnl0ZQppbnRlci1mcmFtZSBnYXAuIEl0J3Mg
YWxtb3N0IGNlcnRhaW5seSBibGluZCB0byB0aGUgbmF0aXZlIEdFTSBmcmFtaW5nCm9mIEdQT04u
CgpNeSBzdGFydGluZyBwb2ludCB3b3VsZCBiZSAibXB1IDY0IG92ZXJoZWFkIDE4Ii4gVGhlcmUg
YXJlIHBvc3NpYmx5ClZMQU4gdGFncyBpbiB1c2UgYmVoaW5kIHRoZSBzY2VuZXMsIHNvIHRyeSBp
bmNyZW1lbnRpbmcgb3ZlcmhlYWQgYnkgNApmcm9tIHRoZXJlLgoKRm9yIGV4YW1wbGUsIHRoaXMg
aXMgdGhlIHNpbXBsaWZpZWQgY2FrZSBpbmNhbnRhdGlvbiBmb3IgdGhlIHVwc3RyZWFtCm9mIG15
IDEwMC80MCBHUE9OIGNvbm5lY3Rpb246Cgp0YyBxZGlzYyByZXBsYWNlIGRldiBldGgyIHJvb3Qg
Y2FrZSBkdWFsLXNyY2hvc3QgbmF0IG1wdSA2NCBvdmVyaGVhZAoyNiBiYW5kd2lkdGggNDBNYml0
CgpUaGVyZSBhcmUgMiBWTEFOIHRhZ3MgYWRkZWQgYnkgdGhlIE9MVCBiZWZvcmUgbXkgdXBzdHJl
YW0gdHJhZmZpYyBpcwpwb2xpY2VkIGJ5IGFuIGFnZ3JlZ2F0aW9uIHN3aXRjaCwgc28gMTggYnl0
ZXMgZXRoZXJuZXQgKGluY2wuIEZDUykgKyA0CmJ5dGVzIFZMQU4gKyA0IGJ5dGVzIFZMQU4gPSAy
NgoKQ29ycmVzcG9uZGluZ2x5IGluIHRoZSBkb3duc3RyZWFtIEkgdXNlOgoKdGMgcWRpc2MgcmVw
bGFjZSBkZXYgaWZiMiByb290IGNha2UgaW5ncmVzcyBkdWFsLWRzdGhvc3QgbmF0IG1wdSA2NApv
dmVyaGVhZCAyNiBiYW5kd2lkdGggOTlNYml0CgpBcyBhbGx1ZGVkIHRvIGJ5IEpvbmF0aGFuLCB0
aGUgMSUgbWFyZ2luIGlzIHJlcXVpcmVkIGluIG9yZGVyIGZvciBjYWtlCnRvIHJlbGlhYmx5IGVu
Zm9yY2UgaG9zdC9mbG93IGZhaXJuZXNzIG9uIGRvd25zdHJlYW0vImluZ3Jlc3MiCnRyYWZmaWMu
IFNvIGxvbmcgYXMgbXB1L292ZXJoZWFkL2JhbmR3aWR0aCBhcmUgZmluZSB0dW5lZCwgSSBoYXZl
bid0Cm5lZWRlZCB0byBhbGxvdyBmb3IgYW55IG1hcmdpbiBpbiB0aGUgdXBzdHJlYW0uCgotUnlh
bgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1h
aWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZl
cmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==
