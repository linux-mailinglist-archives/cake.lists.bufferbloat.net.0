Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D374828ADC
	for <lists+cake@lfdr.de>; Tue,  9 Jan 2024 18:17:31 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 910EB3CB4B;
	Tue,  9 Jan 2024 12:17:30 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1704820650;
	bh=ZrjzTZI8dvWarPrX/xVtXZJ/Jt3r8rok8dUJXQ7Oos0=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=HUQZ0xuVYkUZbGTBLn+jJD4PjsfX006Z+AuiWHxGGM1EDW+ztr34zEYgNK+d+yQEj
	 ikgzrrc2Wg4HGMmF9FW6Nk1tgeuUf4DWBGtkOXNv9ko8kw0FohpQhqtHNlBo3g4y7+
	 CIRXrkX1/Xet6/7APH2ofoGLtbe5inLYMwdpCPJLcHOGSj04wOZdvd0fSXrapKVkyk
	 m5OxsGjmJhMXaYG3KodudoALLxrLqTihXmSHvUAFj8KijJOEnCnEtiG17AOHANTbS0
	 JHeTS2X1r2wJ1fzxv5RiENsivKgR2Wh4Fnb4SkabNmIVZAjAv6tIA4Fpua8kI0Xkpt
	 zpFE6XE7+AeIw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-pg1-x52f.google.com (mail-pg1-x52f.google.com
 [IPv6:2607:f8b0:4864:20::52f])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 555DC3B2A4
 for <cake@lists.bufferbloat.net>; Tue,  9 Jan 2024 12:17:29 -0500 (EST)
Received: by mail-pg1-x52f.google.com with SMTP id
 41be03b00d2f7-5ce2aada130so1320359a12.1
 for <cake@lists.bufferbloat.net>; Tue, 09 Jan 2024 09:17:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1704820648; x=1705425448; darn=lists.bufferbloat.net;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=g9s8t9KrALE2hrWbuvIJYAMhlBlWFa2h3b+/5mUuVNA=;
 b=S6BgmGDkGxMv5WOQ+4MbnHQCEMXhv5uOrxM4AIiqAe5+tLy7lxghlt9w+Z9evsCxZK
 luSsjSIAh5a1NbIccRNPVqufzigbGI18odEmd1ot+iFvc3Igaf9dCc1YuPq/Ne2MAF7v
 jy7b/07KAsq78fsgEtvw5rcNhRVGQKqpbnTC2UHZ+DdBNnXYytizCQWmStWWmoulnYW5
 z1hUdkkpQIzFTtsjV03IIUHrCMMjNoIS+b01fG5keFePeYKYigTGyCFbmHmi7t61Js0D
 8cuQO4WZmH/buVQhUSI+pUZolSjvr3NHICZVGrGLrYhnWZy1ciOQdW6yP9FajdX9GmuH
 3GFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1704820648; x=1705425448;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=g9s8t9KrALE2hrWbuvIJYAMhlBlWFa2h3b+/5mUuVNA=;
 b=uHimwWy/IYTPMw3bSdeQlsUz9iyv1TbPG5+vCiNMA8IhYdVJ7YkPwpXBQFzLU78lp7
 2btX7Vs7tA485GXtbgB+dMLkDdauTb4climQU6kB6pdrd5AiSorzzDKGRtCPPl6j7jac
 M/QZjW2QRbgL0gU0HkWqUeeCWdMkbARQ0i1R3Kzf5ztn4a3J8DdgIbd6TU6WEnMqxpoq
 1NjCbUMHoJrdEQTgb1BVAjmjz2xserVwfzzxMToUwFAjxVhobrZcmb6QenAUEqmnQ2x5
 6gWi0Svs+48Iaa2ydn64/uJNToRKeMHHvsq7byunyP2YsjLc2fz0sNf/TcGufBdFvQdk
 1Lvw==
X-Gm-Message-State: AOJu0YwlsCm+1g/NiNJotnJpJ2CJgJd6QECD7EgiVSFbESkQN8EfD0zV
 j85BmjJ1rnAaNWmvtmnvkKZ7cV/TyPLiYpAqN7VgRsx4kKc=
X-Google-Smtp-Source: AGHT+IFXfGXOD+k8AU/e7hUILrYPQHYCRmqPZSqMHV/TyM3WnthfrAC8acE4unNI4PbSRLQJxU8y4Q1V84Dd9Pj1Tg4=
X-Received: by 2002:a05:6a20:2da9:b0:199:7fd2:cc with SMTP id
 bf41-20020a056a202da900b001997fd200ccmr2275680pzb.122.1704820648135; Tue, 09
 Jan 2024 09:17:28 -0800 (PST)
MIME-Version: 1.0
References: <CANypexRYDqtsuj2vwX0qXWA=hXN3KZ5CJn5+vZRbm=Dikwh1Aw@mail.gmail.com>
 <deed5fd13e38d17c8b6716f4fdad64cba896385b.camel@heistp.net>
 <65325791-A1D1-4E21-9F1D-D17737BCFF0F@lochnair.net>
 <CAA93jw4K2sgRfXieAV_tfjBpRrK3kEke1QhMk2tp+PqLMh8w4Q@mail.gmail.com>
 <867A6BD3-28C6-467A-977C-932DFB6B8E08@lochnair.net>
 <CANypexRnG6zLn0iSiEg7ehCUZMRXWi4C03oBJDb+u9QtZB7DYA@mail.gmail.com>
In-Reply-To: <CANypexRnG6zLn0iSiEg7ehCUZMRXWi4C03oBJDb+u9QtZB7DYA@mail.gmail.com>
Date: Tue, 9 Jan 2024 12:17:16 -0500
Message-ID: <CAA93jw7XLuJgq_5VzPchRr+afS-Gxem5ZxVs8uggKUNkoD3x4g@mail.gmail.com>
To: dave seddon <dave.seddon.ca@gmail.com>
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

UHJpbmNpcGFsIGxpbWl0YXRpb24gZm9yIGxpYnJlcW9zIG9uIGEgc21hbGwgYm94IGlzIGhhcyB0
byBoYXZlCm11bHRpcGxlIGhhcmR3YXJlIHF1ZXVlcyBhbmQgc3VwcG9ydCBlQlBGLgoKU2VyaW91
c2x5IGZvbGtzLCBydW5uaW5nIGxpYnJlcW9zIGF0IGhvbWUgaXMgKnNlcmlvdXMgb3ZlcmtpbGwq
LAphbHRob3VnaCBJIGhhdmUgdG8gYWRtaXQgdGhlIHRyYWZmaWMgZ3JhcGhzIGFyZSBtZXNtZXJp
emluZyEhISBPbmUgb2YKb3VyIElTUHMgaGFzIGJlZW4gc2V0dGluZyB0aGVtIHRvIG11c2ljOgpo
dHRwczovL3d3dy55b3V0dWJlLmNvbS9AdHJlbmRhbHRvZXdzNzE0MwoKSGVyYmVydCBoYXMgYmVl
biB3b3JraW5nIG9uIGFkZGluZyBhbGwgc29ydHMgb2Ygb3RoZXIgYW5hbHl0aWNzIHRvIGl0IGFs
c28uCgpPbiBUdWUsIEphbiA5LCAyMDI0IGF0IDEyOjA34oCvUE0gZGF2ZSBzZWRkb24gPGRhdmUu
c2VkZG9uLmNhQGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBOaWxzIC0gSSBndWVzcyB5b3UgY291bGQg
cnVuIExpYnJlUW9TIG9uIE4xMDA/Cj4KPiBPbiBUdWUsIEphbiA5LCAyMDI0IGF0IDg6NTfigK9B
TSBOaWxzIEFuZHJlYXMgU3ZlZSB2aWEgQ2FrZSA8Y2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQ+
IHdyb3RlOgo+Pgo+PiBPbiBKYW4gOSwgMjAyNCwgYXQgMTc6MDUsIERhdmUgVGFodCA8ZGF2ZS50
YWh0QGdtYWlsLmNvbT4gd3JvdGU6Cj4+Cj4+IE9uIFR1ZSwgSmFuIDksIDIwMjQgYXQgMTA6NDDi
gK9BTSBOaWxzIEFuZHJlYXMgU3ZlZSB2aWEgQ2FrZQo+PiA8Y2FrZUBsaXN0cy5idWZmZXJibG9h
dC5uZXQ+IHdyb3RlOgo+Pgo+PiBUaG91Z2ggZnJhbmtseSwgSSBkb27igJl0IHBsYW4gb24gdXBk
YXRpbmcgdGhlIHNjaF9jYWtlIGFuZCB0YyBiaW5hcmllcyB3aGVuIG5ldyBmaXJtd2FyZXMgYXJl
IHJlbGVhc2VkIGFueW1vcmUsIGFzIHRoZXkgZG9u4oCZdCBwdWJsaXNoIHRoZSBHUEwgYXJjaGl2
ZXMgb24gdGhlaXIgd2VicGFnZSBhZnRlciB0aGUgcmVkZXNpZ24sIGFuZCB0aGV5IGRvbuKAmXQg
cmVzcG9uZCB0byByZXF1ZXN0cyBmb3IgdGhlbSBlaXRoZXIgYnkgdGhlIGxvb2tzIG9mIHRoZSBm
b3J1bXMuIFNvIGlmIGl0IGJyZWFrcyB0aGVyZeKAmXMgbm90IG11Y2ggSSBjYW4gZG8gYW55bW9y
ZS4KPj4KPj4KPj4gVGhpcyBpcmtzIG1lIGVub3Jtb3VzbHkuIEl0IGlzIHRoZSBkaXJlY3Qgb3V0
Y29tZSBvZiB0aGUgY2FtYml1bQo+PiBlbGV2YXRlIGxhd3N1aXQsIHdoZXJlIGJvdGggY29tcGFu
aWVzIGxvc3QsIHRoZSBJU1BzIGxvc3QsIG9wZW4gc291cmNlCj4+IHByYWN0aWNlcyBsb25nIGVz
dGFibGlzaGVkIGFib3V0IHB1Ymxpc2hpbmcgc291cmNlcywgbG9zdCwgYW5kIHRoZQo+PiBsYXd5
ZXJzIHdlbnQgb24gdG8gb3RoZXIgbmFzdHkgdGhpbmdzIGxlYXZpbmcgdGhpcyB0cmFpbCBvZiBh
d2Z1bAo+PiBwcmVjZWRlbnRzICBpbiB0aGVpciB3YWtlLgo+Pgo+PiBodHRwczovL3d3dy5tdGlu
Lm5ldC9ibG9nL3VibnQtdnMtY2FtYml1bS8KPj4KPj4gV293LCBoYWRu4oCZdCByZWFkIGFib3V0
IHRoYXQuIFRoZXkgZXZlbiBzdWVkIGFuIElTUCBqdXN0IGZvciB1c2luZyBDYW1iaXVt4oCZcyBz
b2Z0d2FyZSBvbiB0aGVpciBoYXJkd2FyZT8KPj4gVGhhdCBpcyBjcmF6eSwganVzdCBldmlsIGNv
cnBvcmF0ZSBsYXd5ZXJzIGRvaW5nIHRoZWlyIHRoaW5nIEkgZ3Vlc3MuCj4+Cj4+IEkgZG8gbm90
IGtub3cgd2hhdCB0byBkbyBhYm91dCBpdC4gSXQgYWxzbyBpcmtzIG1lIHRoYXQgYXMgYQo+PiBj
b250cmlidXRvciB0byAic21hcnQgcXVldWVzIiB0aGV5IGFyZSBub3QgbWFpbnRhaW5pbmcgaXQg
d2VsbC4KPj4KPj4gSXQgbGVhdmVzIHNvbWV0aGluZyB0byBiZSBkZXNpcmVkIHllcywgYW5kIEkg
d291bGTigJl2ZSBob3BlZCB0byBzZWUgQ0FLRSBpbmNsdWRlZCB0b28gb2YgY291cnNlLAo+PiBi
dXQgZXZlbiBXaXJlR3VhcmQgaXMgb25seSBhdmFpbGFibGUgaW4gdGhlIGxhdGVzdCByZWxlYXNl
IGNhbmRpZGF0ZXMgd2l0aCB0aGUgcmVkZXNpZ25lZCB3ZWIgVUksIHNvIEnigJltIG5vdCBob2xk
aW5nIG15IGJyZWF0aC4KPj4KPj4gSSBzdGlsbCBoYXZlIGFuIEVkZ2VSb3V0ZXIgNCB0aGF0IHNl
cnZlcyB0aGUgZmFtaWx5IGZhcm0gYW5kIG9uZSBvZiB0aGUgOC1wb3J0IHN3aXRjaGVzIHVuZGVy
IG15IGRlc2ssIGlmIG9ubHkgYmVjYXVzZSBJIGRvbuKAmXQgd2FubmEgc3BlbmQgbW9uZXkgb24g
cmVwbGFjaW5nIHRoZW0sIGFuZCB0aGV5IGRvIHNlcnZlIHRoZWlyIHB1cnBvc2UuCj4+Cj4+IEni
gJl2ZSBzaW5jZSBtb3ZlZCB0aG91Z2gsIGFuZCBub3cgbGl2ZSBpbiBhbiBhcmVhIHRoYXQgaGFz
IEZUVEgsIHNvIEkgbmVlZGVkIHNvbWV0aGluZyBiZWVmaWVyIHRvIGhhbmRsZSBDQUtFIG9uIGEg
NzUwLzc1MCBzdWJzY3JpcHRpb24sIGJlY2F1c2Ugb2J2aW91c2x5IHRoZXJl4oCZcyBzdGlsbCBi
bG9hdCBldmVuIG9uIHRoYXQgOykKPj4KPj4gT25lIG9mIHRob3NlIENoaW5lc2UgYm94ZXMgd2l0
aCBhIE4xMDAgaW4gaXQgYW5kIE9wZW5XcnQgb24gdG9wIHdvcmtzIHdvbmRlcnMgOikKPj4KPj4g
QmVzdCBSZWdhcmRzLAo+PiBOaWxzIEFuZHJlYXMgU3ZlZQo+PiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBDYWtlIG1haWxpbmcgbGlzdAo+PiBDYWtl
QGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldAo+PiBodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9s
aXN0aW5mby9jYWtlCj4KPgo+Cj4gLS0KPiBSZWdhcmRzLAo+IERhdmUgU2VkZG9uCj4gKzEgNDE1
IDg1NyA1MTAyCgoKCi0tIAo0MCB5ZWFycyBvZiBuZXQgaGlzdG9yeSwgYSBjb3VwbGUgc29uZ3M6
Cmh0dHBzOi8vd3d3LnlvdXR1YmUuY29tL3dhdGNoP3Y9RDlSR1g2UUZtNUUKRGF2ZSBUw6RodCBD
U08sIExpYnJlUW9zCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8v
bGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK
