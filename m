Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 333634A47E2
	for <lists+cake@lfdr.de>; Mon, 31 Jan 2022 14:16:15 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 08EF23CB40;
	Mon, 31 Jan 2022 08:16:14 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1643634974;
	bh=2t261qkvNJ+YFxbBKsbamPWyM6aOz9o1SUoO5IdfpsY=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ef5D/2i345C1tIrBnGoBcbYJezaz1XTLLSA0exd3uJnbi4zntYU2Eq3twOgEM8jlP
	 j1SNSNB10eSCn50HHyUeuEmqrGVJJILTNN4QDKHp6sSGR5i4MTOjT0ffCEwHAM1wAP
	 Y4vYacID6Yb8BctR2GbSGbiAVmdNNfpkg0vWRrFSkYti+lKvBx0Obay4HhQlXARlCj
	 SWBXxzJmcHoazu+sPncnf4ERNYCdOzjoTcglOXDRQa4fI9d9dBku2vb1y4wkDsFQ2A
	 vkfWz4rVjH41QbIWGi90aB3YgiUXBd/yQEMGBDHR61vY87kAEny8jAMOwekMia044l
	 W8Sfbw0ise7tw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-yb1-xb31.google.com (mail-yb1-xb31.google.com
 [IPv6:2607:f8b0:4864:20::b31])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id EF5743CB35;
 Mon, 31 Jan 2022 08:16:11 -0500 (EST)
Received: by mail-yb1-xb31.google.com with SMTP id k17so40290442ybk.6;
 Mon, 31 Jan 2022 05:16:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=7gyyexDsRaXu4dKFSDWHTSXWbmsJt0mE9VlTtC+nH2g=;
 b=n/5HVrqDIo24OvGJEyDFLp2XRiJSNCXpjhQfq3uSqXV54BxKzIEyBtAPekk8UnDhyy
 4IFpRGaGyEz7sWN7WipOg4+x8eViYe+4bc95CMuwoVDyJW8PqTP/s96kGWxCzaAWdulS
 9eTsBRhV2mQwnjl9DwtaCidOpQAXczowP4dWmnN2rKDfVDfAmBswNL5gFXbO0IHWMRdc
 E/1kRi8tXsBX3c9NEifPXCY0x+MWpKneN4+fLc/Br0bW8d0rFH+NoFs2L30WHsHT+G9q
 6IKr0rZ04Hrd8+CLZjPa65go57Dr5Mz/sqjuCMYTyElbpK0OMNbD98lbDVO5MorNvUJd
 ONEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=7gyyexDsRaXu4dKFSDWHTSXWbmsJt0mE9VlTtC+nH2g=;
 b=pLSYhBAQoXcMc5QcUnLJ1/sig2QS/yWcoHMeg6Cpj21gH3gqUDST7IUSBZE2yCdSDz
 X3FmrfK8bcCtLFLVcywcx8W1bSOZMRMmB2mFKNMW8XUgzZrblmujyvTceeunOWBgkTyz
 +6Tw4/ZRKx+l7HFBcpNsjIuZVGyyZRYq3KPZqkICH1dyR3BMX0iqA67VEx69cMt/IZ1J
 eIqcWFiuxZZHYR9aJRMjpQ0HoH/ueOhI1yPs++axdhQF5K71JTyObbM+LfrpANDv2x8C
 ldBysLBKoefmEC0psyDB+y3BK7dkvBrBY2ageAoMjxNuWxL1RsWyc5PFTAQu9UfG4ncx
 9Jsg==
X-Gm-Message-State: AOAM530C/2I8wEkHqv6wH0fJN7s6TIRB3heG2Oni3c52ZRoKgx1rNXHt
 VyXX7SQdUG4NHlGDL6rBxD+JY99BD7B8Sz4ubCmq71wkRtI=
X-Google-Smtp-Source: ABdhPJzRDMOkm7CzlmtU7O1vZ4LtfOvWMz6boQJfzRsHQPCuR8JL4cgdGm+4B/XlhZ/eRojc60d1mVH6/NGIUNzoDhc=
X-Received: by 2002:a25:e7d5:: with SMTP id
 e204mr29571980ybh.210.1643634971266; 
 Mon, 31 Jan 2022 05:16:11 -0800 (PST)
MIME-Version: 1.0
References: <CAA93jw4VU4jyjM463B6yYD_y-Nik9WMVjpD1QWs_=dcU1sj97A@mail.gmail.com>
 <5728b3b1-d851-7c6f-c2d5-334be177bd94@phrozen.org>
In-Reply-To: <5728b3b1-d851-7c6f-c2d5-334be177bd94@phrozen.org>
From: =?UTF-8?B?0JrQuNGA0LjQu9C7INCb0YPQutC+0L3QuNC9?= <klukonin@gmail.com>
Date: Mon, 31 Jan 2022 16:15:45 +0300
Message-ID: <CALYz8youxbF527uC8WUNu9QtFax2ZHYW0b8WtJXbYdBKqPgXDg@mail.gmail.com>
To: John Crispin <john@phrozen.org>
Subject: Re: [Cake] [Make-wifi-fast] starlink lede
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

aHR0cHM6Ly9naXRodWIuY29tL1NwYWNlRXhwbG9yYXRpb25UZWNobm9sb2dpZXMvc3Rhcmxpbmst
d2lmaS1nZW4yL2Jsb2IvbWFpbi9vcGVud3J0L2RsL01UNzYxNV9NVDc2MjJfTGludXhBUC50YXIu
YnoyP3Jhdz10cnVlCgpTb3VyY2UgY29kZSB3aXRoIGEgZ2l0IGhpc3RvcnkuCk5pY2UhCgpCZXN0
IFJlZ2FyZHMsCkx1a29uaW4gS2lyaWxsCgrQv9C9LCAzMSDRj9C90LIuIDIwMjIg0LMuINCyIDE2
OjEwLCBKb2huIENyaXNwaW4gPGpvaG5AcGhyb3plbi5vcmc+Ogo+Cj4KPiBPbiAzMS4wMS4yMiAx
Mzo0MCwgRGF2ZSBUYWh0IHdyb3RlOgo+ID4gT2YgY291cnNlIEkgbm8gbG9uZ2VyIHJlbWVtYmVy
IHdoYXQgdGhlIHN0YXRlIG9mIGNha2Ugd2FzIGF0IHRoaXMKPiA+IHBvaW50LCBub3IgdGhlIG10
NzYgd2lmaSBjb2RlLCBhbmQgaGF2ZSBubyBpZGVhIGhvdyB3ZWxsIG1lZGlhdGVrJ3MKPiA+IGRl
dmtpdCBrZWVwcyB1cC4uLgo+ID4KPiA+IGh0dHBzOi8vZm9ydW0ub3BlbndydC5vcmcvdC9zdGFy
bGluay13aWZpLXJvdXRlci0yLXJ1bnMtbGVkZS8xMTg4NDQKPiA+Cj4KPiB0aGUgR1BMIGRyb3Ag
ZG9lcyBub3QgdXNlIHRoZSBtdDc2IGRyaXZlciBidXQgdGhlIFNESyBkcml2ZXIuCj4gICAgICAg
ICBKb2huCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
PiBNYWtlLXdpZmktZmFzdCBtYWlsaW5nIGxpc3QKPiBNYWtlLXdpZmktZmFzdEBsaXN0cy5idWZm
ZXJibG9hdC5uZXQKPiBodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9tYWtl
LXdpZmktZmFzdApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xp
c3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==
