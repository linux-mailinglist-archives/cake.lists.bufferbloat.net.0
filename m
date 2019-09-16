Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A183B3C0A
	for <lists+cake@lfdr.de>; Mon, 16 Sep 2019 16:01:50 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id EB5C83CB40;
	Mon, 16 Sep 2019 10:01:48 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1568642508;
	bh=gwkekKJblahzOvF2SU+Q8iZ3moCBuAFiX7yJyzkSxlg=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=n4vxDi0wQ/HYE7mzNsJaf5XX4LQV/mYUJcIHt9W7D2tPavVcZ5S1IS3OuIJIEnBUD
	 1xklcNHJbK83Rd8QAumtgCmt83uIxQ8AC5SkPHQiWicPQa8aCHFNsKn6kRluMXBaHc
	 hWBptPuw3avarRsIW/8iDzMgEtueBAfXB3TbDs7+WOUdDtNpD++0uYKoe2Ad5UlMBi
	 8/8pzV/BHtMULoWz/wp1jFY0HKFHWaI0vSd65g7tbVZulEGO3SFdvOoaO/KIW0Z+Z7
	 p9Ixf15fpsseMJ1l9N1zduaZI7w5VOQeH6lEK1YTebC1QgFOMzcn4pQjkNtqjDXczJ
	 IM5qjntl0TSew==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [207.211.31.81])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 51AE93B2A4
 for <cake@lists.bufferbloat.net>; Mon, 16 Sep 2019 10:01:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1568642506;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=+AU8qf0l06qzUTBgu01WfMrg8S6bQhSunYp3+EC6ODQ=;
 b=CAiosMJb1OKkdAPYhDROFN3VucO2IRkcI00NAm7Mt0P6gahxn5dMuH2RR0H8E/EBPdZnw8
 CeaNeIsnHkK42b/rQXqeBBl6xPA5jDJ1CMHf0/iDCmY7+/IATyG+UbpRO3Sv5+47TI/mOg
 lEIrEcDwwWR+mUMdkHl266sgj1Pvk1E=
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-205-_5FiVdqVPSexWWHjGju8iA-1; Mon, 16 Sep 2019 10:01:42 -0400
Received: by mail-ed1-f69.google.com with SMTP id p55so753edc.5
 for <cake@lists.bufferbloat.net>; Mon, 16 Sep 2019 07:01:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=+AU8qf0l06qzUTBgu01WfMrg8S6bQhSunYp3+EC6ODQ=;
 b=sL6IA9BUL3k7VTlKciNBiv4/hTaRNMGduPTKiOsCv1w9us0J6hyz7w7v9xQ1ySx4mB
 huN9uZmgT0+ybuRNn0sjXKRV5MfDVuhU3SdE3agmtDe9egXcNVgnc00H9pf60XMZTvWZ
 gS983oZbWHO6sReqHiezVyHEc9gJgL3fxnhOkdFpP2HBz2gp75muLtkLa336EjvKrS2p
 yjXOML4aPG17IzFLv/icNSMyZWGCEKWOBDcaD/ogNj3z846dXQtxvssIvJXsLa3vvOS7
 4UIGhHLSTnfKdE567STOQ77M37hQhduWYUWai1fWo8Ue7Uwufc0DBsqDdqu4ahdBGajp
 CpJw==
X-Gm-Message-State: APjAAAWeRP4WGDOCXp1YaCBeZvf+MR4PNS8DpBSntRECx+ncGeloXFOe
 DH4lHhFnQEvksS8VjRz3UC/gueWzwxZhqCM8wUJxMkniZxl4BpyZLC0d1dTAC7mHiPby4mnEC6K
 TKkXwIb5xMd6jrm45veYO4Q==
X-Received: by 2002:a50:cfc7:: with SMTP id i7mr52456990edk.89.1568642501241; 
 Mon, 16 Sep 2019 07:01:41 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwH3OJHRriqr4sSEI8Qnq9r/aq0kr0akcs68NkIvCOsMqdhhjn1uJbjgNJN+9d4oSmg7kyGQA==
X-Received: by 2002:a50:cfc7:: with SMTP id i7mr52456979edk.89.1568642501067; 
 Mon, 16 Sep 2019 07:01:41 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk (borgediget.toke.dk.
 [85.204.121.218])
 by smtp.gmail.com with ESMTPSA id oh24sm4349671ejb.79.2019.09.16.07.01.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Sep 2019 07:01:39 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 5FB161800B9; Mon, 16 Sep 2019 16:01:39 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Sebastian Gottschall <s.gottschall@newmedia-net.de>,
 cake@lists.bufferbloat.net
