Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id 17AAF967FA
	for <lists+cake@lfdr.de>; Tue, 20 Aug 2019 19:47:22 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 0AC5F3CB38;
	Tue, 20 Aug 2019 13:47:21 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1566323241;
	bh=mu+LdomOos82C6IG1TJkjNeEB7s1aLhAkRJgCcM0wpw=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Ya6VONKEGtBpbyd6G1D3SzxKNISyWhtkMrkxYmQ1WBJDIpKT3NpWKze1INsMfVEfw
	 veCIMcgSUhBOU3J1MxTMOhOwRto3C6/peVzQh8le9uE9cVlvdyyH6RX6isvH4MkJ8O
	 5UY9zNm5+jhJeepBE4I7D2PBlk02yZwKapDfuAMiT5jdM3mD1UPn52BCNeRjIDcQi5
	 tDMEc/YtOTj9nI9UawPmkbH3iljfaOfMcKuaeytkNicX6U5xJoDFMmh+LKCH/JqcdN
	 fG5FBo97on3JaearS826xoPsQ8TyM5v8MjYdsy+6fvVIzwtqdpsUoqp7KPPx0dWv/1
	 Aq/34c/7CDscw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id EC6143B2A4
 for <cake@lists.bufferbloat.net>; Tue, 20 Aug 2019 13:47:18 -0400 (EDT)
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id EDAD789AC2
 for <cake@lists.bufferbloat.net>; Tue, 20 Aug 2019 17:47:17 +0000 (UTC)
Received: by mail-ed1-f71.google.com with SMTP id n7so3855093edr.5
 for <cake@lists.bufferbloat.net>; Tue, 20 Aug 2019 10:47:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=l1ag/h1kQ8mbhE4SxQ0CPTmKesDb/dUgs5PXW7Ka8wk=;
 b=jtt0xOBSwbVKFeFOXkOl97K44NCtbsCuulWQ/gkaOnugUn33OGO93tYH7/ZDmONen1
 LZqrXbnHAAyQXWQiWJG/vVhJNcngUb9sLdGYrry5lfqnhUQdet5CnQMBkNnwsGTCrT7B
 Kld6T7dq0TO9/DumWSBXZgod01mTpF3GCDPHOMPl/UbwdPdHila9hqDXUTZQFrOHXbpY
 TJRFjGgNaA+PmedYfU2QjG3Kis+gu3s/XJd8lX7TAaCgnBYe6nPYvzNBf6SNjM/LMAlR
 kTHYG6C0qBBTrqqxuQ94w8hF3TA5xQaTiHLuK+WJ2d4BBjMaxam02P1wtAXXohVF+KiP
 r16Q==
X-Gm-Message-State: APjAAAVnVz2bdtA5ke17myQWVgVwDDyQkMynNHH5hWff6c1ttsP6Vk5V
 RCBw1byfNYWxYqm8jzHKXvrIk1evqcbcCEVeVuqndGNcSoRUtH/dlbdepGn7Ec2DUQyBV1rEAcE
 R53zc+eUgs0O4E6KAiRbM5Q==
X-Received: by 2002:a05:6402:1285:: with SMTP id
 w5mr32868342edv.36.1566323236625; 
 Tue, 20 Aug 2019 10:47:16 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw2BeIJG7RCH893/jtIFWvm0qp9biDkjd/2jRD16ZmmsYFxQWrJAeo1E+yHeyzBlGU5FeoMHA==
X-Received: by 2002:a05:6402:1285:: with SMTP id
 w5mr32868279edv.36.1566323235922; 
 Tue, 20 Aug 2019 10:47:15 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([2a00:7660:6da:443::2])
 by smtp.gmail.com with ESMTPSA id g3sm2628215ejj.69.2019.08.20.10.47.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Aug 2019 10:47:14 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 34792181CE4; Tue, 20 Aug 2019 19:47:14 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Sebastian Gottschall <s.gottschall@newmedia-net.de>,
 Dave Taht <dave.taht@gmail.com>
