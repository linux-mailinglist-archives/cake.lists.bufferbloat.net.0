Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F61D5BE335
	for <lists+cake@lfdr.de>; Tue, 20 Sep 2022 12:31:12 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 9B1343CB44;
	Tue, 20 Sep 2022 06:31:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1663669869;
	bh=+Bodz9T4/YP/1q/K9QZfQzAE4pCJME0gvGgVq2d5Plc=;
	h=Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:From;
	b=b33CMlRNAkL1HYDopwKCwyxKWNnhjxsu93B5C39sC1jpbRS5jwyVbFogLHvfvOQNj
	 GiwXN+MGNCFwkFDVK+yuw/3ucWxMsFH9RP4qGJ5dQvMqSffmmKP/7wEkyxwnQ0R+df
	 2FQ6JLxSFBPdVt+xebXUs+BYANvxUvjZZBblydHYR9glRs4gjDCJIkghPTVY6157DJ
	 qEaEGN46mwKdhFe5n/K0+Ug4rs59KsE/CjTef4sUqVAsz6heZ16M5Gg4LZQq2zqPOG
	 8J3QuhUJwBuxwzYeWiSW4gGKFmpIA2o7Oww7lexKYzrlBzfGVpxiPNjSagX50lJ+yk
	 TLBwXYodHACzA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com
 [IPv6:2a00:1450:4864:20::332])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id A8A2A3B29D;
 Tue, 20 Sep 2022 06:31:07 -0400 (EDT)
Received: by mail-wm1-x332.google.com with SMTP id
 h130-20020a1c2188000000b003b4cadadce7so5269956wmh.3; 
 Tue, 20 Sep 2022 03:31:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:from:to:cc:subject:date;
 bh=VdtTztG3Vh01XMUbf/XnjH8VwEXXxgFr128/RBX4+SM=;
 b=FBQZLXltZj5HxFQl7axEaLr1gal7ufqm0NhExiEwOE+rnHLnhcKk3A1Fu88mSYBCRh
 rqr1DAR3OeCsj98fAhiwSLbznGadhksrSELY8gjdm5ikUWorlHIJH2dCQI+yR0Gy8TT1
 cWXNKU4sBubnTVBVSqYW9WeDaE3RASVJ+1PBxH4W7JLsIgpJ+JzA2hFzl5+h395gV+ks
 bb37yK9UysBJU683QZmKnOjje8rqjChWKm8qJ/+F0H2gAvceS/DB6tmGbn8fdIxwKZOD
 T1rHWP8RYSkLEXMz7y5fu1+IPpJFOijSeYf4Fg07wNTzSOfThV8cQ/1kUI9RfMETeu76
 PESg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:x-gm-message-state:from:to:cc:subject:date;
 bh=VdtTztG3Vh01XMUbf/XnjH8VwEXXxgFr128/RBX4+SM=;
 b=V5WeyKfk+TSf8/jmUCn675BC/a6LtKNb4cLlWrJfDbcx3iI9vvmu94Fl+BBNg7hrrY
 6pAxbd6W3gXw9qrlLOJeP8xOo962xmoXec+EWa8FLD3c71Bzk9B+ep5GFnADWAevrU4+
 dUP9a7EU+DELXOFZpXP7qkfII8EWiunrhGOrVzZpAedT7gyCAKDCClRjFfss+C6zGDDF
 ihdBWgt2yvHjmM9E4hRhyACKFwk/n1ycH83JWNl5odzTUmCwWcNPjf0h/XdjARf6rX3B
 +3QMmp1kz7eiRb29IfjqLI4ljLPw4rbZLg1WguRInZbTU+0h6KuFZFHN0sXNrLSWW0CF
 iPDQ==
X-Gm-Message-State: ACrzQf201vPeXjLg5uVxB0ym8KuSdr9Oo2vlrhx8DoFC5tvwhP+KfYfW
 OhMeF/N6NosvrWfkCuEvq8xK92zb2tgrVC5dKNZb5+ivck0=
X-Google-Smtp-Source: AMsMyM7t1LnhVe/BDCv5gvI62dyGpLjNQzaDWcGniMzuBk2GJzAvoXYqWqw21pOShzme4/2ucX7aCk72FQVmgFOIb5s=
X-Received: by 2002:a05:600c:1909:b0:3b4:aa30:40df with SMTP id
 j9-20020a05600c190900b003b4aa3040dfmr1823977wmq.205.1663669865038; Tue, 20
 Sep 2022 03:31:05 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 20 Sep 2022 03:30:53 -0700
Message-ID: <CAA93jw7mEVsgZmLdbqdzpm-18xm0WwX+gPJN370i7P0e0zEEww@mail.gmail.com>
To: Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>, 
 Cake List <cake@lists.bufferbloat.net>, Rpm <rpm@lists.bufferbloat.net>
Subject: [Cake] Oct 2-6 wispa-apalooza conference in las vegas
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
From: Dave Taht via Cake <cake@lists.bufferbloat.net>
Reply-To: Dave Taht <dave.taht@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SSBhbSBzcGVha2luZyAodGFsa2luZyBhYm91dCByZmM3NTY3J3MgZGVtYW5kIGZvciBmcSthcW0g
b24KZXZlcnl0aGluZyksIG1vZGVyYXRpbmcgYSBwYW5lbCwgYW5kIGhhdW50aW5nIGEgYm9vdGgg
b3IgdHdvLCBndWl0YXIKaW4gaGFuZCwgYXQgdGhpcyBXSVNQLW9yaWVudGVkIGNvbmZlcmVuY2Uu
IEEgbG90IG9mIHRoaW5ncyBJKHdlJ3ZlKQpiZWVuIHdvcmtpbmcgb24gdGhpcyBwYXN0IHllYXIg
YXJlIGNvbWluZyB0byBhIGhlYWQgaGVyZSwgZXZlcnl0aGluZwpmcm9tIGNvcGluZyB3aXRoIHRo
ZSBicm9hZGJhbmQgbWFwcyBkZWJhY2xlLCB0aGUgRkNDIG5vdCB0YWtpbmcgb29rbGEKb3Igc2Ft
a25vd3MgbGF0ZW5jeSB1bmRlciBsb2FkIGRhdGEsIGFuZCB0aGUgJDYwQiBOVElBIGJyb2FkYmFu
ZCBmdW5kCnByb2dyYW1zIHN0aWxsIG5vdCBmdW5kaW5nIGlwdjYsIHRvIHRoZSBuZXcgb3Blbndy
dCBhbmQgbWlrcm90aWsKcmVsZWFzZXMsIHRvIHNlZWluZyBjYWtlIGFuZCBmcV9jb2RlbCBlbnRl
ciBtb3JlIElTUCBtaWRkbGVib3hlcyB2aWEKcHJlc2VlbSBhbmQgbGlicmVxb3MuIEFueW9uZSBo
ZXJlIGdvaW5nPwoKaHR0cHM6Ly93aXNwYWV2ZW50cy5vcmcvYm9vdGgtbWFwLwoKUnVtb3IgaGFz
IGl0IHRoYXQgYXQgbGVhc3Qgb25lIG5ldyBQdE1QIFdJU1AgcmFkaW8gd2lsbCBoYXZlIGZxX2Nv
ZGVsCmluIGl0LCBpbiBhZGRpdGlvbiB0byB0aGUgbWlrcm90aWssIG9wZW53aWZpIGFuZCBJU1BB
UFAgc3R1ZmYuIFRoZXJlCmFyZSBhIGJ1bmNoIG9mIG90aGVyIHByb2R1Y3RzIHRoZXJlLCB3aGVu
IEkgd2VudCBsYXN0IHRpbWUsIHRoYXQgd2VyZQpydW5uaW5nICJvdXIgc3R1ZmYiIChtb3N0IGRp
ZG4ndCBrbm93IGl0KS4gSXQncyBub3QgYSBodWdlbHkgdGVjaG5pY2FsCmNvbmZlcmVuY2UsIGJ1
dCBpbiBwYXJ0aWN1bGFyIGlmIHlvdSB3YW50IHRvIGxlYXJuIG1vcmUgdGhhbiB5b3UgZXZlcgp3
YW50ZWQgdG8ga25vdyBhYm91dCB0aGUgY3VycmVudCBzdGF0ZSBvZiBvdXRkb29yIGZpeGVkIHdp
cmVsZXNzLApmaWJlciwgYW5kIGxlZ2FsIHN0dWZmLCB2ZXJ5IHdvcnRoIGRvaW5nLiBBbmQgdGhl
IGZvb2QgaXMgZ29vZC4KCkkgbGlrZSBXSVNQIGZvbGsgYSBsb3QsIHRoZSBraW5kIG9mIG9ybmVy
eSBvbGQtZmFzaGlvbmVkIGFtZXJpY2FuCnNtYWxsIGJ1c2luZXNzZm9sayB0aGF0IGdldCBzKip0
IGRvbmUuIEluIG15IGNhc2UgSSdtIGdvaW5nIHRvIHRyeSBhbmQKZHJ1bSB1cCBhIGJpdCBvZiBi
dXNpbmVzcyBmb3IgIm5ldHdvcmsgdHVuZXVwcyIgYW5kIGN1c3RvbSBvcGVud3J0CmJ1aWxkcywg
aW4gYWRkaXRpb24gdG8gZ2V0dGluZyBhIGZlZWwgZm9yIHRoZSBzdGF0ZSBvZiB0aGluZ3MgaW4g
REMuCgpCcmluZ2luZyBmdW5uZWxzLgoKLS0gCkZRIFdvcmxkIERvbWluYXRpb24gcGVuZGluZzog
aHR0cHM6Ly9ibG9nLmNlcm93cnQub3JnL3Bvc3Qvc3RhdGVfb2ZfZnFfY29kZWwvCkRhdmUgVMOk
aHQgQ0VPLCBUZWtMaWJyZSwgTExDCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0
Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK
