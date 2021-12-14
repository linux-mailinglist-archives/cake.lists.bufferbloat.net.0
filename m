Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id B37F3473CF4
	for <lists+cake@lfdr.de>; Tue, 14 Dec 2021 07:06:59 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 28B9F3CB38;
	Tue, 14 Dec 2021 01:06:58 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1639462018;
	bh=CDe2/FZN3EFQxL6EZ/VvIfTfh7KIApsDPXAScah/pOw=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=HIvnJgk4uI1OsKxJk3tXfWmdiy6O0Gg8csb+cFABHT9i3pxAm6TF481tpEIsEFb6g
	 KOfsdE77Ks/l0zEJl2cy0yHl79AhKhWCVxHeo5WNsTcBurdkv+frur6ptviH+t6wh7
	 VMq6LxW8fu5qwhQnClzOATAgcGqmBW7HJ+gWSYfbADLzpYpfxSWmPzeDsm3J/8kZfJ
	 dwDj/xoZydQYStv1xdhFWu5I8euzVqkI4sFiwL2D7TkbFaQEjYAp7GmauSw4CyWnLQ
	 OUye+cB5SaZmkzibIEQPtasDaDEd6PvLKWRzYNdfyT+rDaTSIVt32XhbgnyYEM7vRt
	 pXbcK6KWj1j4A==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd36.google.com (mail-io1-xd36.google.com
 [IPv6:2607:f8b0:4864:20::d36])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id C18373B29D
 for <cake@lists.bufferbloat.net>; Tue, 14 Dec 2021 01:06:56 -0500 (EST)
Received: by mail-io1-xd36.google.com with SMTP id b187so22185866iof.11
 for <cake@lists.bufferbloat.net>; Mon, 13 Dec 2021 22:06:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=dmQEfss4iIaPFlfVPUeLn9ZN/eMQa1euPDYjYATGmis=;
 b=FZWIteFd+KxF95xTR5pNJzPA/w5Z+p5qPYRUTz2M/Bm1e3q7L6CLTvHoSUdSyJxUe1
 J/J7RAWktnEI4JYcDta81llntJchcLpNSw2kNFMcdKK3mnRmwPMsb67tL4o3LOMAM6Yc
 4rH6ZbbyjdNEAWRwiFnXtq8YQMf+uApT+fOxJi8QAWHDs+wjIGx7U8Rgx/90V3W2lFGg
 f7qkveAQVaZsAUZaIzwDHcZNLKL6y0wy5/0O58HwzMgdENO1qWeBFtxC+8oUE6zOFy35
 bzaqWSwYULotlMoh4c8vCplPr5YSnL8iKuE0kZT0VwlXYeaIcdtqfcHZhOgrRQsxK/vA
 efOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=dmQEfss4iIaPFlfVPUeLn9ZN/eMQa1euPDYjYATGmis=;
 b=xCFAdl5l4/WiX76cbDouonZzPXKZDz7HYqw4BM1BYDoQBbn/WL206WHxLg0c08qtkN
 iyAOu0YEyLpsETmz0SWRdHABlP7XjLtD3EvRhjXqH8LJz2aPARQzhMDvnHmWWUz3fmt1
 TNTPJ2Hk5vcANEgyUiWUJCQDuiJYBkOGLWyYAzMj2eVerIvwuN+lxfCOfYd2fyk45dKS
 7tnna0+I6R39fSObZ782U5nRcTCAsKHbudR2iBoBQ+jOLQKcX15TKG73S9/mN9sKdl3f
 ghfpNKPgYAfXro8F1Lnl7BEJttiYMbTTlTe9f/ykfroFd3yipJchJtKw9jzkTRDvoyJ7
 esBQ==
X-Gm-Message-State: AOAM530NAloFCRvFR3T9ELFcU4087DuiQeH5WLN4Rgaw9p5dMgFhNAwQ
 MNYnmxyxyMPx4/DlFsqHN5YYPO04K9iKnVIDFZc=
X-Google-Smtp-Source: ABdhPJw3pfsbHF2uERxsbg9DO1ew7FwZ0BhDLAzCuDZKhFg7oLznPt4FynUXtVa/K+gxZxhmLUicpX9mY+V4xDj48Sw=
X-Received: by 2002:a02:cf06:: with SMTP id q6mr1863569jar.62.1639462015956;
 Mon, 13 Dec 2021 22:06:55 -0800 (PST)
MIME-Version: 1.0
References: <CAA93jw5WQ_sXPZSiSyMrBvwu=QZUsXiZxSuR0jJV9iLjqebiYA@mail.gmail.com>
 <18098E06-CB62-4967-B604-268063392C35@gmail.com>
 <CAA93jw5kdaV=T58SnF2gP0wGHunbTRT7y8ZWjvgiYdn4q_rMEg@mail.gmail.com>