In-Reply-To: <6782ec15-30eb-63b0-f54f-376c5e6b840b@newmedia-net.de>
References: <CAA93jw4FDjYjxxStyzMu8eCz_6Ezcumg-iZaYeM3kBZ5da8MBQ@mail.gmail.com>
 <fc64c772-d85c-deba-a0e4-4e590cfb76ee@newmedia-net.de>
 <CAA93jw4Fm=uY08A3XHWh3d=OKNfraCeYHwFGtAdPH7a51vG6WA@mail.gmail.com>
 <384866b4-4c91-cf2c-c267-ee4036e5fbf7@newmedia-net.de>
 <87wof7sriw.fsf@toke.dk>
 <6782ec15-30eb-63b0-f54f-376c5e6b840b@newmedia-net.de>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Tue, 20 Aug 2019 19:47:14 +0200
Message-ID: <87tvabsp99.fsf@toke.dk>
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
czoKCj4gQW0gMjAuMDguMjAxOSB1bSAxODo1OCBzY2hyaWViIFRva2UgSMO4aWxhbmQtSsO4cmdl
bnNlbjoKPj4gU2ViYXN0aWFuIEdvdHRzY2hhbGwgPHMuZ290dHNjaGFsbEBuZXdtZWRpYS1uZXQu
ZGU+IHdyaXRlczoKPj4KPj4+IEFtIDIwLjA4LjIwMTkgdW0gMTg6MjQgc2NocmllYiBEYXZlIFRh
aHQ6Cj4+Pj4gT24gVHVlLCBBdWcgMjAsIDIwMTkgYXQgNTowOSBBTSBTZWJhc3RpYW4gR290dHNj
aGFsbAo+Pj4+IDxzLmdvdHRzY2hhbGxAbmV3bWVkaWEtbmV0LmRlPiB3cm90ZToKPj4+Pj4gOi0p
IGknbSBmb2xsb3dpbmcgdGhpcyBsaXN0IGFuZCB5ZXMgd2UgYXJlIHdvcmtpbmcgb24gYnJpbmdp
bmcgY2FrZSBpbiA6LSkKPj4+PiBZZWEhIHRoeCBmb3IgYmVpbmcgb24gdGhlIGxpc3QhCj4+Pj4K
Pj4+Pj4gaXMgdGhlcmUgYW55IHF1ZXN0aW9uIGJlaGluZCB0aGlzIGxpbmsgZnJvbSB5b3VyIHNp
ZGU/Cj4+Pj4gSSBqdXN0IHdhbnRlZCB0byBtYWtlIHBlb3BsZSBoZXJlIGF3YXJlIHRoYXQgaXQg
d2FzIGhhcHBlbmluZy4KPj4+Pgo+Pj4+IElzIHRoZXJlIGEgYnVpbGQgbm93Pwo+Pj4gdGhlIGZp
cnN0IGJ1aWxkcyB3aXRoIGNha2UgYXJlIGFscmVhZHkgb3V0IHllcywgYnV0IHVuZmluaXNoZWQu
IHdlCj4+PiBzdGFydGVkIHRoZW4gdG8gcmV3cml0ZSBtYWpvciBwYXJ0cyBvZiB0aGUgcW9zIGNv
ZGUuIGkgZXhwZWN0IHRvIHB1c2ggb3V0Cj4+PiBhIG5ldyBidWlsZCB0b21vcnJvdy4gaXQgd2ls
bCBzdGlsbCBub3QgdXNlIHRoZSBmdWxsIHBvdGVudGlhbCBvZiBjYWtlCj4+PiBzaW5jZSB3ZSBo
YXZlIHRvIGJyaW5nIGFsbCB0b2dldGhlciB3aXRoIHRoZSBwcmlvcml0eSBhbmQgbmRwaSBhbmQK
Pj4+IGZpbHRlciBiYXNlZCBmaWx0ZXIgdG9nZXRoZXIKPj4+IHdpdGggdGhlIGNha2Ugc2NoZWR1
bGVyLgo+PiBBcmUgeW91IGF3YXJlIHRoYXQgeW91IGNhbiB1c2UgdGhlIHRjIGZpbHRlcmluZyBm
dW5jdGlvbmFsaXR5IHRvIG1ha2UKPj4gdGhpcyBwbGF5IGFsb25nIHdpdGggY2FrZSdzIHRpZXJz
Pwo+IHdlIGFyZSBhbHJlYWR5IHVzaW5nIGZpbHRlcnMuIHllcy4gaXRzIGp1c3QgdGhhdCBjYWtl
IGlzIGFjdGluZyBhbHdheXMgCj4gYXMgcm9vdCBhbmQgd2UgaGF2ZSBkaWZmZXJlbnQgc29ydHMg
b2YgcW9zIGNvbmZpZ3VyYXRpb25zLiBzbyB5b3UgaGF2ZSAKPiB3YW4uIGJ1dCB3ZSBtYXkgaGF2
ZSBtdWx0aXBsZSBsYW4gaW50ZXJmYWNlcyB3aXRoIGluZGl2aWR1YWwgcW9zIAo+IHNldHRpbmdz
LiB0aGUgc2FtZSBmb3IgbWFjIC8gaXAgYmFzZWQgdXNlciBzZXR0aW5ncy4gc28gaW4gZmFjdCB3
ZSBuZWVkIAo+IHRvIGNyZWF0ZSBhIGluZGl2aWR1YWwgcWRpc2MgZm9yIGVhY2ggb2YgdGhlc2Ug
c2V0dGluZyB0eXBlcyBpbiB3b3JzdCAKPiBjYXNlLCBidXQgaW4gdGhhdCBjYXNlIHdlIGNhbm5v
dCB0YWtlIGluIGFjY291bnQgdGhlIGdsb2JhbCBhdmFpbGFibGUgCj4gYmFuZHdpZHRoIGFueW1v
cmUuCgpBaCwgcmlnaHQsIEkgc2VlLiBTbyB0aGlzIGlzIHRoaW5ncyBsaWtlIHVzZXJzIHdhbnRp
bmcgdG8gbGltaXQgYQpzcGVjaWZpYyB0eXBlIG9mIHRyYWZmaWMgdG8gYSBjZXJ0YWluIGJhbmR3
aWR0aD8KCj4+Pj4gQXJlIHlvdSB1c2luZyB0aGUgb3V0IG9mIHRyZWUgdmVyc2lvbiBvciBtYWlu
bGluZT8gT3V0IG9mIHRyZWUgaGFzCj4+Pj4gc29tZSBleHBlcmltZW50YWwgU0NFIHdvcmsKPj4+
PiB0aGF0IEknZCBsb3ZlIHRvIHNlZSB0ZXN0ZWQgYXQgbW9yZSBzY2FsZSBidXQgbm90IGFjdHVh
bGx5IHNoaXBwZWQgYXQgdGhpcyB0aW1lLgo+Pj4gb3V0IG9mIHRyZWUgc3RyYWlnaHQgZnJvbSBn
aXQgd2l0aCBtb2RpZmljYXRpb25zIHRvIGJlIGNvbXBhdGlibGUgdG8gbXkKPj4+IGtlcm5lbHMg
c2luY2UgeW91ciBjb21wYXRpYmxpdHkgbGF5ZXIgaXMgbW1oIG5vdCBwZXJmZWN0Lgo+PiBQbGVh
c2UgZG8gZmVlbCBmcmVlIHRvIHNlbmQgYSBwdWxsIHJlcXVlc3Qgd2l0aCB5b3VyIGZpeGVzIGZv
ciB0aGUKPj4gY29tcGF0aWJpbGl0eSBzdHVmZiEgOikKPiB3aWxsIGRvIGFmdGVyIGkgaGF2ZSB0
YWtlbiBvdXQgc3BlY2lmaWMgbW9kcyBmb3IgbXkga2VybmVscyBhZ2Fpbi4KCkdyZWF0LCB0aGFu
a3MhCgotVG9rZQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xp
c3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==
