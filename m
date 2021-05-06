Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 8483F375C81
	for <lists+cake@lfdr.de>; Thu,  6 May 2021 22:57:56 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 0C2273CB41;
	Thu,  6 May 2021 16:57:55 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1620334675;
	bh=hbbRAP5GcBETWoAo88HXHkAqfSuHkXRGdAehWB6XdZ8=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=GyQuWHFxwxLgrJlRDJLt9LzisYfhY3fKDfvOkF+kGJWEEnyDPJOZx7nbDs8QWhiTC
	 tiWdxON5RL6j1hAh9RbYPGxCUMaOsKEi8wODNjH3LZXYz/7bJCsUdqJNXy76egjzdg
	 O43lAc9gXFnjGvHiH3po+mE8742rggXYA3Pn59cnytKfHKgqZOFDCbDhtJx9Tm+5nQ
	 UVqs5g9qWX9phtMUEJmWX0GGRnfjQRS+qpXkr4hy7W+u+9jtRJCSDuTUup0fxM9cK0
	 AXCYxCQJ8/RcuhSuOQ1uuJwhl7p/kyRgr5Xt9uOm/KKfJLtEFkpZrp8oQYZjBzG7VR
	 Py6KWT0gCOgoQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from resqmta-po-02v.sys.comcast.net (resqmta-po-02v.sys.comcast.net
 [IPv6:2001:558:fe16:19:96:114:154:161])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 8CB543B2A4
 for <cake@lists.bufferbloat.net>; Thu,  6 May 2021 16:57:53 -0400 (EDT)
Received: from resomta-po-10v.sys.comcast.net ([96.114.154.234])
 by resqmta-po-02v.sys.comcast.net with ESMTP
 id ekRGltnv9uioUel4Clv5pj; Thu, 06 May 2021 20:57:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=comcastmailservice.net; s=20180828_2048; t=1620334672;
 bh=JdEfseiVu51wUsfkS6E1VvJGnnCCJ2hOHV787a4iPJc=;
 h=Received:Received:Received:Date:From:To:Subject:Message-ID:
 MIME-Version:Content-Type;
 b=rQUrCUMDgNIeGq6J3rkvsgh/84YlzOMxTLHWFjrXAryqxPWNWpW6yiKT78DZQYS9u
 8Ki9BSv7tdPjXDo1nfloMFCDPuT5rxrKIugmrtJV1APKhijqB4rcWxw3r6lL2+MKtl
 IJLDaKQIXGKUxa5OZeOPalNYX3cqexdfbAX22OqPyCEcX4YSfyI5JShEcBTbAuWsAw
 NxyJ1EcV7Ya8gbhICUyIY+e3x57Tt7ozfTRbhke3odmCbHiwqnS68BE8ph/kJoyBpu
 JJKrkflVl7ZtRQ55p1Nkl4ZnYhxealcYARIkdSBlIWLzowmKFws4D+xBQ5VMPlXGgT
 mpYGJfIpqqoVg==
Received: from home.sewingwitch.com ([IPv6:2601:644:881:42b0::3f1])
 by resomta-po-10v.sys.comcast.net with ESMTPA
 id el47l1EhS9Snlel4Cl0Dd1; Thu, 06 May 2021 20:57:52 +0000
X-Xfinity-VMeta: sc=-100.00;st=legit
Received: from [10.96.7.39] ([10.96.7.39]) (authenticated bits=0)
 by home.sewingwitch.com (8.14.7/8.14.7) with ESMTP id 146Kvab7020773
 for <cake@lists.bufferbloat.net>; Thu, 6 May 2021 13:57:36 -0700
DKIM-Filter: OpenDKIM Filter v2.11.0 home.sewingwitch.com 146Kvab7020773
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sewingwitch.com;
 s=default; t=1620334656;
 bh=JdEfseiVu51wUsfkS6E1VvJGnnCCJ2hOHV787a4iPJc=;
 h=Date:From:To:Subject:In-Reply-To:References:From;
 b=ho0Phgdse7b8EpCFjI/OXmfAEonNupYIs0nAxmxqhYPHhx/zUf6Ew2z/FK/zb5txV
 +eowKLpvXM8g1p5TzWxk5HKPwo2D88wYNdXr9QdWM36TlrNsmt5XqF4GIzDTz+QdCp
 bqqHGaxlzDbGjr4LrKCtvXCe+z/xSCjezTHroVCU=
Date: Thu, 06 May 2021 13:57:34 -0700
From: Kenneth Porter <shiva@sewingwitch.com>
To: Cake List <cake@lists.bufferbloat.net>
Message-ID: <5B0D21BE2B473B7F31098603@[172.27.17.193]>
In-Reply-To: <CAA93jw4pgohtn7HkqjYgrBHayKxoBUpmGU=52YWfaG4FTdyMWQ@mail.gmail.com>
References: <CAA93jw4pgohtn7HkqjYgrBHayKxoBUpmGU=52YWfaG4FTdyMWQ@mail.gmail.com>
X-Mailer: Mulberry/4.1.0a3 (Win32)
MIME-Version: 1.0
Content-Disposition: inline; size=986
X-Scanned-By: MIMEDefang 2.84 on 10.96.0.132
Subject: Re: [Cake] centos 8 and cake and flent
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

LS1PbiBUaHVyc2RheSwgTWF5IDA2LCAyMDIxIDExOjQ5IEFNIC0wNzAwIERhdmUgVGFodCA8ZGF2
ZS50YWh0QGdtYWlsLmNvbT4gCndyb3RlOgoKPiBJcyB0aGVyZSBhIHl1bS9ycG0gZXhwZXJ0IGlu
IHRoZSBob3VzZT8gZmxlbnQgZG9lcyBub3QgYXBwZWFyIHRvIGJlCj4gcGFja2FnZWQgdXAgZm9y
IHRoaXMgKD8pLAo+IG5laXRoZXIgaXMgbmV0cGVyZiBvciBpcnR0LiBJcyB0aGVyZSBhIHJlcG8g
SSBjb3VsZCB1c2U/CgpJIHN1Z2dlc3QgdXNpbmcgRmVkb3JhIENvcHIgdG8gaG9zdCBhIHJlcG8u
IEkgdXNlIEJhY2t1cFBDIG9uIG15IENlbnRPUyA3IApzZXJ2ZXJzIHRvIGJhY2sgdXAgbXkgV2lu
ZG93cyBib3hlcyBhbmQgSSBnZXQgdGhlIGxhdGVzdCB2ZXJzaW9uIGZyb20gYSAKQ29wciByZXBv
LiBZb3UgZmVlZCBpdCBhIHNvdXJjZSBSUE0gYW5kIGl0IGJ1aWxkcyBpdCBmb3IgdmFyaW91cyBk
aXN0cm8gCnZlcnNpb25zIGFuZCBwcm9kdWNlcyBhIHJlcG8uCgo8aHR0cHM6Ly9jb3ByLmZlZG9y
YWluZnJhY2xvdWQub3JnLz4KCkhlcmUncyBhbiBleGFtcGxlIG9mIHdoYXQncyBwcm9kdWNlZDoK
CjxodHRwczovL2NvcHIuZmVkb3JhaW5mcmFjbG91ZC5vcmcvY29wcnMvaG9iYmVzMTA2OS9CYWNr
dXBQQy8+Cgo+IHRjIGlzIG5vdCBzdXBwbGllZCBieSBkZWZhdWx0IGFwcGFyZW50bHkgYnV0IEkg
d2FzIHJlbGlldmVkIHRvIHNlZQo+IG9uY2UgSSBidWlsdCBpcHJvdXRlIGhlYWQgdGhhdAo+IGZx
X2NvZGVsIHdhcyBpbmRlZWQgdGhlIGRlZmF1bHQgc2NoZWR1bGVyIGZvciBjZW50b3MuIEJ1dCBq
ZWV6ZSwgdGMgaXMKPiBub3Qgc3VwcGxpZWQgYnkgZGVmYXVsdCBpbiBjZW50b3M/Cgp0YyBpcyBp
biB0aGUgc3RhbmRhcmQgaXByb3V0ZSBwYWNrYWdlIGZvciBDZW50T1MgNyBhbmQgaW4gaXByb3V0
ZS10YyBmb3IgCkNlbnRPUyA4LiBUcnkgInl1bSB3aGF0cHJvdmlkZXMgdGMiLgoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0
CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0
L2xpc3RpbmZvL2Nha2UK
