Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7977E1EE966
	for <lists+cake@lfdr.de>; Thu,  4 Jun 2020 19:27:36 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id BFB663CB46;
	Thu,  4 Jun 2020 13:27:29 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1591291649;
	bh=+zI1orR25qc5nJhPYvlx+ozonitUQvbtIdoEy0nFWYc=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=dWqkfDqoDBSuZXZAjfq0lu3jmNEVTBiD0sSL1gIn6vbkiBFek1IhTKKNWkHmYVenA
	 +n4dMieZCk19fkx54ZMpzKhaZms81s9mgsN1hXtOQa3NzWLqqAM0kyn+iSV/YTULzf
	 9bsBZe5xblbkx4p4+fvNqYciwJummq6/Ff8Kfy6aNc5w8fnCYWQXZnACmeZjlkkzOi
	 oLMT8qZyvKQYKR/VwCPcXUSnL55C8N8zne3coBBmMl4fjPYRSN//xX0ayYUMZG7qqQ
	 uB/jZw9IJV2fgS6LiD4poa2yi92Ve1xkFcmGkElTzb7BHkNwuGJmtlYy71vTMf2C2m
	 opwIKOEdNWIwQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-il1-x130.google.com (mail-il1-x130.google.com
 [IPv6:2607:f8b0:4864:20::130])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 042143B2A4;
 Thu,  4 Jun 2020 13:27:28 -0400 (EDT)
Received: by mail-il1-x130.google.com with SMTP id e11so1760369ilr.4;
 Thu, 04 Jun 2020 10:27:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=C1lPguQvWQTdKrtcd59xz+dtUmnlhVElZ8QMv69BMxc=;
 b=NxRU+fqFjeAhYO+YE7hQ2R4BFtWbskXqjN5exURkY/sin+5++IV9CNM06JgzuP+eYR
 acdJ49pVVnnuVb8swPkL4flA8TplbNul/M+T9Z+J4tx1N28B0mEkVS2L6dNnvnkvKRAG
 rRDrze1P5eg6AB04xPGGSVsiBf8wLdOawuZgTxE3DwclljaV32nd+rhmZ9rIYYaX5Z6O
 cgknQPiuF3L7gNk7Gu953/0G02xJpzou4RsaGtpk36c5hI/wqz8lCZO4I8V3ZYV+xM0S
 /31+kzoXR/Y4ppJZd2S1LM+hSi92IKG7M63t8cz5M1lXYSZdBhJrJbGBE13BzxNdcPC9
 AVLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=C1lPguQvWQTdKrtcd59xz+dtUmnlhVElZ8QMv69BMxc=;
 b=quxAB5qfCj/efhyls27B1Nl8OKtL9r1nDZV1eSciEpV9MC25gIqmuXiewXgAE8P2mY
 2hTEIzvbH/IB2MKAJqDwXdWZ/dsjQFq9DqBHsXBFKK63OJRoNOIjipb808DAxaCYhQG5
 RRnn1X7f8rXYOJguXvyIfrJ2RoS5ix9+8osVz3g1me7oCOCozOPYgas4GVuuJzTvYtSU
 D96Lgi64UN+qAjVoW1nqTl6I8MOpKWxw1bw8kfV9na11bMiz65AQ+WkL6Gz2o0k8zEyg
 nzYl6C6jzma98UJT9TqZchLZGmEJZLVRGdrz3tGhDMZWDkz41/RdV4FuNCTJAWc2JuUI
 Vf4A==
X-Gm-Message-State: AOAM5323o0MjNzjtsv+0si1Fw1Dyf50STByeaxHWVjfOxPRHSHXpww8L
 iliY6Rm8T1vYlmOwA7+zMMQKGUEGXIQi86Wz3CM=
X-Google-Smtp-Source: ABdhPJyP8EzeU6Y326DRgFA+4xLEp4wDwCYQTGhh1GcBAqSoH6WMJyvJhwe7NEt9nmbONXUKY3wQnShHzdnq8ihI8wA=
X-Received: by 2002:a92:9f12:: with SMTP id u18mr4923527ili.287.1591291647516; 
 Thu, 04 Jun 2020 10:27:27 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw79=3m5UJx2nKPADo1f2BJnMbrzjrHOYf-jpZdw=RESfA@mail.gmail.com>
 <CACQiMXb9c1Momyj0vkNwoJq8LF1jQ4S_d2sTKtoBJHJQ9Yo+iw@mail.gmail.com>
In-Reply-To: <CACQiMXb9c1Momyj0vkNwoJq8LF1jQ4S_d2sTKtoBJHJQ9Yo+iw@mail.gmail.com>
From: Dave Taht <dave.taht@gmail.com>
Date: Thu, 4 Jun 2020 10:27:16 -0700
Message-ID: <CAA93jw71UJ0Kt-gX4cXeaFTy8nACd=SmTMH6Hhwo7skmyGzViQ@mail.gmail.com>
To: Pedro Tumusok <pedro.tumusok@gmail.com>
Subject: Re: [Cake] [Bloat] anyone using google stadia?
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
Cc: Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>, "Ozer,
 Sebnem" <Sebnem_Ozer@comcast.com>, Cake List <cake@lists.bufferbloat.net>,
 ECN-Sane <ecn-sane@lists.bufferbloat.net>,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gV2VkLCBKdW4gMywgMjAyMCBhdCAxMjowOSBQTSBQZWRybyBUdW11c29rIDxwZWRyby50dW11
