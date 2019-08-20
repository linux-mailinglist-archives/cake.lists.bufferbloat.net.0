Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id 53DF6966F3
	for <lists+cake@lfdr.de>; Tue, 20 Aug 2019 18:58:21 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 3FB943CB38;
	Tue, 20 Aug 2019 12:58:20 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1566320300;
	bh=RHVS54G65Lzma/UDioCWlmst6wPldEJ+RMZqDS1DVos=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZCBB3/ymubbQzfD+S/53UMNJ+wqVS5s6JCXyDmXioNy/nF5itKSo3ZYT3qJde9S3T
	 wpoKjt3uaYdP4TK5PkDy2Cb9QnKWPdu4R4fT+HXdQhR96BuIq81MCROUD/kiFC6r6b
	 I0+2war+59whmtn6pfdRho5eA0qNTX7uaKIMcCB1G4LBkG7vi5oITVIHT+nvQRoai4
	 AuvU+JlLLNWDN9BpOBh1lmWY6VfsU6xRMT7V43wtw2c+S17G2iaZ2obTbtjqY2AdPd
	 iErTz1Zw6LPA2Cy6XMFWnJPVYXTfihD42wfqYon85h045//4SBBLV4ueSySAAjY8Ge
	 FWmwVV20GcQoQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 285D13B2A4
 for <cake@lists.bufferbloat.net>; Tue, 20 Aug 2019 12:58:19 -0400 (EDT)
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 666B86E77E
 for <cake@lists.bufferbloat.net>; Tue, 20 Aug 2019 16:58:18 +0000 (UTC)
Received: by mail-ed1-f69.google.com with SMTP id i10so4495993edv.14
 for <cake@lists.bufferbloat.net>; Tue, 20 Aug 2019 09:58:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=dj9JY7MeWdg/4FHr+R8oDvvSzmZKT5RgmpmGGbCe4D4=;
 b=kaHZufM3qmtscVkfXMsshywwSQN9kv8BML9baPL1ZqSJ1jesMwBkgpVFydscz+NlUQ
 be49yxP5rYxAJbDd8lyOrLmMcQUsNwrlsmAVYiEk//JQasRkTldXeTpIzrLA7lTzhHBu
 885RkKYP4ZAq2MEl3M3fCdT/p+U/4b2cdAOudVLBspk9C+1QhZquG+DWPguqiiwkRujL
 OYNF3ECelQCXyP/zx6QlNTi2vwLlydLZ9adnut53D4DGleWgwZNumHmM55Q4ldx35YY2
 qQlBBjj6XJCahBPFXrWm+oijmDP4vzZRVpDDlEhnRYdip3QNKT9ecfKq0alfun/3ApsC
 5GvA==
X-Gm-Message-State: APjAAAVsBs3wKjlJcQ543AFq6ShBC62sOHbhgoGUE+ubF8bQ7MZMaY2o
 YZh+C1T21bcr/f/Xxf7/0EoSXaoWn/Da7Kp3IIfIr1jkjsv8llEOHb6mA7XmPoeieuMPKwPKs20
 8uyBJNZc9glMBrJFWCufroA==
X-Received: by 2002:a17:906:229b:: with SMTP id
 p27mr27418806eja.266.1566320296698; 
 Tue, 20 Aug 2019 09:58:16 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxOFPYLpNFiuvlmp94OleBtaIKdBFvtKkqf0Mou9hyg2I/lRy0F/Q0VwWN2hXPRVGzu7A6Leg==
X-Received: by 2002:a17:906:229b:: with SMTP id
 p27mr27418787eja.266.1566320296515; 
 Tue, 20 Aug 2019 09:58:16 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([2a00:7660:6da:443::2])
 by smtp.gmail.com with ESMTPSA id e24sm2707853ejb.53.2019.08.20.09.58.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Aug 2019 09:58:15 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 681BB181CE4; Tue, 20 Aug 2019 18:58:15 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Sebastian Gottschall <s.gottschall@newmedia-net.de>,
 Dave Taht <dave.taht@gmail.com>
In-Reply-To: <384866b4-4c91-cf2c-c267-ee4036e5fbf7@newmedia-net.de>
References: <CAA93jw4FDjYjxxStyzMu8eCz_6Ezcumg-iZaYeM3kBZ5da8MBQ@mail.gmail.com>
 <fc64c772-d85c-deba-a0e4-4e590cfb76ee@newmedia-net.de>
 <CAA93jw4Fm=uY08A3XHWh3d=OKNfraCeYHwFGtAdPH7a51vG6WA@mail.gmail.com>
 <384866b4-4c91-cf2c-c267-ee4036e5fbf7@newmedia-net.de>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Tue, 20 Aug 2019 18:58:15 +0200
Message-ID: <87wof7sriw.fsf@toke.dk>
MIME-Version: 1.0
Subject: Re: [Cake] cake in dd-wrt
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
Cc: "cake@lists.bufferbloat.net >> Cake List" <cake@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

U2ViYXN0aWFuIEdvdHRzY2hhbGwgPHMuZ290dHNjaGFsbEBuZXdtZWRpYS1uZXQuZGU+IHdyaXRl
czoKCj4gQW0gMjAuMDguMjAxOSB1bSAxODoyNCBzY2hyaWViIERhdmUgVGFodDoKPj4gT24gVHVl
LCBBdWcgMjAsIDIwMTkgYXQgNTowOSBBTSBTZWJhc3RpYW4gR290dHNjaGFsbAo+PiA8cy5nb3R0
c2NoYWxsQG5ld21lZGlhLW5ldC5kZT4gd3JvdGU6Cj4+PiA6LSkgaSdtIGZvbGxvd2luZyB0aGlz
IGxpc3QgYW5kIHllcyB3ZSBhcmUgd29ya2luZyBvbiBicmluZ2luZyBjYWtlIGluIDotKQo+PiBZ
ZWEhIHRoeCBmb3IgYmVpbmcgb24gdGhlIGxpc3QhCj4+Cj4+PiBpcyB0aGVyZSBhbnkgcXVlc3Rp
b24gYmVoaW5kIHRoaXMgbGluayBmcm9tIHlvdXIgc2lkZT8KPj4gSSBqdXN0IHdhbnRlZCB0byBt
YWtlIHBlb3BsZSBoZXJlIGF3YXJlIHRoYXQgaXQgd2FzIGhhcHBlbmluZy4KPj4KPj4gSXMgdGhl
cmUgYSBidWlsZCBub3c/Cj4gdGhlIGZpcnN0IGJ1aWxkcyB3aXRoIGNha2UgYXJlIGFscmVhZHkg
b3V0IHllcywgYnV0IHVuZmluaXNoZWQuIHdlIAo+IHN0YXJ0ZWQgdGhlbiB0byByZXdyaXRlIG1h
am9yIHBhcnRzIG9mIHRoZSBxb3MgY29kZS4gaSBleHBlY3QgdG8gcHVzaCBvdXQKPiBhIG5ldyBi
dWlsZCB0b21vcnJvdy4gaXQgd2lsbCBzdGlsbCBub3QgdXNlIHRoZSBmdWxsIHBvdGVudGlhbCBv
ZiBjYWtlIAo+IHNpbmNlIHdlIGhhdmUgdG8gYnJpbmcgYWxsIHRvZ2V0aGVyIHdpdGggdGhlIHBy
aW9yaXR5IGFuZCBuZHBpIGFuZCAKPiBmaWx0ZXIgYmFzZWQgZmlsdGVyIHRvZ2V0aGVyCj4gd2l0
aCB0aGUgY2FrZSBzY2hlZHVsZXIuCgpBcmUgeW91IGF3YXJlIHRoYXQgeW91IGNhbiB1c2UgdGhl
IHRjIGZpbHRlcmluZyBmdW5jdGlvbmFsaXR5IHRvIG1ha2UKdGhpcyBwbGF5IGFsb25nIHdpdGgg
Y2FrZSdzIHRpZXJzPwoKPj4gQXJlIHlvdSB1c2luZyB0aGUgb3V0IG9mIHRyZWUgdmVyc2lvbiBv
ciBtYWlubGluZT8gT3V0IG9mIHRyZWUgaGFzCj4+IHNvbWUgZXhwZXJpbWVudGFsIFNDRSB3b3Jr
Cj4+IHRoYXQgSSdkIGxvdmUgdG8gc2VlIHRlc3RlZCBhdCBtb3JlIHNjYWxlIGJ1dCBub3QgYWN0
dWFsbHkgc2hpcHBlZCBhdCB0aGlzIHRpbWUuCj4gb3V0IG9mIHRyZWUgc3RyYWlnaHQgZnJvbSBn
aXQgd2l0aCBtb2RpZmljYXRpb25zIHRvIGJlIGNvbXBhdGlibGUgdG8gbXkgCj4ga2VybmVscyBz
aW5jZSB5b3VyIGNvbXBhdGlibGl0eSBsYXllciBpcyBtbWggbm90IHBlcmZlY3QuCgpQbGVhc2Ug
ZG8gZmVlbCBmcmVlIHRvIHNlbmQgYSBwdWxsIHJlcXVlc3Qgd2l0aCB5b3VyIGZpeGVzIGZvciB0
aGUKY29tcGF0aWJpbGl0eSBzdHVmZiEgOikKCi1Ub2tlCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVm
ZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK
