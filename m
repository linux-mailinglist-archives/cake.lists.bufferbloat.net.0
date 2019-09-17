Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FCF4B50ED
	for <lists+cake@lfdr.de>; Tue, 17 Sep 2019 17:03:22 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 842A53CB38;
	Tue, 17 Sep 2019 11:03:20 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1568732600;
	bh=WaKV8n/+M9TULr0jYOmVJvENCFjHN5y7N6K3LxOFMg4=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=mo3Y99ZoaTozZLTyisTYVY/3FWT25dH6CXr+3Ty0zmVeWPRn0SYlCw4ufrL5PPJYj
	 rs+9B8Ss2KcsoiYCyk5oVSF87yc9nK/m5TuBB2mnjJmyj0Ws8ZSDW7nHqzKHUJDG43
	 YFY1gNSDChsIABEsqKM2+KH7Yf8o39nBRCiiZpb9Fwt7IOW23Fn//IbJa9+cv/UXP5
	 JAkRRuDbtBSWlkSSLbYzsRfDsNhquonr6ld+w7yHl0cavX0sO5s/ub8YgOABm/FjTU
	 HpU0N9kSivhxZ07v3hGJ1B0pXvR1+/urHyOSYXu6yYfMTw6WTohrHpfVU3+c+2Ly/V
	 v8afBcImWpfpg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id AF6013B29E
 for <cake@lists.bufferbloat.net>; Tue, 17 Sep 2019 11:03:19 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1568732599;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=E4BiEmA9qHDgEGOg87p0Mmc0tsCVthSSQchzy+wGKSQ=;
 b=J4q259C8kM0VawqaclHQWIhykbMr++YfBbjtKzPzTR3VxGBnheahWcwFNlEo8xz6Y1IXTP
 5TOC9FYIcYqHrTB9yBRMAAuaf2IESD4Nm7uyu9IL2CPXkuzDFKAh8i0emdl8KJVh58O+oa
 jzME69m7KCxO9sD9xbPj9/QsOz8Cbrc=
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-295-Ic8WJ3ThNvKrocW_jYEmSA-1; Tue, 17 Sep 2019 11:03:17 -0400
Received: by mail-ed1-f72.google.com with SMTP id j8so2362816edl.11
 for <cake@lists.bufferbloat.net>; Tue, 17 Sep 2019 08:03:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=E4BiEmA9qHDgEGOg87p0Mmc0tsCVthSSQchzy+wGKSQ=;
 b=LZtxhq8cVb+ZQ6rCFVo1PRLgjKZnVfqGiNkxAM5MAHv4kSCk/t5Blc0Dvp2Bq3w1sg
 wM3pj1NMq3F4hNCyS+XKL9bmqXua4qC8VhuWHGcTN4FeAq3R+7zdKc9wlIat/0vjuzsx
 h7Ez8MD5A9v0/eee3PjYF251G5xgjrZvMGNgQTbf7vp+5amY322W5QVIRm2AUB2nlV44
 P9mr0uYDWpTRUCWDu9DlomMRScVjAZNliwTj5irLigHTETpmdjhO/8Mh+Pcj7rjQgU5c
 EFqPM+pnPRlfySHNGqpaWtDE0HDJWn3aaGhymQAqOpqeW1x8RgphlWHiCW/GieYgEz4K
 pM6A==
X-Gm-Message-State: APjAAAXxGRk5lxoKNSmavj3riUSbtL3rT+xemxLkSl+m05GwebcbvHit
 RVBUfSAOSSM/cnwaB6uHRBjgsof9D3iqUDF3bgUyK2nQWt3sRwm9o+XIGUNmQdH42XLGhLbuw0r
 eP1+r2E+ozyLHDZJAnCparQ==
X-Received: by 2002:a17:906:4f0e:: with SMTP id
 t14mr5034172eju.47.1568732596425; 
 Tue, 17 Sep 2019 08:03:16 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz7ee8ca+hR/q5dBvXx7ACn905X/7KFv+vpcM3I2m1Y2XT/abnLvyZ6Jms7Ai7vaBZmUQcYIQ==
X-Received: by 2002:a17:906:4f0e:: with SMTP id
 t14mr5034154eju.47.1568732596216; 
 Tue, 17 Sep 2019 08:03:16 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([2a00:7660:6da:443::2])
 by smtp.gmail.com with ESMTPSA id p15sm205128ejr.50.2019.09.17.08.03.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Sep 2019 08:03:12 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id DC406180646; Tue, 17 Sep 2019 11:40:23 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Sebastian Gottschall <s.gottschall@newmedia-net.de>,
 cake@lists.bufferbloat.net
In-Reply-To: <edee31d8-aa60-28d2-be83-38c85f1f0e6d@newmedia-net.de>
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
X-Clacks-Overhead: GNU Terry Pratchett
Date: Tue, 17 Sep 2019 11:40:23 +0200
Message-ID: <87r24fjm60.fsf@toke.dk>
MIME-Version: 1.0
X-MC-Unique: Ic8WJ3ThNvKrocW_jYEmSA-1
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
czoNCg0KPiBtb3JlIHNpbXBsZSBwYXRjaA0KPg0KPiAtLS0gc2NoX2Nha2UuY8KgIChyZXZpc2lv
biA0MTA1MSkNCj4gKysrIHNjaF9jYWtlLmPCoCAod29ya2luZyBjb3B5KQ0KPiBAQCAtMjY5MSw3
ICsyNjkxLDcgQEANCj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBkb19kaXYodCwg
VVNFQ19QRVJfU0VDIC8gNCk7DQo+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcS0+
YnVmZmVyX2xpbWl0ID0gbWF4X3QodTMyLCB0LCA0VSA8PCAyMCk7DQo+ICDCoMKgwqDCoMKgwqDC
oCB9IGVsc2Ugew0KPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBxLT5idWZmZXJfbGlt
aXQgPSB+MDsNCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcS0+YnVmZmVyX2xpbWl0
ID0gNFUgPDwgMjA7DQo+ICDCoMKgwqDCoMKgwqDCoCB9DQo+DQo+ICDCoMKgwqDCoMKgwqDCoCBz
Y2gtPmZsYWdzICY9IH5UQ1FfRl9DQU5fQllQQVNTOw0KDQpBcyBKb25hdGhhbiByZW1hcmtlZCwg
dGhlIHJpZ2h0IHRoaW5nIHRvIGRvIGhlcmUgaXMgdG8gdXNlIHRoZQ0KbWVtb3J5X2xpbWl0IHBh
cmFtZXRlciB0byBzZXQgYSBkaWZmZXJlbnQgbGltaXQgd2hlbiB5b3Ugc2V0dXAgdGhlIHRyZWUu
DQoNClN0aWxsLCBJIGNvdW50IDM1IGluc3RhbmNlcyBvZiBDQUtFIGluIHlvdXIgc2V0dXA7IGV2
ZW4gd2l0aCBhIDRNQiBsaW1pdA0KYXBpZWNlLCB0aGF0IGlzIGEgdG90YWwgb2YgMTQwIE1CIG9m
IHBvdGVudGlhbCBwYWNrZXQgbWVtb3J5LiBZb3UnZCBuZWVkDQp0byBzZXQgaXQgYXMgbG93IGFz
IDEgb3IgMiBNQiB0byBiZSBjb21wbGV0ZWx5IHN1cmUgdGhhdCB5b3Ugd29uJ3QgcnVuDQpvdXQg
b2YgbWVtb3J5IGlmIHRoZXkgYXJlIGFsbCBmdWxsLi4uDQoNCi1Ub2tlDQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtl
QGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0
aW5mby9jYWtlCg==
