Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DB19B3AEB
	for <lists+cake@lfdr.de>; Mon, 16 Sep 2019 15:05:02 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 219373CB40;
	Mon, 16 Sep 2019 09:05:01 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1568639101;
	bh=XgNLzcp2kqqrf3WjP4X4Dlk8LpgFgh9lIx/JCXU30VQ=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=JKuWGPbQ7N2Qu8ymTlB7qx4fyPMpVCpAAEW2GuM//irjoWHpMP5RVytZOwuQk4QDr
	 Fe1HoIlLUgBbJGOtPHCSQ05hPoOEFOKpG4DYQuoCH6Ay1Cy5fLxrYM8QvZzMnjESS8
	 MB+BVpkyXW3hU6cRjIT1761c9AVLbu67lJPuRL4vZBgi6v8hqX4Vel6jOKVkp83/Kf
	 EF+0Rjr+tR7W9J+dAbCnf7x0wTz6tGivLxhJpH4INXFT2HxxKGR01SKSny3E5tuSJy
	 RyBx7lIs5vewMV1fLBWKKMGPYcpZoXrexV/T4F5SdqgA42kpMEZEl56F4UkiC3kcBc
	 EdHVmdaNHm0aQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 9B42C3B2A4
 for <cake@lists.bufferbloat.net>; Mon, 16 Sep 2019 09:04:59 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1568639099;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=txiAh+0As5a9z22oYJelYi0M355fCTmJqeBazBUTOxk=;
 b=LQMX4rd84nBjnd4R5aT1WAxgQwwiQTFTM2WqdhyvBJRsKlzLUHL57kjiastHuB/UO5nA8I
 f8s+yV0oHFPyi39cGA7u4Np1Ei8NzGGjYHKBjpKI08d+y0peXEOR13z7cQBzFW7alduFO8
 EccW/OaOtkNQUM0NRaysJWGYdNZen+s=
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-9-ydJ0kqBPPQ-sf7jOi9pGWQ-1; Mon, 16 Sep 2019 09:04:57 -0400
Received: by mail-ed1-f70.google.com with SMTP id l11so18821737edv.8
 for <cake@lists.bufferbloat.net>; Mon, 16 Sep 2019 06:04:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=5TYoXR0WC07Xv2MveN+U0XekU4ypCZV1SViq5zwUBgs=;
 b=qv0aeHWH/c+0WjFrrrCWfZu4yT2YlrJkVpAlebtiKQn60mPoF5I3xaC/Le6AWRkDJf
 H+dqadDbinJPbpjQk2wOfuAcyWH13Ovp+qjNBmKRaBp1nlW1jYkMmaJfs++cs+6hpTbB
 toPOl0ql7IQvMYVsUs8FoajC+br0pUP/qaiVJnR2uz/XTQu5pEZIIPNzt/SEb06IIAbq
 KXL7xZU/U8691KBvLacFkAEkzULMt1xdf4bWdRt+EiC6CH2UY6yjI7cMnafcJsCTN924
 Rh5ozwhsjUnEOVTc5BszjD4WzkGZluwmUQmWVhBw/rKQfBsR02j/Yb2DDsPutPgrUXXk
 Y+kQ==
X-Gm-Message-State: APjAAAUrsNYzaXjEqzpSZDmhZwGwlE6YSLm+Lvy1pDCvpqbh0C+z2wtr
 KKM4VuCa9WDNJdqn9vlaZOhETR6z6mn8AzPX10E/BSU22yz+1eYtmbFtIUtPPECK8hj1Ey252s9
 0uuV4ds+u4/BVpHC4JU6TIA==
X-Received: by 2002:a50:f9c7:: with SMTP id a7mr22418048edq.157.1568639096483; 
 Mon, 16 Sep 2019 06:04:56 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxjLmhYVeLUPYvXekjbVwKbNEbYnqRJE90C8EtaGTheXZDNECVBuycAcXd1lt/NozK1QPVbTA==
X-Received: by 2002:a50:f9c7:: with SMTP id a7mr22418035edq.157.1568639096345; 
 Mon, 16 Sep 2019 06:04:56 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk (borgediget.toke.dk.
 [85.204.121.218])
 by smtp.gmail.com with ESMTPSA id rs25sm711633ejb.14.2019.09.16.06.04.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Sep 2019 06:04:51 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 953861800B9; Mon, 16 Sep 2019 14:08:47 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Sebastian Gottschall <s.gottschall@newmedia-net.de>,
 cake@lists.bufferbloat.net
In-Reply-To: <057ea708-6797-23f5-ef01-9d3d7b002578@newmedia-net.de>
References: <ac3db996-6769-4e38-b19b-eaa08ac40cd5@www.fastmail.com>
 <2825CE14-2109-4580-A086-9701F4D3ADF0@gmail.com>
 <18b1c174-b88d-4664-9aa8-9c42925fc14c@www.fastmail.com>
 <E0C914DE-893D-4B14-9179-F10EB595DE0C@gmail.com>
 <9a90111b-2389-4dc6-8409-18c40f895540@www.fastmail.com>
 <43F02160-E691-4393-A0C0-8AB4AD962700@gmail.com>
 <a75b079e-8a29-46f1-9890-7eb73e18b0f2@www.fastmail.com>
 <E975CC03-A531-4450-A896-5C3921A9D063@gmail.com>
 <057ea708-6797-23f5-ef01-9d3d7b002578@newmedia-net.de>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Mon, 16 Sep 2019 14:08:47 +0200
Message-ID: <878sqomoj4.fsf@toke.dk>
MIME-Version: 1.0
X-MC-Unique: ydJ0kqBPPQ-sf7jOi9pGWQ-1
X-Mimecast-Spam-Score: 0
Subject: Re: [Cake] cake memory consumption
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

U2ViYXN0aWFuIEdvdHRzY2hhbGwgPHMuZ290dHNjaGFsbEBuZXdtZWRpYS1uZXQuZGU+IHdyaXRl
czoKCj4gYWZ0ZXIgd2UgZm91bmQgb3V0IHNlcmlvdXMgb3V0IG9mIG1lbW9yeSBpc3N1ZXMgb24g
c21hbGxlciBlbWJlZGRlZCAKPiBkZXZpY2VzICgxMjggbWIgcmFtKSB3ZSBtYWRlIHNvbWUgYmVu
Y2htYXJrcyB3aXRoIGRpZmZlcmVudCBzY2hlZHVsZXJzCj4gd2l0aCB0aGUgcmVzdWx0IHRoYXQg
Y2FrZSB0YWtlcyBhIHNlcmlvdXMgYW1vdW50IG9mIG1lbW9yeS4gd2UgdXNlIHRoZSAKPiBvdXQg
b2YgdHJlZSBjYWtlIG1vZHVsZSBhbmQgd2UgdXNlIGl0IGNsYXNzIGJhc2VkIHNpbmNlIHdlIGhh
dmUgY29tcGxleCAKPiBtZXRob2RzIG9mIGRvaW5nIHFvcyBwZXIgaW50ZXJmYWNlLCBwZXIgbWFj
IGFkZHJlc3NlIG9yIGV2ZW4gcGVyIAo+IGlwL25ldHdvcmsuIHNvIGl0cyBub3QganVzdCBzaW1w
bGUgY2FrZSBvbiBhIHNpbmdsZSBpbnRlcmZhY2Ugc29sdXRpb24uIAo+IHdlIG1hZGUgc29tZSBi
ZW5jaG1hcmtzIHdpdGggZGlmZmVyZW50IHNjaGVkdWxlcnMuIGRvZXMgYW55Ym9keSBoYXZlIGEg
Cj4gc29sdXRpb24gZm9yIG1ha2luZyB0aGF0IGJldHRlcj8KPgo+IEhUQi9GUV9DT0RFTCAtLS0t
LS0t74OgIDYyTQo+IEhUQi9TRlEgLS0tLS0tLe+DoCA2Mk0KPiBIVEIvUElFIC0tLS0tLS3vg6Ag
NjJNCj4gSFRCL0ZRX0NPREVMX0ZBU1QgLS0tLS0tLe+DoCA2N00KPiBIVEIvQ0FLRSAtLS0tLS0t
74OgMTExTQo+Cj4gSEZTQy9GUV9DT0RFTF9GQVNUIC0tLS0tLS3vg6AgNDdNCj4gSFRCL1BJRSAt
LS0tLS0t74OgIDQ5TQo+IEhUQi9TRlEgLS0tLS0tLe+DoCA1ME0KPiBIRlNDIC9GUV9DT0RFTCAt
LS0tLS0t74OgIDUyTQo+IEhGU0MvQ0FLRSAtLS0tLS0t74OgMTA5TQoKSG93IGFyZSB5b3UgbWVh
c3VyaW5nIHRoZSBtZW1vcnkgdXNhZ2UsIGFuZCB3aGF0IGlzIHlvdXIgZnVsbCBjb25maWcgZm9y
CmVhY2ggc2V0dXA/IDopCgotVG9rZQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5u
ZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=
