Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id C514C153516
	for <lists+cake@lfdr.de>; Wed,  5 Feb 2020 17:17:07 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 819EB3CB3C;
	Wed,  5 Feb 2020 11:17:06 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1580919426;
	bh=iFBrlL1Mzh8HczspdcgSDgeFZj7BRtGcvWjHxN/Q9AQ=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=kv5FHHpgvVTr1BShnbUcAlJ5wLBHW4mmB23T2JiI00UB8rgGuOxW62A0TfmvhT9dc
	 wqlPcI4gLWXOhWbc7nd3da2n4fzCPXJSYlbXjrdwGWExIrZeo/Yy8eO6BsvHD9LsmB
	 8xC/D26kvKTzMYkzr2oFjlxT4gemIKL4hGWUzSpnav7p3w9eonZat6H1CLZ0vEatrB
	 ovaq0x+hghjMut4ZKgfI7+IB0i2kSRSV3JGSHOFM7uZTDgE4Yp/UHlJkMwrhVkzN0Z
	 nTLyOQrJLuuL5bY+AccJXFNcRAEj7EPj5xlEJYaEPoJGuV70g+CCmrQZO7jDO/NjOw
	 QecdjBMHeNdSg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [205.139.110.61])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id E02883B29D
 for <cake@lists.bufferbloat.net>; Wed,  5 Feb 2020 11:17:04 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1580919424;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Ca6RjbS+CWA9lpAbjXj3ZuG6sXyo+b8AfiT6VIZSn2A=;
 b=Z+25/dh0jXzfCBsDBHrEnuQlhCwbX9a4dWiLUCexrElgUOJ+XRPSRNhC9G6Rw+zs8sOmy2
 46Pd18jBDeSlBcUlyoMe6z6OO0VSp2vBKidywwmzTqs6TtNBSrH9524zajlWMhiGSq2wY8
 8gpnt8ZBaBJMskGppK9grn5xheWETWs=
Received: from mail-lf1-f69.google.com (mail-lf1-f69.google.com
 [209.85.167.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-272-QIU44vsAOLG6Byr8YjxGig-1; Wed, 05 Feb 2020 11:16:48 -0500
Received: by mail-lf1-f69.google.com with SMTP id c16so720822lfm.10
 for <cake@lists.bufferbloat.net>; Wed, 05 Feb 2020 08:16:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=PGejSt8tB9dvuaFzx/g8ZdfPEgpddvaoMtZwYtRhsjE=;
 b=GiSr3djIzc0NS5lwKSIFrTG2Ikfc4e00muCEPsL9XfWAmsPafd7FTzG6aiYKw3XgPE
 5/5AtBjw7whDQt1IST4pnm1x8KFU2eIZkHEpSl+EbrLC2hMt6T0t9VHn/7c66icx/D/Z
 7WhHu/sVg74iJqXzKUPUk1VVlXbQp9cUCy/ZUaCG7jDbVVKKbFpX5wB10OaXt6h4oVa3
 cJ++eFjF6cO/epvEfUTmoMrcOG7iyVaIRjr14LhRK93yjnJduKQP0I0IIseCfmDCAxXz
 71AKTsOAGdQhMBvYqxpXyB0+EDMXNqrvOLFcU4iZLho4/jpj4cpRgyCBbebDPudjPkoT
 BedA==
X-Gm-Message-State: APjAAAWqFZ8s2pweSR1/6INa9pDP/0mTWlXBuSd8gLIfShOk7jWRW/Gk
 SgVLCLkykBy60Sxtmxerz7C/CLx35vJXIZfMNtHTRR343yjJaLp34yH1O9fbUTiV5YL/f62sk4v
 NFr/ArT0XeIDhh+FLSyeVFg==
X-Received: by 2002:a2e:88d6:: with SMTP id a22mr19583528ljk.163.1580919406464; 
 Wed, 05 Feb 2020 08:16:46 -0800 (PST)
X-Google-Smtp-Source: APXvYqz7329m+lnYA2gOmpa4E/mUoYaGCPb6yb3tGWykbyhISAu0HXENj2ZeFq0KFusAATiunt8MdA==
X-Received: by 2002:a2e:88d6:: with SMTP id a22mr19583511ljk.163.1580919405916; 
 Wed, 05 Feb 2020 08:16:45 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
 by smtp.gmail.com with ESMTPSA id y66sm12431783lfa.53.2020.02.05.08.16.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 05 Feb 2020 08:16:45 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 791991802D4; Wed,  5 Feb 2020 17:16:44 +0100 (CET)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Dave Taht <dave@taht.net>, =?utf-8?Q?Bj=C3=B8rn?= Ivar Teigen
 <bjorn@domos.no>
In-Reply-To: <87v9oluih6.fsf@taht.net>
References: <CAKf5G6JeQFqDYV5Ttop3Tqb7WUGW2ZvYj-4S6C=VsF2JeZfs_Q@mail.gmail.com>
 <07250850-5FAF-4AB7-9551-0B26D648AF3D@gmail.com>
 <CAA93jw7AW=8ZL2SU3NCnYaRt1Ax1KfkbTu6MP22KX0hZqqM9XA@mail.gmail.com>
 <CAKf5G6KH5SXzHL131Xb4+Mz1MHLAGEmtOgzxfUidb5Ncma5d0w@mail.gmail.com>
 <87v9oluih6.fsf@taht.net>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Wed, 05 Feb 2020 17:16:44 +0100
Message-ID: <87y2thc8lv.fsf@toke.dk>
MIME-Version: 1.0
X-MC-Unique: QIU44vsAOLG6Byr8YjxGig-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Cake] [Make-wifi-fast]  Cake in mac80211
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

RGF2ZSBUYWh0IDxkYXZlQHRhaHQubmV0PiB3cml0ZXM6Cgo+IEJqw7hybiBJdmFyIFRlaWdlbiA8
Ympvcm5AZG9tb3Mubm8+IHdyaXRlczoKPgo+PiBUaGFua3MgZm9yIHRoZSBmZWVkYmFjayEKPj4K
Pj4gU29tZSBjb21tZW50cyBhbmQgcXVlc3Rpb25zIGFkZGVkIGlubGluZS4KPj4KPj4gT24gVHVl
LCA0IEZlYiAyMDIwIGF0IDE4OjA3LCBEYXZlIFRhaHQgPGRhdmUudGFodEBnbWFpbC5jb20+IHdy
b3RlOgo+Pgo+PiAgICAgT24gVHVlLCBGZWIgNCwgMjAyMCBhdCA3OjI1IEFNIEpvbmF0aGFuIE1v
cnRvbgo+PiAgICAgPGNocm9tYXRpeDk5QGdtYWlsLmNvbT4gd3JvdGU6Cj4+ICAgICA+Cj4+ICAg
ICA+ID4gT24gNCBGZWIsIDIwMjAsIGF0IDU6MjAgcG0sIEJqw7hybiBJdmFyIFRlaWdlbiA8Ympv
cm5AZG9tb3Mubm8+Cj4+ICAgICB3cm90ZToKPj4gICAgID4gPgo+PiAgICAgPiA+IEFyZSB0aGVy
ZSBhbnkgcGxhbnMsIHdvcmsgb3IganVzdCBjb21tZW50cyBvbiB0aGUgaWRlYSBvZgo+PiAgICAg
aW1wbGVtZW50aW5nIGNha2UgaW4gbWFjODAyMTEgYXMgd2FzIGRvbmUgd2l0aCBmcV9jb2RlbD8K
Pj4gICAgID4KPj4gICAgID4gVG8gY29uc2lkZXIgZG9pbmcgdGhhdCwgdGhlcmUnZCBoYXZlIHRv
IGJlIGEgY29uY3JldGUgYmVuZWZpdCB0bwo+PiAgICAgZG9pbmcgc28uCj4+ICAgICAKPj4gICAg
IFJlc2VhcmNoIGlzIHJlc2VhcmNoISA6KSBFdmVyeXRoaW5nIGlzIHdvcnRoIHRyeWluZyEgVGhl
cmUncyBnb3QKPj4gICAgIHRvIGJlCj4+ICAgICBzb21lIGJldHRlciBpZGVhcyBvdXQgdGhlcmUs
IGFuZCB3ZSBoYXZlIGEgbG9uZyBsaXN0IG9mIHRoaW5ncyB3ZQo+PiAgICAgY291bGQgaGF2ZSBk
b25lIHRvIGtlZXAgaW1wcm92aW5nIHdpZmkgaGFkIGZ1bmRpbmcgbm90IHJ1biBvdXQuCj4+ICAg
ICAKPj4gICAgIFdlIGJhcmVseSBzY3JhdGNoZWQgdGhlIHN1cmZhY2Ugb2YgdGhpcyBsaXN0Lgo+
PiAgICAgCj4+ICAgICBodHRwczovL2RvY3MuZ29vZ2xlLmNvbS9kb2N1bWVudC9kLzFTZTM2c3ZZ
RTFVenBwcGUxSFduRXlhdF9zQUdnaEIza0UyODVMRWxKQlc0L2VkaXQKPj4gICAgCj4+ICAgICAK
Pj4gICAgID4gTW9zdCBvZiBDYWtlJ3MgbW9zdCB1c2VmdWwgZmVhdHVyZXMsIGJleW9uZCB3aGF0
IGZxX2NvZGVsCj4+ICAgICBhbHJlYWR5IHN1cHBvcnRzLCBhcmUgYWN0dWFsbHkgaW1wbGllZCBv
ciBldmVuIGRvbmUgYmV0dGVyIGJ5IHRoZQo+PiAgICAgV2lGaSBlbnZpcm9ubWVudCBhbmQgdGhl
IG1hYzgwMjExIGxheWVyIGFkYXB0YXRpb24gKHBhcnRpY3VsYXJseQo+PiAgICAgYWlydGltZSBm
YWlybmVzcykuCj4+ICAgICAKPj4gICAgIEluIG15IG9waW5pb24ocykKPj4gICAgIAo+PiAgICAg
QSkgSSB0aGluayBhY2stZmlsdGVyaW5nIHdpbGwgaGVscCBzb21ld2hhdCBvbiA4MDIuMTFuLCBi
dXQgaXQncwo+PiAgICAgbm90Cj4+ICAgICB3b3J0aCB0aGUgYWRkZWQgY3B1IGNvc3Qgb24gYW4g
QVAgYW5kIEknZCBwcmVmZXIgaG9zdHMgcmVkdWNlCj4+ICAgICB0aGVpcgo+PiAgICAgYWNrIGxv
YWQgaW4gdGhlIHRjcCBzdGFjayAoSU1ITywgb3RoZXJzIG1heSBkaWZmZXIsIGl0J3Mgd29ydGgK
Pj4gICAgIHRyeWluZykKPj4gICAgIEIpIFRoZSB1bmRlcmx5aW5nIHdpZmkgc2NoZWR1bGVyIGVz
c2VudGlhbGx5IGRvZXMgcGVyIGhvc3QgZnEKPj4gICAgIGJldHRlcgo+PiAgICAgdGhhbiBjYWtl
IGNhbiAoYmVjYXVzZSBpdCdzIGxheWVyIDIgdnMgbGF5ZXIgMyksIGFzIHBlciBqb25hdGhhbidz
Cj4+ICAgICBjb21tZW50IGFib3ZlIAo+Pgo+PiAgICAgQykgSW5zdGVhZCBvZiB1c2luZyBhIDgg
d2F5IHNldCBhc3NvY2lhdGl2ZSBoYXNoIGFuZCAxMDI0IHF1ZXVlcywKPj4gICAgIGZxX2NvZGVs
IGZvciB3aWZpIHVzZXMgNDA5NiB3aXRoIGEgZGlzYW1iaWd1YXRpb24gcG9pbnRlciBmb3IKPj4g
ICAgIGNvbGxpc2lvbnMuIFNlZW1zIGdvb2QgZW5vdWdoLgo+PiAgICAgCj4+Cj4+IERpZG4ndCBj
YXRjaCB0aGF0IGJlZm9yZS4gQXJlIHRoZSBleHRyYSBxdWV1ZXMgdGhlcmUgYmVjYXVzZSBvZiB0
aGUKPj4gZGlmZmVyZW50IGFjY2VzcyBjYXRlZ29yaWVzIG9uIFdpLUZpPyBTZWVtcyBsaWtlIHRo
YXQgd291bGQgbWVhbiBtb3N0Cj4+IG9mIHRoZW0gYXJlIG5vdCBpbiB1c2UgY29uc2lkZXJpbmcg
aG93IGxpdHRsZSB0cmFmZmljIGlzIG1hcmtlZCB3aXRoCj4+IERTQ1AuCj4KPiBJIHdhc24ndCBj
b3VudGluZyB0aG9zZS4gVGhlcmUncyBvbmUgc2V0IG9mIDRrIHF1ZXVlcyBwZXIgYWNjZXNzCj4g
Y2xhc3MuCgpOaXQ6IG5vdCBwZXIgYWNjZXNzIGNsYXNzOyB0aGV5J3JlIHNoYXJlZCBhY3Jvc3Mg
dGhlIHdob2xlIHBoeS4KCi1Ub2tlCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5l
dApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==
