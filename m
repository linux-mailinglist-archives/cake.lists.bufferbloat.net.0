Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id E570742C5F2
	for <lists+cake@lfdr.de>; Wed, 13 Oct 2021 18:12:41 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 3C8A93CB43;
	Wed, 13 Oct 2021 12:12:40 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1634141560;
	bh=wW4cz0d3IptpucFLkIVzhLdvrTVDymMWYV7AMkJYhUI=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BkMajjzN3CAPxM3ptR2I9Mn9xZbuhLC9f5UTORmpIqG8T60UzDfkWwlV7V3oSbIEY
	 lltA+oPHMxnrJZ5voHl9jXwcdzKjijuozZQZxrpIG5ttDpIsc+fbZZzDBp+SinTg1q
	 /41Ev6qT2fDthIiKD8dDq0GuxlA98Oalo+N4VTtmV1oD2cMxMkstTdz6lTj077rnSG
	 lIHJPzuC1KYM4waxeiv0Wk9b0bfhPXLHaCYskbG+F+rGNgAzescPQ7d4Dhg6zsXdBs
	 UgyeDKpZlvJ3Z7Cp4zrHbsSK0ixOcx68gz+NZ9kmSNXzzyWf8HrXN2zQwimebU3sSf
	 NEh36ftTQzozw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-il1-x12d.google.com (mail-il1-x12d.google.com
 [IPv6:2607:f8b0:4864:20::12d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id ECE273B29D;
 Wed, 13 Oct 2021 12:12:38 -0400 (EDT)
Received: by mail-il1-x12d.google.com with SMTP id g2so299577ild.1;
 Wed, 13 Oct 2021 09:12:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=JAGoAMLUU3EhIs6rfF37+lSXxM/acJZCeYFS/NyZk+c=;
 b=Lplp/HMcEq8gBlfL9P78iuCtyAbIwWbBhPbJm7AwHIE2wbWXVGs78FyQvp14FpH14Z
 ke3YRHGoiTC6wdeknbcl4oTcW0HSl+pYbJZMyh4nYg86KbZuJbzZE+XAEF1v7RcboW5E
 9wutbg9QLeJX1hOZGAoI+hUjMaBgn6ueTRkckc0oz8YfqhEqm2y5i2VOp25qJuvFziyb
 8JQk3m/CMsc2ESkWa+jhjed0JBuVL3hzXusM2KU2xGzVbXik1MO9QOijGwF2eY+R6nX3
 PMDvi+YajGcjGptC1wiVyI7jd97UStcwc1sLrXFgQoixqUgl12uUO8z9nJcEnQnO8mSY
 3QzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=JAGoAMLUU3EhIs6rfF37+lSXxM/acJZCeYFS/NyZk+c=;
 b=yMSc2Hnl+LmPVyFgXVIC1XTJZ+kjQL1qVukyhfXbPy7BM5r38mAw95AiBgHbxpnENV
 3I9Yz8Ocr8BZGMGaMAJgEHNc9IqUV3ZAIaS9m6l4PssArm2kRzSkUpGRHc3SidHCgjpQ
 9cWJlSnpdZ9o7tyrK6j175oQLHKzNlSw17EXLFQzYk2ie6sV9Y19XkiVgVNZyLESjWCD
 XZUk/e2jbqxylX7zWYKdKPuo1kysk1aftaaRalyLoXpFnB9yxIDhxdHhveZSBRW6QWN7
 XJpiqG8p0ytfVuDDQzCr6h6rPBOYQSKspg8M3LRXkDOdYke2AEH4QjoE/HsrHFN3RJxn
 loPA==
X-Gm-Message-State: AOAM530zKmN49dArJ8fZLjSQvhvZvoZYPVPwbIF0194FT9V21FnSYFVz
 FFgImeYK6dTwAzM7RK3GQhVHGP1hFYkTEDZGNu0rp9wK
X-Google-Smtp-Source: ABdhPJwdpyu4tx8Vvm734RsHQBPwhFpnRHCetP/5YibYDwRtWixInRXam1VoDwYFh4RC6kNofQFRIvK1NnsZZWEBbug=
X-Received: by 2002:a05:6e02:8a3:: with SMTP id a3mr351039ilt.88.1634141558078; 
 Wed, 13 Oct 2021 09:12:38 -0700 (PDT)
MIME-Version: 1.0
References: <1634137216941.ae398a38-f121-4190-bc20-a53a30e13458@bf06x.hubspotemail.net>
 <CAA93jw6jtBMhE57wqdJHVZnESUEqx6hFqrWXzq_M=SXtcuB4BQ@mail.gmail.com>
 <CAJnXXoiTFZk4HPzNH5gOvO+NkOexZkSKOPTgaWa9TYExv4c9Ww@mail.gmail.com>
In-Reply-To: <CAJnXXoiTFZk4HPzNH5gOvO+NkOexZkSKOPTgaWa9TYExv4c9Ww@mail.gmail.com>
From: Dave Taht <dave.taht@gmail.com>
Date: Wed, 13 Oct 2021 09:12:26 -0700
Message-ID: <CAA93jw6MR3c6x5GnWj8AetNL5A3USNdNOPBsC-qNBpW=2-m1eg@mail.gmail.com>
To: John Yates <john@yates-sheets.org>
Subject: Re: [Cake] [Make-wifi-fast] Fwd: Call for Papers: KNIT Winter '21
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
Cc: Cake List <cake@lists.bufferbloat.net>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

VGhlIGRlc2NyaXB0aW9uIHNvIGJsZWVkaW5nIGVkZ2UsIHNvIHZhZ3VlLCBzbyBvdmVyYnJvYWQg
dGhhdCBJIGhhdmUKbm90IHRoZSBmb2dnaWVzdCBpZGVhIHdoYXQgaXQncyBhYm91dC4KCkRvZXMg
aXQgdXNlIElQIHBhY2tldHM/IFRhY2h5b25zPwoKTlNGIGlzIGJ1cm5pbmcgMThtIG9uIGl0LiBB
bmQgdGhlcmUncyBhIHR3aXR0ZXIgZmVlZC4KCk9uIFdlZCwgT2N0IDEzLCAyMDIxIGF0IDg6NTYg
QU0gSm9obiBZYXRlcyA8am9obkB5YXRlcy1zaGVldHMub3JnPiB3cm90ZToKPgo+ID4gSSBhY3R1
YWxseSBoYXZlIG5vIGlkZWEgd2hhdCBmYWJyaWMgaXMuCj4KPiBodHRwczovL2ZhYnJpYy10ZXN0
YmVkLm5ldC8KPgo+IC9qb2huCgoKCi0tIApGaXhpbmcgU3RhcmxpbmsncyBMYXRlbmNpZXM6IGh0
dHBzOi8vd3d3LnlvdXR1YmUuY29tL3dhdGNoP3Y9YzlnTG82WHJ3Z3cKCkRhdmUgVMOkaHQgQ0VP
LCBUZWtMaWJyZSwgTExDCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBz
Oi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK
