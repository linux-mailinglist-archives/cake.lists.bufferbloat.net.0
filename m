Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 17F2F3759AF
	for <lists+cake@lfdr.de>; Thu,  6 May 2021 19:49:52 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 7E29E3CB40;
	Thu,  6 May 2021 13:49:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1620323390;
	bh=wxYYCe8mlUHq9I63WhnMxPvV0yYArKjebVq7Umgv9qI=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=dIHHNP+G39+c/bAQv0lHQKJ7B+9O3Ni+3HXK29lQNknebwrSalwJwcXqOvEeWZuSX
	 wFEoOo/vF2lNckwDMuosBEwahWN64p5tO8d5jwRvFr94Rf+/zGEEAcdUBhqBeZygwd
	 yLgg1oU4DQXRitS3WR1mapuz7rY04zVzEfZ7h2EOJd0sZQRNYK4xyvQai2kq50F926
	 yk+L67tDjZ4mLMVmC2UGSPbiLRvqCzIVkPnupw0z4XhO10ZZMTfjUR4XQq6aNz01Ar
	 wyTUsgpbbTkwAuD1AThevXYMydPLxc+uO1J/d5Toou2iValMkxzLvyKf3tEbrVz0O/
	 6mSjceXfRL4Ow==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd31.google.com (mail-io1-xd31.google.com
 [IPv6:2607:f8b0:4864:20::d31])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id B20663B2A4
 for <cake@lists.bufferbloat.net>; Thu,  6 May 2021 13:49:48 -0400 (EDT)
Received: by mail-io1-xd31.google.com with SMTP id p8so5547938iol.11
 for <cake@lists.bufferbloat.net>; Thu, 06 May 2021 10:49:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=gc9RaV3/Mh50lrgDi0RrfAf4IOqIuydb20IiliiJqZ0=;
 b=ZJKlP7vZzKLn+gW6zG6GxMGj3q9CSyb7nnLt9hoXZNxGF7cYtRIVP7zB7NTDDwIAm2
 dN82DxSzqrV9D7zkx2wgh41GaIVczMy25l+pdoFinXvNr+OWaHH/OQK5T7aHf+fKqDDC
 02SJUpjYplCH8nEcUCLGG5Bnfue59wrqtLfJykm65Hl9FOj0lAWagRfCREcxJC50Mu07
 I5eWQN7qi07qpgTOwKSLKaTrrIT42CdVx4CR6fFeVXyzLJo6IgtLovxX/yO4CA9mBJiP
 ekiE0424HID7rOt2f0DlJ4/InWe0lRNUfhnOTp7SNUb1ef/1ixbfqyWh1xzIjWWsFqXq
 IyAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=gc9RaV3/Mh50lrgDi0RrfAf4IOqIuydb20IiliiJqZ0=;
 b=L+CC5P3YODcMXtIsQ/VKVE5TmBBakLntIZ0L14fAdy/dcCTeT1D1nmJwFkCU3+f92b
 KOoROwe4ztOeFLDg4DJ5F5T5NokdTqZffJNVZnON8Cl6y1tbJFGu0xCPRyQIm1hBA3ZL
 FNS4PR8EilxtY+ZRF83W1AL3cQ25yGiIun3rnJjlP87XTzO6YcOSQ8qmzN9bpzkd71Vb
 1aHH3Ui3QgWh5nMj7WaektAwT5chluGaBeVmhtukDIYsALeU3wRY48I4NJCUs97nPdhZ
 V4XFRH0U7TH/fpOI736d+Kg7MlTj+qP8QAgnXPMBh+ICqdNnY3HWA5Hr1deKiATh+y35
 yCEQ==
X-Gm-Message-State: AOAM533qIQ2J4Atw4biSDyCJCztIMJ6XRncatYDRqybKpzsrNd/Ny3c/
 Znsg/Z0jI5Vy6Cu39uSTKLosr+RfLUu5uDMiGuvqq565I4c=
X-Google-Smtp-Source: ABdhPJygVRe7PBn/Gd8SMuWphSamfFSJ+sJALI48qUjYUP4qRvcJ4zay1sQTMeeIwZZwNZTkwWEUxq0/oQfZFZ2nGeQ=
X-Received: by 2002:a02:91c1:: with SMTP id s1mr5016260jag.61.1620323387468;
 Thu, 06 May 2021 10:49:47 -0700 (PDT)
MIME-Version: 1.0
From: Dave Taht <dave.taht@gmail.com>
Date: Thu, 6 May 2021 10:49:35 -0700
Message-ID: <CAA93jw4pgohtn7HkqjYgrBHayKxoBUpmGU=52YWfaG4FTdyMWQ@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>, flent-users <flent-users@flent.org>
Subject: [Cake] centos 8 and cake and flent
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

Q3VycmVudGx5IGNlbnRvcyAoYW5kIEkgYXNzdW1lIHJlZGhhdCkgaXMgYXQgNC4xOC4gQ2FrZSB3
ZW50IGludG8gNC4xOQpzbyBJIGFzc3VtZSB0aGUgbmV4dCBtYWpvcgpyZWRoYXQvY2VudG9zIHJl
bGVhc2VzIHdpbGwgaGF2ZSBpdC4KCklzIHRoZXJlIGEgeXVtL3JwbSBleHBlcnQgaW4gdGhlIGhv
dXNlPyBmbGVudCBkb2VzIG5vdCBhcHBlYXIgdG8gYmUKcGFja2FnZWQgdXAgZm9yIHRoaXMgKD8p
LApuZWl0aGVyIGlzIG5ldHBlcmYgb3IgaXJ0dC4gSXMgdGhlcmUgYSByZXBvIEkgY291bGQgdXNl
PwoKdGMgaXMgbm90IHN1cHBsaWVkIGJ5IGRlZmF1bHQgYXBwYXJlbnRseSBidXQgSSB3YXMgcmVs
aWV2ZWQgdG8gc2VlCm9uY2UgSSBidWlsdCBpcHJvdXRlIGhlYWQgdGhhdApmcV9jb2RlbCB3YXMg
aW5kZWVkIHRoZSBkZWZhdWx0IHNjaGVkdWxlciBmb3IgY2VudG9zLiBCdXQgamVlemUsIHRjIGlz
Cm5vdCBzdXBwbGllZCBieSBkZWZhdWx0IGluIGNlbnRvcz8KCkFueXdheSwgd2l0aCBhdCBsZWFz
dCB0aGlzIG11Y2ggSSBnb3QgbW9zdCBvZiBvdXIgdG9vbHMgcnVubmluZy4KCnl1bSB1cGRhdGUK
eXVtIGluc3RhbGwgZ29sYW5nIGdpdCBhdXRvbWFrZSBtYWtlIGJpc29uIGZsZXggbGlibW5sLWRl
dmVsIHB5dGhvbjMKa2VybmVsLW1vZHVsZXMtZXh0cmEga2VybmVsLWRldmVsIGxpYmVsZi1kZXZl
bAoKcGlwMyBpbnN0YWxsIGZsZW50CmJ1aWx0IGlydHQgZnJvbSBnaXRodWIKCkNhbid0IGZpbmQg
cGFuZG9jIGVpdGhlci4KCkFuZCBteSBhdHRlbXB0IHRvIGJ1aWxkIGNha2Ugb3V0IG9mIHRyZWUg
ZGlkIHRoaXM6CgouL3RjIHFkaXNjIGFkZCBkZXYgZXRoMCByb290IGNha2UgYmFuZHdpZHRoIDFn
Yml0CkVycm9yOiBOTEFfRl9ORVNURUQgaXMgbWlzc2luZy4KCkkgZ3Vlc3MgSSBzaG91bGQgdHJ5
IGJ1aWxkaW5nIHRoZSA0LjE4IHZlcnNpb24gb2YgaXByb3V0ZTIuLi4gYnV0IEknbQpnb2luZyBi
YWNrIHRvIGJlZC4KCgoKSSdtIGFsc28gZ2V0dGluZyBwcmV0dHkgd2VpcmQgZmxlbnQgcmVzdWx0
cyBmcm9tIGxpbm9kZSdzIGNsb3VkCm5vd2FkYXlzLCB0aGlzIHNlcnZlciB3ZW50IHVuZGVyIHNz
aCBhdHRhY2sKaW1tZWRpYXRlbHkgYW1vbmcgb3RoZXIgdGhpbmdzLAoKCgotLSAKTGF0ZXN0IFBv
ZGNhc3Q6Cmh0dHBzOi8vd3d3LmxpbmtlZGluLmNvbS9mZWVkL3VwZGF0ZS91cm46bGk6YWN0aXZp
dHk6Njc5MTAxNDI4NDkzNjc4NTkyMC8KCkRhdmUgVMOkaHQgQ1RPLCBUZWtMaWJyZSwgTExDCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGlu
ZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxv
YXQubmV0L2xpc3RpbmZvL2Nha2UK