In-Reply-To: <b52b59ac-c5f7-8015-c7dc-b82406b9002c@newmedia-net.de>
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
X-Clacks-Overhead: GNU Terry Pratchett
Date: Mon, 16 Sep 2019 16:01:39 +0200
Message-ID: <87h85cl4qk.fsf@toke.dk>
MIME-Version: 1.0
X-MC-Unique: _5FiVdqVPSexWWHjGju8iA-1
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
czoKCj4gQW0gMTYuMDkuMjAxOSB1bSAxNDowOCBzY2hyaWViIFRva2UgSMO4aWxhbmQtSsO4cmdl
bnNlbjoKPj4gU2ViYXN0aWFuIEdvdHRzY2hhbGwgPHMuZ290dHNjaGFsbEBuZXdtZWRpYS1uZXQu
ZGU+IHdyaXRlczoKPj4KPj4+IGFmdGVyIHdlIGZvdW5kIG91dCBzZXJpb3VzIG91dCBvZiBtZW1v
cnkgaXNzdWVzIG9uIHNtYWxsZXIgZW1iZWRkZWQKPj4+IGRldmljZXMgKDEyOCBtYiByYW0pIHdl
IG1hZGUgc29tZSBiZW5jaG1hcmtzIHdpdGggZGlmZmVyZW50IHNjaGVkdWxlcnMKPj4+IHdpdGgg
dGhlIHJlc3VsdCB0aGF0IGNha2UgdGFrZXMgYSBzZXJpb3VzIGFtb3VudCBvZiBtZW1vcnkuIHdl
IHVzZSB0aGUKPj4+IG91dCBvZiB0cmVlIGNha2UgbW9kdWxlIGFuZCB3ZSB1c2UgaXQgY2xhc3Mg
YmFzZWQgc2luY2Ugd2UgaGF2ZSBjb21wbGV4Cj4+PiBtZXRob2RzIG9mIGRvaW5nIHFvcyBwZXIg
aW50ZXJmYWNlLCBwZXIgbWFjIGFkZHJlc3NlIG9yIGV2ZW4gcGVyCj4+PiBpcC9uZXR3b3JrLiBz
byBpdHMgbm90IGp1c3Qgc2ltcGxlIGNha2Ugb24gYSBzaW5nbGUgaW50ZXJmYWNlIHNvbHV0aW9u
Lgo+Pj4gd2UgbWFkZSBzb21lIGJlbmNobWFya3Mgd2l0aCBkaWZmZXJlbnQgc2NoZWR1bGVycy4g
ZG9lcyBhbnlib2R5IGhhdmUgYQo+Pj4gc29sdXRpb24gZm9yIG1ha2luZyB0aGF0IGJldHRlcj8K
Pj4+Cj4+PiBIVEIvRlFfQ09ERUwgLS0tLS0tLe+DoCA2Mk0KPj4+IEhUQi9TRlEgLS0tLS0tLe+D
oCA2Mk0KPj4+IEhUQi9QSUUgLS0tLS0tLe+DoCA2Mk0KPj4+IEhUQi9GUV9DT0RFTF9GQVNUIC0t
LS0tLS3vg6AgNjdNCj4+PiBIVEIvQ0FLRSAtLS0tLS0t74OgMTExTQo+Pj4KPj4+IEhGU0MvRlFf
Q09ERUxfRkFTVCAtLS0tLS0t74OgIDQ3TQo+Pj4gSFRCL1BJRSAtLS0tLS0t74OgIDQ5TQo+Pj4g
SFRCL1NGUSAtLS0tLS0t74OgIDUwTQo+Pj4gSEZTQyAvRlFfQ09ERUwgLS0tLS0tLe+DoCA1Mk0K
Pj4+IEhGU0MvQ0FLRSAtLS0tLS0t74OgMTA5TQo+PiBIb3cgYXJlIHlvdSBtZWFzdXJpbmcgdGhl
IG1lbW9yeSB1c2FnZSwgYW5kIHdoYXQgaXMgeW91ciBmdWxsIGNvbmZpZyBmb3IKPj4gZWFjaCBz
ZXR1cD8gOikKPiBtZT8gbm90aGluZy4gaSByZXF1ZXN0ZWQgdGhpcyB0ZXN0IGZyb20gYSByZXBv
cnRlciBhbmQgaGUgdXNlcyBqdXN0IGZyZWUgCj4gLyB0b3AuIHNvIHRoZXJlIGlzIGEgZXJyb3Ig
dG9sbGVyYW5jZS4KCkFoLCBJIHNlZS4gU28gdGhpcyBpcyBqdXN0IHRvdGFsIHN5c3RlbSBtZW1v
cnkgYXMgcmVwb3J0ZWQgYnkgdG9wLgoKPiBidXQgaXQgc2hvd3MgYSBzaWduaWZpY2FudCBkaWZm
ZXJlbmNlIGJldHdlZW4gY2FrZSBhbmQgZnFfY29kZWwgZXRjLiAKPiBjYWtlIGlzIGRvaW5nIGEg
T09NIGF0IHRoZSBlbmQKPgo+IGZvciB0aGUgZnVsbCByZXBvcnQgaW5jbHVkaW5nIGNvbmZpZyBz
Y3JlZW5zaG90cyBzZWUgdGhpcyAKPiBodHRwczovL3N2bi5kZC13cnQuY29tL3RpY2tldC82Nzk4
I2NvbW1lbnQ6MTQuIGl0IHNob3dzIGFsc28gdGhlIHFvcyAKPiBzZXR1cCB3aGljaCBpIGNhbiB1
c2UgdG8gcmVwcm9kdWNlIGFuZCB0bwo+IHByaW50IG91dCB0aGUgZnVsbCB0YyBydWxlc2V0IGlm
IHJlcXVpcmVkICh3aGljaCBpdCBzdXJlbGx5IGlzIGZvciB5b3UpLiAKPiBpZiB5b3Ugd2FudCBp
IHdpbGwgcmVjcmVhdGUgdGhpcyBzZXR1cCBhbmQgc2VuZCB0aGUgdGMgcnVsZXMgb24gdGhpcwo+
IGxpc3QKClllcywgcGxlYXNlIGRvLiBUaGUgb3V0cHV0IG9mICd0YyAtcyBxZGlzYycgd291bGQg
YmUgdXNlZnVsIGFzIHdlbGwgdG8Kc2VlIGhvdyBtdWNoIG1lbW9yeSBDQUtFIGl0c2VsZiB0aGlu
a3MgaXQncyB1c2luZy4uLgoKQXJlIHlvdSBzZXR0aW5nIHRoZSBtZW1vcnlfbGltaXQgaW4geW91
ciBjb25maWcgb3IgcmVseWluZyBvbiBDQUtFJ3MKZGVmYXVsdD8KCi1Ub2tlCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApD
YWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9s
aXN0aW5mby9jYWtlCg==
