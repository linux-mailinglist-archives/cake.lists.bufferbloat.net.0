Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 4718F1CB38B
	for <lists+cake@lfdr.de>; Fri,  8 May 2020 17:41:05 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id EF8FB3CB39;
	Fri,  8 May 2020 11:41:03 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1588952463;
	bh=QMyumtfF0rBGKQLatxFcHVBLGKsHoJBAdGROcP9QxA4=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=GibTKWJ/MacpGnmdPdE7+EI4yZTz9KxPuWjPqLmkg/v+DlsyXct+387yJ0Cr8Oppe
	 b48HVPRnPCmsicLtM2CPPO5+fVoE1PYVZQ9YXz3u40IPatHtcpGOfXl9len7UIvkgX
	 XP4KmTSvKi7xeNNpJ08iOWNkSL/sLlAgwqxplAsJDuKdRcFCgurAqu94097Sp6Yuqg
	 /NzyaLZ6lVzToB6OLJcLzUx0VHpb4YKA5cNi6Y/wcWAvMK6PHbnmQhlAvNv1ND/q0v
	 aIJdgYcbVfYZZwByagMnTBMEKzANY12J1C+fUQSTiiFK5UiTzPjIjBlpJtps+UzO08
	 Rl52xif+nWBvg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-il1-x12a.google.com (mail-il1-x12a.google.com
 [IPv6:2607:f8b0:4864:20::12a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id C5E043B29E
 for <cake@lists.bufferbloat.net>; Fri,  8 May 2020 11:41:02 -0400 (EDT)
Received: by mail-il1-x12a.google.com with SMTP id x2so1786926ilp.13
 for <cake@lists.bufferbloat.net>; Fri, 08 May 2020 08:41:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=kB9tk10pm/s1amV4os4XZVR5T+E02H5YjfMAD+xEXXw=;
 b=R3uIGqHJGlvZOhkdwcfAVz2pguI0UEJKMHqAhfPTTXomD5BquVOD1C++PMvpD9ql2V
 Ste1ov3hx864dRIGAAQzNWH6afdCKxq6oOiLy39gE5HtKfzsnXh9aOSjAt+LPVFgWJwI
 Mp5TWXBN4mQdQGAWJuFT50LlS5MsF9ObEWkhV+tIOQazq/FX7rPT1gI81g8xvc+pcSMq
 ZuhwtUKwHNj7hbfqUOgme9CCchRi1UpEtN4QKzyL2Q1GXfW0WVaREvpk9Q6AY1VhV0ck
 s2bvyKRD4xp4DkGxSll9LxkL7K0+ns7jCLoAzU2rkCCI0FqOpQ3T159paRwXEellArWo
 JHEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=kB9tk10pm/s1amV4os4XZVR5T+E02H5YjfMAD+xEXXw=;
 b=SC0dbHPz2MnHqAjQevGMpNIRmTYp8UqS7K3JiUb2ovRCEh52IEdwC4HbyqvAz59wRG
 4sKe+pJ1+07qZ/DqIuEso6hx4oOOfH+cv3vOSuf+Y0tYbMDc0yhU+YzwtBqFLVK0Y9om
 RCF/0H7orUuk0m8DORYGi20Z5mb24UNO0L5woHCNL8IPLzkocwQpfB3+q1DoGe8VXmiL
 2MJRNpAcpSwAKd2Kp17gQe8qxxNwskRiETTXR3+RVg1VjMyaRYr7erQeC5vIDcLmZ9pa
 Q/TCGWrz6EMmb0ceAtltqtx2c91/R8Xshrs1jdb54i38zNwernKmsD/eRH59JyBKFomz
 8u2w==
X-Gm-Message-State: AGi0PubLeYgpeAPu83sZIUENI1A9ra1jbI1bu9ztAp5UGzDVXXLKbkDy
 4HbUDIlJPw/r04DcltBCKgmZNYwkyqfSserME1A=
X-Google-Smtp-Source: APiQypKYFq5nlwojOrGUP63A/ZuF7tBPiicjMcEE7QVOeXtmEFZmH/6aUYcD8VK60dC/K2eJ4DLoyOCkhAHKuBE+80U=
X-Received: by 2002:a92:4014:: with SMTP id n20mr3443879ila.249.1588952462279; 
 Fri, 08 May 2020 08:41:02 -0700 (PDT)
MIME-Version: 1.0
References: <CAC8NkTBHv6_6u21bRu2BcEAW2X1Sio-JWvCYwQgLR2q-6eBgOA@mail.gmail.com>
 <C24C4CCB-C30D-452A-9386-5AA533F11CEE@gmail.com> <87wo5okhbo.fsf@toke.dk>
 <CAC8NkTCYBokx0NedyuOKjhZqUMHXAc5tZtObTpdyjkvE4U_zUw@mail.gmail.com>
 <A85845BB-010A-4F39-99F4-C6206F7FEA65@gmx.de>
 <CAC8NkTBRWrhAQneAf6ZacTzWLYyM5TqX6jmD4-fafAD=7iPgfQ@mail.gmail.com>
 <CAA93jw6xZRcUerJ8JuxjtjW2_C+wyAUKRtqDojPj6hLdg1w0Dg@mail.gmail.com>
 <875zd6h3bu.fsf@toke.dk>
 <CAA93jw5OP3EfedB5zDPZNYdQaH+LkhUiwaLzMDbyvnTpxZdqSw@mail.gmail.com>
 <7FCC9B1F-7F4B-43E8-B557-88B2A845C28B@gmail.com>
In-Reply-To: <7FCC9B1F-7F4B-43E8-B557-88B2A845C28B@gmail.com>
From: Dave Taht <dave.taht@gmail.com>
Date: Fri, 8 May 2020 08:40:50 -0700
Message-ID: <CAA93jw6qnP0r8LcUxykUtbwMuv0WcoCvtseLC4rLdbhpwnOU-Q@mail.gmail.com>
To: Jonathan Morton <chromatix99@gmail.com>
Subject: Re: [Cake] Query on ACK
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
Cc: Avakash bhat <avakash261@gmail.com>,
 Vybhav Pai <vybhavpai1999.vp@gmail.com>,
 Shrinidhi Varna <shrinidhivarna.171co145@nitk.edu.in>,
 Cake List <cake@lists.bufferbloat.net>,
 "Mohit P. Tahiliani" <tahiliani@nitk.edu.in>,
 Deepak K <deepakkavoor99@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

YWNrcyBhdCB0aGUgdGltZSB5b3UgaGF2ZSByZWFjaGVkIGEgcG9pbnQgb2YgZHJvcHBpbmcgdGhl
bQpzaWduaWZpY2FudGx5IGhhdmUgZmlsbGVkIHRoZSBwaXBlLCBhbHNvLgoKV2hhdCBJIHNhdyBo
ZXJlIHdhcyB0aGF0IHRoZSBmaXJzdCBmbG93IHRvIHJlYWxseSBnZXQgZ29pbmcsIGFuZApyZWFs
bHkgZ2V0IGRyb3BwZWQsIGRvbWluYXRlZCBvdmVyIHRoZSBvdGhlcnMsCmJlY2F1c2UgSSB0aG91
Z2h0IGl0IHdhcyBjb25zaXN0ZW50bHkgZW5kaW5nIHVwIGluIHRoZSBwcmlvcml0eSBxdWV1ZS4K
Cmh0dHA6Ly9ibG9nLmNlcm93cnQub3JnL3Bvc3QvYWNrX2ZpbHRlcmluZy8KCkxvb2ssIGFsbCBJ
J20gcHJvcG9zaW5nIGlzIHRoaXMgaWRlYSBiZSB0cmllZCBhbmQgdGVzdGVkLiBDeW5pY2FsbHku
Li4Kc2luY2UgdGhlcmUncyBhIG5ldyBtb2RlbCBjb21pbmcgb3V0IGFzCnRoZSByZXN1bHQgb2Yg
dGhpcyB3b3JrLCBpdCBpbW1lZGlhdGVseSB0dXJucyBpbnRvIHNvbWV0aGluZyBhIGdvb2QKcGFw
ZXIgY2FuIGhpbmcgb24uCgpPbiBGcmksIE1heSA4LCAyMDIwIGF0IDg6MjAgQU0gSm9uYXRoYW4g
TW9ydG9uIDxjaHJvbWF0aXg5OUBnbWFpbC5jb20+IHdyb3RlOgo+Cj4gPj4gVGhlIEFDSyBmaWx0
ZXIgcnVucyBvbiBlbnF1ZXVlLCBzbyBpZiBhIHF1ZXVlIGhhcyBvbmx5IEFDS3MgaW4gaXQsIGl0
Cj4gPj4gd2lsbCBuZXZlciBhY2N1bXVsYXRlIGFueXRoaW5nIGluIHRoZSBmaXJzdCBwbGFjZS4u
Lgo+ID4KPiA+IGJ1dCB0aGUgc2lkZSBlZmZlY3QgaXMgdGhhdCBvbiBkZXF1ZXVlLCBpdCBmbGlw
cyBpdCBpbnRvIHRoZSBmYXN0Cj4gPiBxdWV1ZSBkcnIgcm90YXRpb24sIG5vdCB0aGUgc2xvdywg
c28gaXQgY2FuJ3QgYWNjdW11bGF0ZQo+ID4gYXMgbWFueSBhY2tzIGJlZm9yZSBkZWxpdmVyaW5n
IHRoZSBvbmUgaXQgaGFzIGxlZnQuCj4gPgo+ID4gT3Igc28gSSB0aG91Z2h0LCB3YXkgYmFjayB3
aGVuLi4uLgo+Cj4gVGhlIGFjayBmaWx0ZXIgY29udmVydHMgYSBzdHJlYW0gb2YgYWNrcyB0aGF0
IG1pZ2h0IGJlIHRyZWF0ZWQgYXMgYSBidWxrIGZsb3cgaW50byBhIHNwYXJzZSBmbG93LCB3aGlj
aCBpcyBkZWxpdmVyZWQgcHJvbXB0bHkuICBUaGlzIGlzIGEgZ29vZCB0aGluZzsgYW4gYWNrIHNo
b3VsZCBub3QgYmUgaGVsZCBiYWNrIHNvbGVseSB0byBzZWUgd2hldGhlciBhbm90aGVyIG9uZSB3
aWxsIGFycml2ZS4KPgo+IEkgdGhpbmsgb2YgaXQgYXMgYW4gb3B0aW1pc2F0aW9uIHRvIHJlZHVj
ZSBkZWxheSBvZiB0aGUgaW5mb3JtYXRpb24gaW4gdGhlIGFjayBzdHJlYW0sIG5vdCBzb2xlbHkg
YXMgYSB3YXkgdG8gcmVkdWNlIHRoZSBiYW5kd2lkdGggY29uc3VtZWQgYnkgdGhlIGFjayBzdHJl
YW07IHRoZSBsYXR0ZXIgaXMgYSBoYXBweSBzaWRlIGVmZmVjdC4KPgo+ICAtIEpvbmF0aGFuIE1v
cnRvbgoKCgotLSAKTWFrZSBNdXNpYywgTm90IFdhcgoKRGF2ZSBUw6RodApDVE8sIFRla0xpYnJl
LCBMTEMKaHR0cDovL3d3dy50ZWtsaWJyZS5jb20KVGVsOiAxLTgzMS00MzUtMDcyOQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlz
dApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5l
dC9saXN0aW5mby9jYWtlCg==