In-Reply-To: <CAA93jw5kdaV=T58SnF2gP0wGHunbTRT7y8ZWjvgiYdn4q_rMEg@mail.gmail.com>
From: Dave Taht <dave.taht@gmail.com>
Date: Mon, 13 Dec 2021 22:06:43 -0800
Message-ID: <CAA93jw4Zm558c5hLQWmP+HAt-qAJogcT7HdEyiYyB50iL+y4Sw@mail.gmail.com>
To: Jonathan Morton <chromatix99@gmail.com>
Subject: Re: [Cake] sometimes I worry about cobalt's effectiveness
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

b2ssIGl0IGxvb2tzIGxpa2UgZWNuIGFuZCBwZXJoYXBzIGRzY3AgaXMgYnVzdGVkIG9uIHRoaXMg
bWlrcm90aWsKcmVsZWFzZS4gVG9uIG1vcmUgcGxvdHMsIGZhbHNlIHN0YXJ0cywgYW5kIHBhY2tl
dCBjYXB0dXJlcyBoZXJlLgoKaHR0cHM6Ly9mb3J1bS5taWtyb3Rpay5jb20vdmlld3RvcGljLnBo
cD9wPTg5Nzg5MiNwODk3ODkyCgpBbHNvIHdlbGwsIGNvZGVsIGlzIGRvaW5nIGJldHRlciB0aGFu
IGNvYmFsdCwgYW5kIFNGUSBhdCBsZWFzdCBhdAp0aGVzZSBSVFRzIGlzIGRvaW5nIHJlYWxseSwg
cmVhbGx5IHdlbGwuCgpPbiBNb24sIERlYyAxMywgMjAyMSBhdCA5OjUxIEFNIERhdmUgVGFodCA8
ZGF2ZS50YWh0QGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBJdCB0dXJucyBvdXQgdGhlIGhvc3Qgc3Rh
Y2sgaXMgZG9pbmcgc29tZXRoaW5nIHJlYWxseSB1bnVzdWFsLCAgSQo+IHRoaW5rLiBOb3QgY2Fr
ZS4gVG9vIG1hbnkgcGxvdHMgdG8gcG9zdCBoZXJlLCBwbGVhc2Ugam9pbiB0aGUgZm9ydW0gaWYK
PiB5b3Ugd2FudCB0byBzY3JhdGNoIHlvdXIgaGVhZCB3aXRoIHVzLgo+Cj4gT24gTW9uLCBEZWMg
MTMsIDIwMjEgYXQgOTo0NSBBTSBKb25hdGhhbiBNb3J0b24gPGNocm9tYXRpeDk5QGdtYWlsLmNv
bT4gd3JvdGU6Cj4gPgo+ID4gPiBPbiAxMiBEZWMsIDIwMjEsIGF0IDk6MzQgcG0sIERhdmUgVGFo
dCA8ZGF2ZS50YWh0QGdtYWlsLmNvbT4gd3JvdGU6Cj4gPiA+Cj4gPiA+IExPTkcgc3RyaW5nIG9m
IHRlc3RzIG9uIG1pa3JvdGlrIGF0IDE5TWJpdCBoZXJlOgo+ID4gPiBodHRwczovL2ZvcnVtLm1p
a3JvdGlrLmNvbS92aWV3dG9waWMucGhwP3A9ODk3NTU0I3A4OTc1NTQKPiA+Cj4gPiBJIGNhbid0
IHNlZSBhbnkgb2YgdGhlIGltYWdlIGF0dGFjaG1lbnRzIGluIHRoYXQgdGhyZWFkLCBzaW5jZSBJ
J20gbm90IGEgbWVtYmVyIG9mIHRoZSBmb3J1bS4gIElzIHRoZXJlIGFueXRoaW5nIHRoYXQgc2Ny
ZWFtcyBvZiBiZWluZyBzb21ldGhpbmcgSSBzaG91bGQgYmUgYXdhcmUgb2Y/Cj4gPgo+ID4gIC0g
Sm9uYXRoYW4gTW9ydG9uCj4KPgo+Cj4gLS0KPiBJIHRyaWVkIHRvIGJ1aWxkIGEgYmV0dGVyIGZ1
dHVyZSwgYSBmZXcgdGltZXM6Cj4gaHR0cHM6Ly93YXlmb3J3YXJkLmFyY2hpdmUub3JnLz9zaXRl
PWh0dHBzJTNBJTJGJTJGd3d3LmljZWkub3JnCj4KPiBEYXZlIFTDpGh0IENFTywgVGVrTGlicmUs
IExMQwoKCgotLSAKSSB0cmllZCB0byBidWlsZCBhIGJldHRlciBmdXR1cmUsIGEgZmV3IHRpbWVz
OgpodHRwczovL3dheWZvcndhcmQuYXJjaGl2ZS5vcmcvP3NpdGU9aHR0cHMlM0ElMkYlMkZ3d3cu
aWNlaS5vcmcKCkRhdmUgVMOkaHQgQ0VPLCBUZWtMaWJyZSwgTExDCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlz
dHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZv
L2Nha2UK