c29rQGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBJIGhhdmUgaXQsIGJ1dCBoYXZlIG5vdCBmaXJlZCB1
cCBmb3IgYXdoaWxlLgoKRG8geW91IGhhdmUgdGhlIGNvbnRyb2xsZXI/Cgo+IExldHMgc2VlIGlm
IEkgY2FuIGdldCBhcm91bmQgdG8gZG8gc29tZSBjYXB0dXJlcyBpbiBhIGNvdXBsZSBvZiBkYXlz
LCBpZiBhbnlib2R5IHdhbnRzIGl0LCBwbGVhc2UgZmVlbCBmcmVlIDopCgpUaHggc28gbXVjaCEg
VGVzdGluZyB3aGF0IGhhcHBlbnMgbm9ybWFsbHksIGFuZCB0aGVuIHdoZW4gbG9hZCBpcwpvZmZl
cmVkIChlLmcuIHJydWwpLCBzaG91bGQgYmUgImludGVyZXN0aW5nIiBpbgp0aGUgbG9uZyBydW4s
IGJ1dCBqdXN0IGhhdmluZyBhIGZldyByZWZlcmVuY2UgY2FwdHVyZXMgZnJvbSBhcm91bmQgdGhl
CndvcmxkLCBhbmQgb24gZGlmZmVyZW50IHNlcnZpY2UgdHlwZXMgKGZpYmVyLGNhYmxlLCB3aWZp
LCBkc2wpLAp3b3VsZCBiZSBhIGdvb2Qgc3RhcnQgdG8gdW5kZXJzdGFuZGluZyB0aGUgc3RhdGUg
b2YgdGhlIGFydCBoZXJlIC0KcGFjaW5nLCBhY3R1YWwgdHJhZmZpYyB2b2x1bWUgKGJvdGggd2F5
cyksIGV0YyAtIGNhbiBiZSBlYXNpbHkKZGVyaXZlZCBldmVuIGZyb20gZW5jcnlwdGVkIHRyYWZm
aWMuCgouLi4gYW5kIGJlaW5nIHN0dWNrIGF0IGhvbWUgbXlzZWxmLCBJIHdhcyBjb25zaWRlcmlu
ZyBnZXR0aW5nIHRoZQpzZXJ2aWNlIHRvIHBsYXkgd2l0aCEgV2hhdCdzIHRoZSBiZXN0IGdhbWUg
eSdhbGwgaGF2ZSB0cmllZCBvbiBpdD8gSSdtCm5vdCBtdWNoIG9mIGEgZmlyc3QtcGVyc29uIHNo
b290ZXIgcGVyc29uLCB0aGUgbGFzdCBnYW1lIEkgcGxheWVkIG11Y2gKb2Ygd2FzIHN0YXJjcmFm
dC4uLi4gSSB3b3VsZCBlbmpveSB0YWtpbmcgc29tZSBvZiB5J2FsbCBvbiBvbiBzb21lCmdhbWUs
IHdoaWxlCnRlc3RpbmcuLi4KCj4gUGVkcm8KPgo+IE9uIFdlZCwgSnVuIDMsIDIwMjAgYXQgOToz
NiBBTSBEYXZlIFRhaHQgPGRhdmUudGFodEBnbWFpbC5jb20+IHdyb3RlOgo+Pgo+PiBhbmQgd2ls
bGluZyB0byBzaGFyZSBzb21lIHBhY2tldCBjYXB0dXJlcyBvZiA1IG1pbnV0ZXMgb2YgZ2FtZXBs
YXkKPj4gc3RhcnQgdG8gZmluaXNoPyBPdmVyIHdpcmVkIGFuZCB3aWZpPwo+Pgo+PiB0aHguCj4+
Cj4+IC0tCj4+ICJGb3IgYSBzdWNjZXNzZnVsIHRlY2hub2xvZ3ksIHJlYWxpdHkgbXVzdCB0YWtl
IHByZWNlZGVuY2Ugb3ZlciBwdWJsaWMKPj4gcmVsYXRpb25zLCBmb3IgTW90aGVyIE5hdHVyZSBj
YW5ub3QgYmUgZm9vbGVkIiAtIFJpY2hhcmQgRmV5bm1hbgo+Pgo+PiBkYXZlQHRhaHQubmV0IDxE
YXZlIFTDpGh0PiBDVE8sIFRla0xpYnJlLCBMTEMgVGVsOiAxLTgzMS00MzUtMDcyOQo+PiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBCbG9hdCBtYWls
aW5nIGxpc3QKPj4gQmxvYXRAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cj4+IGh0dHBzOi8vbGlzdHMu
YnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Jsb2F0Cj4KPgo+Cj4gLS0KPiBCZXN0IHJlZ2FyZHMg
LyBNdmgKPiBKYW4gUGVkcm8gVHVtdXNvawo+CgoKLS0gCiJGb3IgYSBzdWNjZXNzZnVsIHRlY2hu
b2xvZ3ksIHJlYWxpdHkgbXVzdCB0YWtlIHByZWNlZGVuY2Ugb3ZlciBwdWJsaWMKcmVsYXRpb25z
LCBmb3IgTW90aGVyIE5hdHVyZSBjYW5ub3QgYmUgZm9vbGVkIiAtIFJpY2hhcmQgRmV5bm1hbgoK
ZGF2ZUB0YWh0Lm5ldCA8RGF2ZSBUw6RodD4gQ1RPLCBUZWtMaWJyZSwgTExDIFRlbDogMS04MzEt
NDM1LTA3MjkKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
Q2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0
cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=
