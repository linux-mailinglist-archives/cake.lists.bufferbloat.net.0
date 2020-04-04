Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F77B19E65B
	for <lists+cake@lfdr.de>; Sat,  4 Apr 2020 18:10:28 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id E62E23CB43;
	Sat,  4 Apr 2020 12:10:21 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1586016621;
	bh=UmckzpKjMn6VBBjBotuEvufZSsO+qa5284NvxIt21Po=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Yyi6XwIspLX9HVwyGFiF9sdW5olZs3rdodyNrkfiKYF9ZiH7oUfhpdio1F2RbjGaD
	 Mk0g+ywyDBEsTPurW7F36BWSRTxJwo0dU4GR4X3xbUFVMTnNMXTA8/DNPvtVAPfVdX
	 HeIt2Y4qILCLpX2/pep++50BSr3N6Y5YuFND1x+PWyCbClidZx4QqFEC+vDdwDaXUO
	 6UzV4Wv+KsfxHr8xpm+MQWce0XAW2oIPPx79NMsHGwr1wvCczUHltAOz8Jj6RRRPLs
	 unM3KZvGYbTSr33no9mb1J/ich7pc8vshxJvc2gtn+2mtUUy4UGj/XmMxV9LmQUuUw
	 Fr9Ylzzqf7ZJw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-il1-x12d.google.com (mail-il1-x12d.google.com
 [IPv6:2607:f8b0:4864:20::12d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 265143CB35;
 Sat,  4 Apr 2020 12:10:20 -0400 (EDT)
Received: by mail-il1-x12d.google.com with SMTP id k29so10477787ilg.0;
 Sat, 04 Apr 2020 09:10:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=9ZZWjevyMkunR2RfN7W4e7ZWz3KZa73nltaT+V19WOc=;
 b=mBSw9yIAkX+CMsWEYAbDUpV3v/SRIIZ+U7jG8UaTRdACP3UNCJKVNBiE2kpEjppYUW
 ZU7Mw21HQazYkdmpf2rYRaNRM4FAejO2+uwNqRmHXkkaRDOpSKQQbeQpYZGj+5ZaJUPO
 6nmAzM+FG1KO1Ktv/+wJKFn8wujhU3O/Ho1U1ebgTjHq9sidhXKR2gWrOPca67AuuM0v
 mj9xlFKciQnfqaI41H8c+pmZFzeZKmCju0v/I/cwMGvrGXsR9qguQu0Io/QGCCxo2iFP
 VOERMUzipUyQA7IFvZCErpAdRoBzxtHUIvVeRVdUqXqoh23vLUo5JKnQD9+xJ+PGxE/5
 5ZmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=9ZZWjevyMkunR2RfN7W4e7ZWz3KZa73nltaT+V19WOc=;
 b=UeikkT+htuQEcel0MSE0rOYIn7KXT/3vLuH3UwmWmeuvH8kVzQtmLoDirRotx/ZMkH
 jPtI0Ay12FUKfisr7KAWqMHH4iOPwhjeBuOEPiDsflStNf2q1WKizrJCP9+uXOIiLw0l
 eJ8CFVZ/l8Ha+lPk5Vh5ERTurGRBCA0WSHl7icS44J+3qhCJojRsfSJed5bb8rOFy1Db
 VEKol/9QCGnsJVj/wHkkE1xFF+Hs0yLzlrkillkM9OTQ9nGb0iHwhfKtb3z5gNLfzao+
 BxXXpjScT4D/OiqJPHYTOgVHCmsRbRuVRWKU4yU3EHScMrs4283TsKzGI7BYqDfucZUY
 x49g==
X-Gm-Message-State: AGi0Pub2o8PptMniL9uWpWPdqr0QXwV57aBeuQCYBj4ziI3Df1hOuHKB
 S36f1yZYm8vxK5W52cUvmmgzrW5B6rxpTaWqqrE=
X-Google-Smtp-Source: APiQypLvi0i9YG5SkQzuKW1SAdZrIcM2f7b96NFMBC4EcrtUmWjnk6w5831ZtcEbz1IZ5A+bXA1EfVtXMw+1rwYiClE=
X-Received: by 2002:a92:8e50:: with SMTP id k16mr14654795ilh.45.1586016619503; 
 Sat, 04 Apr 2020 09:10:19 -0700 (PDT)
MIME-Version: 1.0
References: <CALQXh-P1JGWHXQYnRd68woqj-C8CLxaxeD5=4xjYLYiLubkSeQ@mail.gmail.com>
 <1586011622.632930657@apps.rackspace.com>
In-Reply-To: <1586011622.632930657@apps.rackspace.com>
From: Dave Taht <dave.taht@gmail.com>
Date: Sat, 4 Apr 2020 09:10:06 -0700
Message-ID: <CAA93jw7CDCVfY0pspLbSaSqf2_0s_23oXsGfEy1x_MHQKEkUNQ@mail.gmail.com>
To: "David P. Reed" <dpreed@deepplum.com>
Subject: Re: [Cake] [Bloat]  New board that looks interesting
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
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 Aaron Wood <woody77@gmail.com>, bloat <bloat@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SGlzdG9yaWNhbGx5IEkndmUgZm91bmQgdGhlICJDZWxlcm9uIiBjaGlwcyByYXRoZXIgd2Vhaywg
YnV0IGl0J3MganVzdAphIGJyYW5kLiBJIGhhdmVuJ3QgdGhlIGZvZ2dpZXN0IGlkZWEgaG93IHdl
bGwgdGhpcyB2YXJpYW50IHdpbGwKcGVyZm9ybS4KClRoZSBpbnRlbCBldGhlcm5ldCBjaGlwcyBh
cmUgYmVzdCBvZiBicmVlZCBpbiBsaW51eCwgaG93ZXZlci4gSXQncwpiZWVuIG15IGhvcGUgdGhh
dCB0aGUgMjExIHZhcmlhbnQgd2l0aCB0aGUgdGltZWQgbmV0d29ya2luZyBzdXBwb3J0CndvdWxk
IHNob3cgdXAgaW4gdGhlIGZpZWxkIChzY2hfZXR4KSBzbyB3ZSBjb3VsZCBmaWRkbGUgd2l0aCB0
aGF0LAoodGhlIGFwdTJzIGFyZW4ndCB1c2luZyB0aGF0IHZlcnNpb24pIGJ1dCBJIGNhbm5vdCBm
b3IgdGhlIGxpZmUgb2YgbWUKcmVtZW1iZXIgdGhlIHJpZ2h0IGtleXdvcmRzIHRvIGxvb2sgaXQg
dXAgYXQgdGhlIG1vbWVudC4gdGhpcyBmZWF0dXJlCmxldHMgeW91IHByb2dyYW0gd2hlbiBhIHBh
Y2tldCBlbWVyZ2VzIGZyb20gdGhlIGRyaXZlciBhbmQgaXMgc29ydCBvZgphIHdob2xlIG5ldyBi
YWxsZ2FtZSB3aGVuIGl0IGNvbWVzIHRvIHNjaGVkdWxpbmcgLSB0aGVyZSBoYXNuJ3QgYmVlbgph
biBhcW0gZGVzaWduZWQgZm9yIGl0LCBhbmQgeW91IGNhbiBkbyBmcSBieSBwbGF5aW5nIHRyaWNr
cyB3aXRoIHRoZQpzZW50IHRpbWVzdGFtcC4KCkFsbCB0aGUgb3RoZXIgZmVhdHVyZXMgbG9vayBy
YXRoZXIgbmljZSBvbiB0aGlzIGJvYXJkLgoKT24gU2F0LCBBcHIgNCwgMjAyMCBhdCA3OjQ3IEFN
IERhdmlkIFAuIFJlZWQgPGRwcmVlZEBkZWVwcGx1bS5jb20+IHdyb3RlOgo+Cj4gVGhhbmtzISBJ
IG9yZGVyZWQgb25lIGp1c3Qgbm93LiBJbiBteSBleHBlcmllbmNlLCB0aGlzIGNvbXBhbnkgZG9l
cyByYXRoZXIgbmVhdCBzdHVmZi4gVGhlaXIgWE1PUyBiYXNlZCBtaWNyb3Bob25lIGFycmF5IChS
ZVNwZWFrZXIpIGlzIHJlYWxseSB1c2VmdWwuIFdoYXQncyB0aGUgc3RhdGUgb2YgcGxheSBpbiBM
aW51eC9PcGVuV1JUIGZvciBJbnRlbCA5NTYwIGNhcGFiaWxpdGllcyByZWdhcmRpbmcgQVFNPwo+
Cj4gT24gU2F0dXJkYXksIEFwcmlsIDQsIDIwMjAgMTI6MTJhbSwgIkFhcm9uIFdvb2QiIDx3b29k
eTc3QGdtYWlsLmNvbT4gc2FpZDoKPgo+ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KPiA+IENha2UgbWFpbGluZyBsaXN0Cj4gPiBDYWtlQGxpc3RzLmJ1
ZmZlcmJsb2F0Lm5ldAo+ID4gaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8v
Y2FrZQo+ID4gaHR0cHM6Ly93d3cuc2VlZWRzdHVkaW8uY29tL09EWVNTRVktWDg2SjQxMDU4MDAt
cC00NDQ1Lmh0bWwKPiA+Cj4gPiBxdWFkLWNvcmUgQ2VsZXJvbiBKNDEwNSAxLjUtMi41IEdIeiB4
NjQKPiA+IDhHQiBSYW0KPiA+IDJ4IGkyMTF0IGludGVsIGV0aGVybmV0IGNvbnRyb2xsZXJzCj4g
PiBpbnRlbCA5NTYwIDgwMi4xMWFjICh3YXZlMikgd2lmaS9ibHVldG9vdGggY2hpcHNldAo+ID4g
aW50ZWwgYnVpbHQtaW4gZ3JhcGhpY3MKPiA+IG9uYm9hcmQgQVJNIENvcnRleC1NMCBhbmQgUlBp
ICYgQXJkdWlubyBoZWFkZXJzCj4gPiBtLjIgYW5kIFBDSWUgYWRhcHRlcnMKPiA+IDwkMjAwCj4g
Pgo+Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+
IEJsb2F0IG1haWxpbmcgbGlzdAo+IEJsb2F0QGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldAo+IGh0dHBz
Oi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Jsb2F0CgoKCi0tIApNYWtlIE11c2lj
LCBOb3QgV2FyCgpEYXZlIFTDpGh0CkNUTywgVGVrTGlicmUsIExMQwpodHRwOi8vd3d3LnRla2xp
YnJlLmNvbQpUZWw6IDEtODMxLTQzNS0wNzI5Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxv
YXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK
