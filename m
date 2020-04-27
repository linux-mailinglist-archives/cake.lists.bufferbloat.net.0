Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 00BC31B952B
	for <lists+cake@lfdr.de>; Mon, 27 Apr 2020 04:46:15 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id A86F63CB44;
	Sun, 26 Apr 2020 22:46:10 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1587955570;
	bh=3ESFNyGarDrzj+xOf/0yMZaOzYXvv5xd9iSz8QbO/E4=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZSFY4yfbzschvX0STIBKfOB3d9D9erCK9ZK7AVVn82UdHBiil1I/YqCQcZA5kKAMd
	 NPOnKKumKXpr5zUwE9GA8K9F1ds17HMLeLH3ivlLi+9Mz4uue2be9Q5t+Z5kWJZxhf
	 OebuH1Mw0U4CkrcO3PfVW9/xy4qk1/VIObuOgdNsNc/xBNn26cqRDE8KH8+kl/HLRO
	 g56a6d3idN6x8X5lUUp16wZzxA/vkQZ4lc6OGZzC+aRW48xrHfBsFRoR6Cs3RG7soS
	 feymGilTe8UYTbIQ/wPXaF01W4xG1DTTTM1xLNsfPNBV5CMc+0TJ3VetrMya8h5Zbw
	 P70hqQzHH/4Vg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-il1-x130.google.com (mail-il1-x130.google.com
 [IPv6:2607:f8b0:4864:20::130])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 499EE3B2A4;
 Sun, 26 Apr 2020 22:46:09 -0400 (EDT)
Received: by mail-il1-x130.google.com with SMTP id x2so15317771ilp.13;
 Sun, 26 Apr 2020 19:46:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=L2dwFt+hxkQg/gWg5bg+kdRl22FQlptjTpXD2pMVrDs=;
 b=Kj3yYtsoI4z8Zzr+GaCwbemN6I+DeJJjocAVhE3pHbMtRj92WQdOEr9bmEdEVNmEQu
 eTCPLfZ1UJ6taXMxGA4512cHwEhFFdvrGiE8eYOruFDZuF+rLs2xpTTsmQJ4e1eSedgq
 ETG/sk/SuTlO8staN35aXQJntl4UgGYKknozLzRZSoUbmp6fLvNZTNdF6aL/hz6sAN5F
 OyJb4RyeljlNzc2fS2yaYYV2cqPsSnxrezhKuNmtV46aBH3H8nWTbSCcvQBhkZnHMRKP
 QcIDhYmxB4mboH0Cw80QHYEUhx3rNcSuIb+eSecB+E/LSsh1dhGarZoYm+OaZ2zJr6do
 6xMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=L2dwFt+hxkQg/gWg5bg+kdRl22FQlptjTpXD2pMVrDs=;
 b=K0ENqAjf1GxA3XUF3l/Fw++PGG42pHDR5nVDB/zWOgv/CCf/+jOGg4Lht62Az1b5Br
 X1OEn/1+a+ksTbTzdGT4KUQ0eHhpIhpZadIMTV35RJoqkrN4pU3nUfbRTCoSTMj/aByy
 NjWr7Wgt+ofONJh+9tn6CMsBEu7FOpyXqPaswvTgy2zM+90gd1WB78H/B9fXDNA+y6nf
 ZFo7AhxUwlaoLBbO+LujEJgYpemiaEtFFRCHwDEh4C+wRrK6ObkbZvv9w2YELeXipBJs
 nHUPtHw4nw4wiKs80r6bMH0tSbD4MVFujH0Fa8Nm4CN9j5dsQt3jcC1dNHsp1MHjaXFx
 iuXg==
X-Gm-Message-State: AGi0PuYqED1Fi78VfD6AnEzt9fTDsLqsgv1kwyIgWMAZxElaPHjYfsfK
 ZbiFkUOgRmYrPSLgAVTWyX6ajdUFeYe8LTsRsxw=
X-Google-Smtp-Source: APiQypJ6B+YJTN2A4LNXBAh8bdhZv9iNKkAZjw727NaZ239dvkBvLnWMPmzCIqOHmQ/XI9Deh1+zTViH3mq8iyFErjo=
X-Received: by 2002:a92:4014:: with SMTP id n20mr18961702ila.249.1587955568815; 
 Sun, 26 Apr 2020 19:46:08 -0700 (PDT)
MIME-Version: 1.0
References: <CALQXh-P1JGWHXQYnRd68woqj-C8CLxaxeD5=4xjYLYiLubkSeQ@mail.gmail.com>
 <1586011622.632930657@apps.rackspace.com>
 <CAA93jw7CDCVfY0pspLbSaSqf2_0s_23oXsGfEy1x_MHQKEkUNQ@mail.gmail.com>
 <CALQXh-Ot+ZE8M9num31K173pWF5SqDMFizjgUcP13ZCw06KhXw@mail.gmail.com>
In-Reply-To: <CALQXh-Ot+ZE8M9num31K173pWF5SqDMFizjgUcP13ZCw06KhXw@mail.gmail.com>
From: Dave Taht <dave.taht@gmail.com>
Date: Sun, 26 Apr 2020 19:45:57 -0700
Message-ID: <CAA93jw4WfYCVrG9uGA7BTQr2kKrKXBYJ9xfWM4VRicUDiuqaCw@mail.gmail.com>
To: Aaron Wood <woody77@gmail.com>
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
 bloat <bloat@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

YW55b25lIGdvdCBhcm91bmQgdG8gaGFja2luZyBvbiB0aGlzIGJvYXJkIHlldD8KCk9uIFNhdCwg
QXByIDQsIDIwMjAgYXQgOToyNyBBTSBBYXJvbiBXb29kIDx3b29keTc3QGdtYWlsLmNvbT4gd3Jv
dGU6Cj4KPiBUaGUgY29tcGFyaXNvbiBvZiBjaGlwc2V0IHBlcmZvcm1hbmNlIGxpbmsgKHRvIE9w
ZW1XUlQgZm9ydW1zKSB0aGF0IHdlbnQgb3V0IGhhZCB0aGlzIGNoaXAsIHRoZSBKNDEwNSBhcyB0
aGUgZmFzdGVzdC4gIEFibGUgdG8gZG8gYSBnaWdhYml0IHdpdGggY2FrZSAobmVhcmx5IGFibGUg
dG8gZG8gaXQgaW4gYm90aCBkaXJlY3Rpb25zKS4KPgo+IEkgdGhpbmsgdGhpcyBoYXMgcmVwbGFj
ZWQgdGhlIGFwdTIgYXMgdGhlIGJvYXJkIEnigJltIGdvaW5nIHdpdGggYXMgbXkgZWRnZSByb3V0
ZXIuCj4KPiBPbiBTYXQsIEFwciA0LCAyMDIwIGF0IDk6MTAgQU0gRGF2ZSBUYWh0IDxkYXZlLnRh
aHRAZ21haWwuY29tPiB3cm90ZToKPj4KPj4gSGlzdG9yaWNhbGx5IEkndmUgZm91bmQgdGhlICJD
ZWxlcm9uIiBjaGlwcyByYXRoZXIgd2VhaywgYnV0IGl0J3MganVzdAo+PiBhIGJyYW5kLiBJIGhh
dmVuJ3QgdGhlIGZvZ2dpZXN0IGlkZWEgaG93IHdlbGwgdGhpcyB2YXJpYW50IHdpbGwKPj4gcGVy
Zm9ybS4KPj4KPj4gVGhlIGludGVsIGV0aGVybmV0IGNoaXBzIGFyZSBiZXN0IG9mIGJyZWVkIGlu
IGxpbnV4LCBob3dldmVyLiBJdCdzCj4+IGJlZW4gbXkgaG9wZSB0aGF0IHRoZSAyMTEgdmFyaWFu
dCB3aXRoIHRoZSB0aW1lZCBuZXR3b3JraW5nIHN1cHBvcnQKPj4gd291bGQgc2hvdyB1cCBpbiB0
aGUgZmllbGQgKHNjaF9ldHgpIHNvIHdlIGNvdWxkIGZpZGRsZSB3aXRoIHRoYXQsCj4+ICh0aGUg
YXB1MnMgYXJlbid0IHVzaW5nIHRoYXQgdmVyc2lvbikgYnV0IEkgY2Fubm90IGZvciB0aGUgbGlm
ZSBvZiBtZQo+PiByZW1lbWJlciB0aGUgcmlnaHQga2V5d29yZHMgdG8gbG9vayBpdCB1cCBhdCB0
aGUgbW9tZW50LiB0aGlzIGZlYXR1cmUKPj4gbGV0cyB5b3UgcHJvZ3JhbSB3aGVuIGEgcGFja2V0
IGVtZXJnZXMgZnJvbSB0aGUgZHJpdmVyIGFuZCBpcyBzb3J0IG9mCj4+IGEgd2hvbGUgbmV3IGJh
bGxnYW1lIHdoZW4gaXQgY29tZXMgdG8gc2NoZWR1bGluZyAtIHRoZXJlIGhhc24ndCBiZWVuCj4+
IGFuIGFxbSBkZXNpZ25lZCBmb3IgaXQsIGFuZCB5b3UgY2FuIGRvIGZxIGJ5IHBsYXlpbmcgdHJp
Y2tzIHdpdGggdGhlCj4+IHNlbnQgdGltZXN0YW1wLgo+Pgo+PiBBbGwgdGhlIG90aGVyIGZlYXR1
cmVzIGxvb2sgcmF0aGVyIG5pY2Ugb24gdGhpcyBib2FyZC4KPj4KPj4gT24gU2F0LCBBcHIgNCwg
MjAyMCBhdCA3OjQ3IEFNIERhdmlkIFAuIFJlZWQgPGRwcmVlZEBkZWVwcGx1bS5jb20+IHdyb3Rl
Ogo+PiA+Cj4+ID4gVGhhbmtzISBJIG9yZGVyZWQgb25lIGp1c3Qgbm93LiBJbiBteSBleHBlcmll
bmNlLCB0aGlzIGNvbXBhbnkgZG9lcyByYXRoZXIgbmVhdCBzdHVmZi4gVGhlaXIgWE1PUyBiYXNl
ZCBtaWNyb3Bob25lIGFycmF5IChSZVNwZWFrZXIpIGlzIHJlYWxseSB1c2VmdWwuIFdoYXQncyB0
aGUgc3RhdGUgb2YgcGxheSBpbiBMaW51eC9PcGVuV1JUIGZvciBJbnRlbCA5NTYwIGNhcGFiaWxp
dGllcyByZWdhcmRpbmcgQVFNPwo+PiA+Cj4+ID4gT24gU2F0dXJkYXksIEFwcmlsIDQsIDIwMjAg
MTI6MTJhbSwgIkFhcm9uIFdvb2QiIDx3b29keTc3QGdtYWlsLmNvbT4gc2FpZDoKPj4gPgo+PiA+
ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4gPiA+
IENha2UgbWFpbGluZyBsaXN0Cj4+ID4gPiBDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldAo+PiA+
ID4gaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo+PiA+ID4gaHR0
cHM6Ly93d3cuc2VlZWRzdHVkaW8uY29tL09EWVNTRVktWDg2SjQxMDU4MDAtcC00NDQ1Lmh0bWwK
Pj4gPiA+Cj4+ID4gPiBxdWFkLWNvcmUgQ2VsZXJvbiBKNDEwNSAxLjUtMi41IEdIeiB4NjQKPj4g
PiA+IDhHQiBSYW0KPj4gPiA+IDJ4IGkyMTF0IGludGVsIGV0aGVybmV0IGNvbnRyb2xsZXJzCj4+
ID4gPiBpbnRlbCA5NTYwIDgwMi4xMWFjICh3YXZlMikgd2lmaS9ibHVldG9vdGggY2hpcHNldAo+
PiA+ID4gaW50ZWwgYnVpbHQtaW4gZ3JhcGhpY3MKPj4gPiA+IG9uYm9hcmQgQVJNIENvcnRleC1N
MCBhbmQgUlBpICYgQXJkdWlubyBoZWFkZXJzCj4+ID4gPiBtLjIgYW5kIFBDSWUgYWRhcHRlcnMK
Pj4gPiA+IDwkMjAwCj4+ID4gPgo+PiA+Cj4+ID4KPj4gPiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwo+PiA+IEJsb2F0IG1haWxpbmcgbGlzdAo+PiA+IEJs
b2F0QGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldAo+PiA+IGh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQu
bmV0L2xpc3RpbmZvL2Jsb2F0Cj4+Cj4+Cj4+Cj4+IC0tCj4+IE1ha2UgTXVzaWMsIE5vdCBXYXIK
Pj4KPj4gRGF2ZSBUw6RodAo+PiBDVE8sIFRla0xpYnJlLCBMTEMKPj4gaHR0cDovL3d3dy50ZWts
aWJyZS5jb20KPj4gVGVsOiAxLTgzMS00MzUtMDcyOQo+Cj4gLS0KPiAtIFNlbnQgZnJvbSBteSBp
UGhvbmUuCgoKCi0tIApNYWtlIE11c2ljLCBOb3QgV2FyCgpEYXZlIFTDpGh0CkNUTywgVGVrTGli
cmUsIExMQwpodHRwOi8vd3d3LnRla2xpYnJlLmNvbQpUZWw6IDEtODMxLTQzNS0wNzI5Cl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBs
aXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQu
bmV0L2xpc3RpbmZvL2Nha2UK
