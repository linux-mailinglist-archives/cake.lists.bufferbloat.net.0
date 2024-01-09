Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B411828996
	for <lists+cake@lfdr.de>; Tue,  9 Jan 2024 17:05:27 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 422273CB45;
	Tue,  9 Jan 2024 11:05:26 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1704816326;
	bh=5PkwwqbdTHjqHtS1BTs/pk3HWpv96xu4ah44u7oRypI=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=jjZFvQ7wW8XDMeR3cH4o3mFkoLdDA2PkC0VH//++47JDRK8SXam9zt8+4hXso/PPt
	 AGy0eGWjOHLs22kad2vCnTqnShxKPspUaiKf2wleDlIAHnQPs54GlO3A7urDxA/XaH
	 y24H/aB1OoqT7MYWqkaQHCHLw6Cp98c4lFm0c90xIE6H9KwHFzyOHi/j/jcx92yajQ
	 SNia2iPJvviU2TiEvWeCBA2FnAEZKnYcvEx8plpJkllzSyRLe5b1VDPdELPWBfwJ42
	 lkG3usB9kNJMaZEc7/c/BQ6X5QlrPgYCjBmE3MqCwTkg4VSmP4d+vY6JV0OjgsgAyy
	 IRfgzbSfuRESw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com
 [IPv6:2607:f8b0:4864:20::42d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id B32143B2A4
 for <cake@lists.bufferbloat.net>; Tue,  9 Jan 2024 11:05:24 -0500 (EST)
Received: by mail-pf1-x42d.google.com with SMTP id
 d2e1a72fcca58-6d9b5c4f332so1463451b3a.3
 for <cake@lists.bufferbloat.net>; Tue, 09 Jan 2024 08:05:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1704816323; x=1705421123; darn=lists.bufferbloat.net;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=SSaskMwaOv3LCkNSMIk2d3/ldyCUdgo+7ZTL9X5OtUY=;
 b=YynF09hUiUbyO/iKyrDVEWT2ULM7f9gm9JUp86o3mgixwapc0LR8aDz+cbnsiEUA6f
 bUvkVZ6v+TbH+eTQKXPj3SvhGe+Jcbw6iepDDPvjfMzJGjAjGH5VqOKoNZjC0f2YrONV
 L6UNNnCzG39yJy5sf7ciMSF335xaKQCgaPxHjSO+e0yk04w4wmgJUkwR7t6cywuDhCkR
 bJUHiD0iOO9qpdJxMXGzLoC42jpjAX/md3e+nW2frjJTcd8s6SbYvw4uvoeU/cY5Er09
 WK9Ckahg6LdchhoWHE/WrlLieJAc7U1/Oq1zh8jS1F9F/t6XLYWqG0Lz3Dn+W1KZqX16
 ciWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1704816323; x=1705421123;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=SSaskMwaOv3LCkNSMIk2d3/ldyCUdgo+7ZTL9X5OtUY=;
 b=lTHPbpeRrMyIHBoy+05sYSgJJGw/BdcFBLKKQHeTvC+2Tnm1422jnxiSEDCJ5XGR2j
 QDF7JOKesIepXDPtGx9oy29k73qSS2cLpetXGJCGC4SEINBqwzizJqbqXftEkQpsbMTv
 mKUVSFNMxTz1r68VmTKkoeVC4g7OjXkm07JGnf8+LvqassBPwvJMKv2h2jx54KvXcMpP
 hI9ioOKwt/FW01cuiDAshflum3rFbcoYXPZiTwh9MRcilXEUJNxT2gbfhT6QDWhFPTDb
 3Sgtib5gRz7vFYjekpnTIAARDQ7aQs5wK0B5P0owVG0y+xu5ndpvAUoLilRsflkKz/F2
 FfKw==
X-Gm-Message-State: AOJu0YxHNhU2XUal3QIoC9/YfCWI3v/Eq6b+Z8AQ94xjarKBONJRuqMe
 7WUUdAGRKYsRSdoG1m7IsdwkhI6cNpDTls0k9U0wIlHR
X-Google-Smtp-Source: AGHT+IHz8dc9y3Lo08hV1dNcXilZVFrD9JwgaSwzTq7fNfQHHII/BpbYpT8tXszuiTP33VyDyAYKObrhmLTI/Do4kfo=
X-Received: by 2002:a05:6a20:5d9c:b0:199:95cf:7e30 with SMTP id
 km28-20020a056a205d9c00b0019995cf7e30mr1661210pzb.93.1704816323476; Tue, 09
 Jan 2024 08:05:23 -0800 (PST)
MIME-Version: 1.0
References: <CANypexRYDqtsuj2vwX0qXWA=hXN3KZ5CJn5+vZRbm=Dikwh1Aw@mail.gmail.com>
 <deed5fd13e38d17c8b6716f4fdad64cba896385b.camel@heistp.net>
 <65325791-A1D1-4E21-9F1D-D17737BCFF0F@lochnair.net>
In-Reply-To: <65325791-A1D1-4E21-9F1D-D17737BCFF0F@lochnair.net>
Date: Tue, 9 Jan 2024 11:05:11 -0500
Message-ID: <CAA93jw4K2sgRfXieAV_tfjBpRrK3kEke1QhMk2tp+PqLMh8w4Q@mail.gmail.com>
To: Nils Andreas Svee <me@lochnair.net>
Subject: Re: [Cake] Ubiquity (Unifi ) Smart Queues
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
From: Dave Taht via Cake <cake@lists.bufferbloat.net>
Reply-To: Dave Taht <dave.taht@gmail.com>
Cc: CAKE list <cake@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gVHVlLCBKYW4gOSwgMjAyNCBhdCAxMDo0MOKAr0FNIE5pbHMgQW5kcmVhcyBTdmVlIHZpYSBD
YWtlCjxjYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldD4gd3JvdGU6Cgo+IFRob3VnaCBmcmFua2x5
LCBJIGRvbuKAmXQgcGxhbiBvbiB1cGRhdGluZyB0aGUgc2NoX2Nha2UgYW5kIHRjIGJpbmFyaWVz
IHdoZW4gbmV3IGZpcm13YXJlcyBhcmUgcmVsZWFzZWQgYW55bW9yZSwgYXMgdGhleSBkb27igJl0
IHB1Ymxpc2ggdGhlIEdQTCBhcmNoaXZlcyBvbiB0aGVpciB3ZWJwYWdlIGFmdGVyIHRoZSByZWRl
c2lnbiwgYW5kIHRoZXkgZG9u4oCZdCByZXNwb25kIHRvIHJlcXVlc3RzIGZvciB0aGVtIGVpdGhl
ciBieSB0aGUgbG9va3Mgb2YgdGhlIGZvcnVtcy4gU28gaWYgaXQgYnJlYWtzIHRoZXJl4oCZcyBu
b3QgbXVjaCBJIGNhbiBkbyBhbnltb3JlLgoKVGhpcyBpcmtzIG1lIGVub3Jtb3VzbHkuIEl0IGlz
IHRoZSBkaXJlY3Qgb3V0Y29tZSBvZiB0aGUgY2FtYml1bQplbGV2YXRlIGxhd3N1aXQsIHdoZXJl
IGJvdGggY29tcGFuaWVzIGxvc3QsIHRoZSBJU1BzIGxvc3QsIG9wZW4gc291cmNlCnByYWN0aWNl
cyBsb25nIGVzdGFibGlzaGVkIGFib3V0IHB1Ymxpc2hpbmcgc291cmNlcywgbG9zdCwgYW5kIHRo
ZQpsYXd5ZXJzIHdlbnQgb24gdG8gb3RoZXIgbmFzdHkgdGhpbmdzIGxlYXZpbmcgdGhpcyB0cmFp
bCBvZiBhd2Z1bApwcmVjZWRlbnRzICBpbiB0aGVpciB3YWtlLgoKaHR0cHM6Ly93d3cubXRpbi5u
ZXQvYmxvZy91Ym50LXZzLWNhbWJpdW0vCgpJIGRvIG5vdCBrbm93IHdoYXQgdG8gZG8gYWJvdXQg
aXQuIEl0IGFsc28gaXJrcyBtZSB0aGF0IGFzIGEKY29udHJpYnV0b3IgdG8gInNtYXJ0IHF1ZXVl
cyIgdGhleSBhcmUgbm90IG1haW50YWluaW5nIGl0IHdlbGwuCgo+Cj4gQmVzdCBSZWdhcmRzLAo+
IE5pbHMgQW5kcmVhcyBTdmVlCj4KPiBPbiBKYW4gMywgMjAyNCwgYXQgMTQ6NDQsIFBldGUgSGVp
c3QgdmlhIENha2UgPGNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0PiB3cm90ZToKPgo+IE9uIFR1
ZSwgMjAyNC0wMS0wMiBhdCAxMDo1OSAtMDgwMCwgZGF2ZSBzZWRkb24gdmlhIENha2Ugd3JvdGU6
Cj4KPiBJIHRob3VnaHQgcGVvcGxlIG1pZ2h0IGJlIGludGVyZXN0ZWQgdG8gc2VlIHdoYXQgVWJp
cXVpdHkvVW5pZmkgaXMKPiBkb2luZyB3aXRoICJTbWFydCBRdWV1ZXMiIG9uIHRoZWlyIGRldmlj
ZXMuICBUaGUgZG9jdW1lbnRhdGlvbiBvbgo+IHRoZWlyIHdlYnNpdGUgaXMgbm90IHZlcnkgaW5m
b3JtYXRpdmUuCj4gPHNuaXA+Cj4gIlNtYXJ0IFF1ZXVlIiBJbXBsZW1lbnRhdGlvbgo+Cj4gTG9v
a3MgbGlrZSB0aGV5IG9ubHkgYXBwbHkgdGMgcWRpc2NzIHRvIHRoZSBFdGgyLCBhbmQgc2FkbHkg
dGhpcyBpcwo+IE5PVCBjYWtlLCBidXQgZnFfY29kZWwuCj4KPiBBbmQgY2FrZSBpc24ndCBhdmFp
bGFibGUgOigKPgo+IHJvb3RAVVNHLVByby00On4jIHRjIHFkaXNjIHJlcGxhY2UgZGV2IGV0aDAg
Y2FrZSBiYW5kd2lkdGggMTAwbSBydHQKPiAyMG1zCj4gVW5rbm93biBxZGlzYyAiY2FrZSIsIGhl
bmNlIG9wdGlvbiAiYmFuZHdpZHRoIiBpcyB1bnBhcnNhYmxlCj4KPgo+IEhpIERhdmUsIHRoZXJl
J3MgYSBjb21tdW5pdHkgY29udHJpYnV0ZWQgdmVyc2lvbiBvZiBDYWtlIGZvciBFZGdlUm91dGVy
Cj4gZGV2aWNlcyB0aGF0IEkndmUgYmVlbiB1c2luZyBmb3IgeWVhcnMgb24gcHJvZHVjdGlvbiBF
Ui1YJ3M6Cj4KPiBodHRwczovL2NvbW11bml0eS51aS5jb20vcXVlc3Rpb25zL0Nha2UtY29tcGls
ZWQtZm9yLXRoZS1FZGdlUm91dGVyLWRldmljZXMvZmMxZmYyN2MtZjMyMS00MzQ0LTg3MzctZmNj
NzU1Y2FlOGEyCj4KPiBJIGRvbid0IHRoaW5rIHRoYXQgd29ya3MgZm9yIFVuaUZpL1VTRyBkZXZp
Y2VzLCBob3dldmVyLCBhbmQgb25lIHNob3VsZAo+IG5vdGUgdGhlIGRpc2NsYWltZXIgYW5kIGJl
IGNhcmVmdWwgd2hlbiBpbnN0YWxsaW5nIGl0LiBBbHNvLCBpdCBtdXN0IGJlCj4gcmUtaW5zdGFs
bGVkIGFmdGVyIGV2ZXJ5IHVwZ3JhZGUuCj4KPiBDaGVlcnMsCj4gUGV0ZQo+Cj4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBDYWtlIG1haWxpbmcgbGlz
dAo+IENha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cj4gaHR0cHM6Ly9saXN0cy5idWZmZXJibG9h
dC5uZXQvbGlzdGluZm8vY2FrZQo+Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwo+IENha2UgbWFpbGluZyBsaXN0Cj4gQ2FrZUBsaXN0cy5idWZmZXJi
bG9hdC5uZXQKPiBodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCgoK
Ci0tIAo0MCB5ZWFycyBvZiBuZXQgaGlzdG9yeSwgYSBjb3VwbGUgc29uZ3M6Cmh0dHBzOi8vd3d3
LnlvdXR1YmUuY29tL3dhdGNoP3Y9RDlSR1g2UUZtNUUKRGF2ZSBUw6RodCBDU08sIExpYnJlUW9z
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFp
bGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVy
YmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK
