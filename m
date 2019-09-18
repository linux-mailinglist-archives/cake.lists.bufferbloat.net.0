Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id 227A7B6154
	for <lists+cake@lfdr.de>; Wed, 18 Sep 2019 12:22:17 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 0C26A3CB38;
	Wed, 18 Sep 2019 06:22:16 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1568802136;
	bh=qkVBa5Gt130OpS9yAMPz9jF0+GvoiHvDzmFK1ZnkiSk=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=BcvL9qX1d6UBlZtYIdw0WE4uoq67dkEUNv95lGPoUzvK45O/m2R79MSm9C+FcW+lF
	 ajoe3XAiHMG4iEaIITF5FVAyemyQjiVb1wuKlEBDlos2zc3zRC3On/Wl2ljA9zOjJG
	 bGKp58tDgyD3ViEd5SWn/zTPPgEG9a39WW3yAl6dKlIG3qtsCS+v3FK+ZDLcOwz5tL
	 gcGMj57QDFojBM4bTBh8Ls6tWMQb6n1sG2o3YPefuHz69mwfqml7ZWfmtNwh0EGktG
	 sqv9Xa0vPca4hPLfz4/Nx9F13SLfAeCUTWmIvYT+OA579w7j8g0GcgVx8uvYiCVQVS
	 ilro4yXDjXqyw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [207.211.31.81])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 65D4F3B29E
 for <cake@lists.bufferbloat.net>; Wed, 18 Sep 2019 06:22:15 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1568802134;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=clSZVsh/TxaJuw71gW1df2Z0yaQ9DUJm4AWP/Hu8nwA=;
 b=ERfrD20xw0OfJPU/7ggiTZ5eb2Y7klTt7YCc9HEpC6OsxF8zKzFBf3/KK37DbLK5j/6161
 9yCRewgggwPd7tM2+O02vRGZHdvJHejaf/UorViXkX/TLKZfK3kcRqeasCUbYFXfj+w7Ey
 FtxIXvxc0Khsr3McGAmQ8pJ3iHJRtlk=
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-69-tYD1CoUKP4aQb2g8xrKZ7g-1; Wed, 18 Sep 2019 06:22:13 -0400
Received: by mail-ed1-f71.google.com with SMTP id c23so4095498edb.14
 for <cake@lists.bufferbloat.net>; Wed, 18 Sep 2019 03:22:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=clSZVsh/TxaJuw71gW1df2Z0yaQ9DUJm4AWP/Hu8nwA=;
 b=bWD4+SsXb4wln6LL0BFD/i1/8wOHVgg3USJsY4+cW/Ul5PEQUfjk8W03AFaJr445WM
 EV4xQgvmtmW+S4fT0bt07MeFuGUNsIWtFE/y2dUMv7IM33E9NmPjzG83d/M23Y2Gq2/X
 KzFdzNmG37YXsQsLz71HskP7yZEb0WJpDZgtYmzBLInKqz3b6Mqbn/3Qc+UM3hptVbev
 UuyXKg+cf7rB5Gb/iXpm0gwcJD3kA/XdoztliP4gojrVxdNY97Tl3t/EjHvokfMZ8c9o
 GVWmL0WiYNWg3tLO0tw6cSStDbOAbR3OSPA8vBrNRFxcw9ngSLZ6RkJGOsyFu+ZimUq1
 9ZIA==
X-Gm-Message-State: APjAAAWA+oyX4vaR4xjQVL5cesxp9tZcM2cTaIIw8jDWB0wJSKlRsMSx
 wu+c5ej4vrjqKQdYAX3ootrCYRqxtpWE00U37I5lWgkyuvil5VKAVKbRG9vJ65r/ljvAXGf8ubo
 K8tjWOmuY0RnTNHQkPnkpXw==
X-Received: by 2002:a17:906:4541:: with SMTP id
 s1mr8853442ejq.210.1568802132144; 
 Wed, 18 Sep 2019 03:22:12 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxUBYHKzqwMKGRZFov7vHA1JX6DHPDns7FO8WAYJLgj42Err48vrp3tx9Qct7Oi2rdyefhDOA==
X-Received: by 2002:a17:906:4541:: with SMTP id
 s1mr8853431ejq.210.1568802131947; 
 Wed, 18 Sep 2019 03:22:11 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk (borgediget.toke.dk.
 [85.204.121.218])
 by smtp.gmail.com with ESMTPSA id t14sm613456eju.24.2019.09.18.03.22.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Sep 2019 03:22:11 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id C2F5718063E; Wed, 18 Sep 2019 12:22:10 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Sebastian Gottschall <s.gottschall@newmedia-net.de>,
 cake@lists.bufferbloat.net
In-Reply-To: <342e4751-4c8c-1ebd-2862-6216f52c621e@newmedia-net.de>
References: <ac3db996-6769-4e38-b19b-eaa08ac40cd5@www.fastmail.com>
 <2825CE14-2109-4580-A086-9701F4D3ADF0@gmail.com>
 <18b1c174-b88d-4664-9aa8-9c42925fc14c@www.fastmail.com>
 <E0C914DE-893D-4B14-9179-F10EB595DE0C@gmail.com>
 <9a90111b-2389-4dc6-8409-18c40f895540@www.fastmail.com>
 <43F02160-E691-4393-A0C0-8AB4AD962700@gmail.com>
 <a75b079e-8a29-46f1-9890-7eb73e18b0f2@www.fastmail.com>
 <E975CC03-A531-4450-A896-5C3921A9D063@gmail.com>
 <057ea708-6797-23f5-ef01-9d3d7b002578@newmedia-net.de>
 <878sqomoj4.fsf@toke.dk>
 <b52b59ac-c5f7-8015-c7dc-b82406b9002c@newmedia-net.de>
 <87h85cl4qk.fsf@toke.dk>
 <edee31d8-aa60-28d2-be83-38c85f1f0e6d@newmedia-net.de>
 <87r24fjm60.fsf@toke.dk>
 <3449acf8-e700-6b50-544f-b272165ad0e6@newmedia-net.de>
 <877e66hqvd.fsf@toke.dk>
 <342e4751-4c8c-1ebd-2862-6216f52c621e@newmedia-net.de>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Wed, 18 Sep 2019 12:22:10 +0200
Message-ID: <87y2ylhpkd.fsf@toke.dk>
MIME-Version: 1.0
X-MC-Unique: tYD1CoUKP4aQb2g8xrKZ7g-1
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
czoKCj4gQW0gMTguMDkuMjAxOSB1bSAxMTo1MyBzY2hyaWViIFRva2UgSMO4aWxhbmQtSsO4cmdl
bnNlbjoKPj4gU2ViYXN0aWFuIEdvdHRzY2hhbGwgPHMuZ290dHNjaGFsbEBuZXdtZWRpYS1uZXQu
ZGU+IHdyaXRlczoKPj4KPj4+IHRoZSBwcm9ibGVtIGlzLiBpIHRlc3RlZCByZXN0cmljdGluZyB0
aGUgbWVtb3J5IHRvIDQgbWIuIGJ1dCBpdCBzdGlsbAo+Pj4gcnVucyBvb20uIHNhbWUgbWVtb3J5
IGNvbnN1bXB0aW9uIGFuZCBmcm9tIHRoZSBxZGlzYyBzaG93IG91dHB1dCBpIGFsc28KPj4+IHNl
ZSB0aGF0IGp1c3QgYSBmZXcga2lsb2J5dGVzIGFyZSB1c2VkIGluIHRoYXQgcG9vbC4KPj4+IHNv
IHRoZSBwcm9ibGVtIHdpdGggY2FrZSBtdXN0IGJlIHNvbWV3aGVyZSBlbHNlLiBpdHMgbm90IHRo
ZSBidWZmZXIKPj4+IGxpbWl0LiBpIHNlZSB2YWx1ZXMgbGlrZSBtZW1vcnkgdXNlZDogMjIxNzZi
IG9mIDRNYiB3aGljaCBpcyByZWFsbHkKPj4+IG5vdGhpbmcuIG1vc3QgcWRpc2NzIGFyZSAwIGFu
ZCB1bnVzZWQgaW4gdGhhdCBzZXR1cAo+PiBIbW0sIHRoYXQgZG9lcyBzb3VuZCBvZGQuIEFyZSB5
b3Ugc2VlaW5nIHRoZSAidG90YWwgdXNlZCBtZW1vcnkiIGdvIHVwCj4+IGFzIHNvb24gYXMgeW91
IGxvYWQgdGhlIHFkaXNjcyAod2l0aG91dCBhbnkgdHJhZmZpYyk/Cj4gd2l0aG91dCB0cmFmZmlj
IG5vdGhpbmcgaGFwcGVucy4gc28gaXQgZ3Jvd3Mgb25seSBvbiB0cmFmZmljIGJhc2UuCj4+Cj4+
IERvZXMgdGhlIG1lbW9yeSBkcm9wIGRvd24gYWdhaW4gaWYgeW91IGNsZWFyIHRoZSBxZGlzYyBj
b25maWcgYW5kIGdvCj4+IGJhY2sgdG8gYW4gZnFfY29kZWwtYmFzZWQgb25lPwo+IGFjY29yZGlu
ZyB0byB0aGUgcmVwb3J0ZXIgeWVzLiBub3Qgc3VyZS4gbWF5YmUgaXRzIGp1c3QgYSBpc3N1ZSB3
aXRoZSAKPiB0aGUgb3V0IG9mIHRyZWUgY2FrZSB2YXJpYW50IG9uIHRoYXQgc3BlY2lmaWMga2Vy
bmVsLiBuZWVkIHRvZG8gbW9yZSAKPiByZXNlYXJjaCBoZXJlCgpZZWFoLCB0aGF0IGRvZXMgc291
bmQgZGVjaWRlZGx5IG9kZC4gV2UgcmVhbGx5IGFyZSBvbmx5IGFsbG9jYXRpbmcgYSBmZXcKaHVu
ZHJlZCBrIG9mIG1lbW9yeSBvbiBpbml0LCBzbyBpZiB0aGUgbWVtb3J5IHVzYWdlIGp1bXBzIGlt
bWVkaWF0ZWx5CnRoZXJlJ3Mgc29tZXRoaW5nIGZpc2h5IGdvaW5nIG9uIHNvbWV3aGVyZS4uLgoK
LVRva2UKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNh
a2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMu
YnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK
