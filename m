Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 83E591C7557
	for <lists+cake@lfdr.de>; Wed,  6 May 2020 17:51:30 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 318B73CB4C;
	Wed,  6 May 2020 11:51:25 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1588780285;
	bh=udzj5Y/DWO0cplGREQHFgYEARJUxzaOgHeaJ4q4fuWA=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=eUBfmOUF6G1H9rsrOywo/pA0bD4Xj+hem7VcbzIIMJvWdvPf6hEZe/02EIGeg6by7
	 Y/hT658FsMKb2Im4NcnHDGHC0Nc9IRcnk391P1KMB9w7b7jgFjMenDZiNC2Fv2aMlp
	 /VA5wHTZgvoAoG6u0TpivNceiyrFrNUHS4I4I3ZVmfyyrDdEAJ0GN0Fjg3UU916XQm
	 Vw++q4qTaRa9Giw++ROLlMq5ghNwHeO5PdYDYiCtUeO2Z1gt6NFyXtIPYioPnEj+4c
	 QVc/+Kq3fozE1EOsgJCogYnmOMcXwRztjpiKYCeYFh62Ogb+ab+Td3Tg0yUP110WRz
	 buUE095Xrs4NQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-il1-x142.google.com (mail-il1-x142.google.com
 [IPv6:2607:f8b0:4864:20::142])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 4CAE93B29D;
 Wed,  6 May 2020 11:51:24 -0400 (EDT)
Received: by mail-il1-x142.google.com with SMTP id m5so862879ilj.10;
 Wed, 06 May 2020 08:51:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=EjmszvxnVZlVuMJT0zNeLpwYK4bcIjdc1O8zTNTxSbQ=;
 b=rrUVsVOC/tUzVSWv8nme1Kpc4/RQnXONv2ylj9Mw+5sbq7UECDwwjBoKe9kuj30Prr
 iA0ncRkbY+0pSEFqNw44XTIWilUxP0zr3exylhH2qW5WjkTbeDXYUW9vQpf870QfFWBh
 JKn4DP50hXAFwXyaR6SjvEpbut96/SNG6Dhg7YRD/kfsSWCKSyXj4uS5XaxXQCTGM8MV
 N4DrviNLGhF5oV0C4/iO7dkUdS4kuAtX4Two8qetjnkHSzEU/cTLiNZ7sMh3PJ1e8jpm
 2Wz41eEfU9svd5L4n+4Aa8pdbm8Xn3K/7SLfGcdqKk810ykvY+2FMPZj2skEJlYZndof
 2J8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=EjmszvxnVZlVuMJT0zNeLpwYK4bcIjdc1O8zTNTxSbQ=;
 b=qtNCkb/kkCRQ9A+vyUWHmWgjUQ6dKiEB+MnzAi0LeP+i1u6NgUV/bY586MU1UaZS8W
 eHTrlzDdlHqwTAilhur5/IcnJwP8WuRajud+Xx0Z7PCcedL+zqb1/RQVViV2TN09s9Yp
 tHzDJ5Hgj9Hrro7JrQwWvGg+mtmhZCaj7mb6hPwzS1D+CsRUWnGVllivgA6qJPXfHsix
 wMf7UMvUi+quSmN/nIJhFGC4S6okwR2/hBBhTKpapRopewHO9JgzSkNqP6qtEhyZ0jKE
 atqyFSQ1ZCnbUHEmaKz/NXQBODfeeRuQ7jeYTMZYKes1q5y+qFwpSYBimWf/4f7IZjvf
 PG7A==
X-Gm-Message-State: AGi0PubYdhrlr0ts3zEu/o2Ltehb5z5/dFD5PZQ8Iev+7L58KtpC1hb3
 HRGSMTeKMfN58d+PgIbMiSBvbmhasWEN21Az3wo=
X-Google-Smtp-Source: APiQypLzp7mrNdTPNQ3E+ECtDJd1++oRlz7IBmdl2tlrNG20VpbOG0zrFsFe6vKm+E3/03OooQ2IT4dV1b7wBqVTKMU=
X-Received: by 2002:a92:dc0d:: with SMTP id t13mr9705994iln.287.1588780283737; 
 Wed, 06 May 2020 08:51:23 -0700 (PDT)
MIME-Version: 1.0
References: <1588518416.66682155@apps.rackspace.com>
 <CADN=VJnLagUAWtcRFO7jNL3oGA+vUQ4Z=2tkbYAsm0hyMGqnPQ@mail.gmail.com>
 <D61EB903-E580-4885-A064-6B6D5F325BBC@gmx.de>
 <1588779543.065923089@apps.rackspace.com>
In-Reply-To: <1588779543.065923089@apps.rackspace.com>
From: Dave Taht <dave.taht@gmail.com>
Date: Wed, 6 May 2020 08:51:12 -0700
Message-ID: <CAA93jw7=EKzfZYHQ_rqbhb_ALUXDBHEKb=DF2kDed+Lvs3HsPA@mail.gmail.com>
To: "David P. Reed" <dpreed@deepplum.com>
Subject: Re: [Cake] Slightly OT Re: [Make-wifi-fast] [Bloat] dslreports is
 no longer free
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
Cc: Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 Jannie Hanekom <jannie@hanekom.net>, Cake List <cake@lists.bufferbloat.net>,
 Sergey Fedorov <sfedorov@netflix.com>, bloat <bloat@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gV2VkLCBNYXkgNiwgMjAyMCBhdCA4OjM5IEFNIERhdmlkIFAuIFJlZWQgPGRwcmVlZEBkZWVw
cGx1bS5jb20+IHdyb3RlOgo+Cj4gV2hpbGUgdGhlIGp1cnkgaXMgc3RpbGwgb3V0IGZvciBtZSBv
biB0aGUgImJlc3QiIHNwZWVkIHRlc3QgdG8gcmVjb21tZW5kIHRvIG15IGZyaWVuZHMsIGZhbWls
eSwgYW5kIGV2ZW4gZW5lbWllcywgSSB0aGluayB0aGUgcHJvZ3Jlc3Npb24gaGFzIGJlZW4gZ29v
ZC4KPgo+Cj4KPiBPcmlnaW5hbGx5LCBJIHVzZWQgdG8gcmVjb21tZW5kIHRoZSB3ZWItZW1iZWRk
ZWQgSmF2YSB0ZXN0IGNhbGxlZCBOZXRhbHl6ZXIgZnJvbSBJQ1NJLiBUaGF0IGRpZCBleHRlbnNp
dmUgdGVzdHMsIGFuZCBpbmNsdWRlZCB0ZXN0cyB0aGF0IGFyZSBpbXBvcnRhbnQgdG8gbWUgbGlr
ZSBkZXRlY3RpbmcgRE5TIHNwb29maW5nLCB2YXJpb3VzIG1pZGRsZWJveCBtdWNraW5nIHdpdGgg
cGFja2V0cywgLi4uIGFzIHdlbGwgYXMgbWVhc3VyaW5nIGxhZyB1bmRlciBsb2FkIGluIGEgc2lt
cGxlIHdheS4gQnV0IHRoZW4gSSBoYWQgdG8gdGVhY2ggZWFjaCBwZXJzb24gSSByZWNvbW1lbmRl
ZCBpdCB0byB3aGF0IGV2ZXJ5dGhpbmcgbWVhbnQuIFRoYXQgd2FzIGEgQklHIGJ1cmRlbiBvbiBt
ZS4KPgo+Cj4KPiBUaGVuIEkgc3dpdGNoZWQgdG8gZHNscmVwb3J0cy5jb20sIGJlY2F1c2Ugb2Yg
c2V2ZXJhbCBmYWN0b3JzIC0gaXQgaGlnaGxpZ2h0ZWQgbGFnIHVuZGVyIGxvYWQgYXMgYSBidWZm
ZXJibG9hdCBncmFkZSB0aGF0IG1hZGUgc2Vuc2UuCj4KPgo+Cj4gTm93LCBJIGhhdmUgdG8gc2F5
IHRoYXQgZmFzdC5jb20gaXMgbGlrZWx5IHRvIGJlY29tZSBteSBuZXcgcmVjb21tZW5kYXRpb24u
IEhvd2V2ZXIsIEkgaGF2ZSB0d28gaXNzdWVzIHdpdGggaXQuIFRoZSBiaWdnZXN0IG9uZSBpcyB0
aGF0IGxhZy11bmRlci1sb2FkIGlzIG9ic2N1cmVkIGluIHRoZSBpbnRlcmZhY2UsIGFzIGlzIHRo
ZSBhc3ltbWV0cnkgb2YgdXBsb2FkIHZzLiBkb3dubG9hZC4KPgo+Cj4KPiBUaGUgcHJvYmxlbSBm
b3IgbWUgaXMgdGhhdCBJIHVzdWFsbHkgZ2V0IGFza2VkIHRvIHJlY29tbWVuZCBhIHRlc3QgdW5k
ZXIgY2lyY3Vtc3RhbmNlcyB3aGVyZSBzb21lb25lIGlzbid0IGxvb2tpbmcgZm9yICJicmFnZ2lu
ZyByaWdodHMiIGJ1dCBpcyBleHBlcmllbmNpbmcgYSBwcm9ibGVtIG9mIGRpc3J1cHRlZCBzZXJ2
aWNlIHF1YWxpdHkuIFRoZSBOVU1CRVIgT05FIHByb2JsZW0gdGhleSB1c3VhbGx5IGhhdmUgaXMg
dGhlIGxhZy11bmRlci1sb2FkIHByb2JsZW0gaW4gc29tZSBmb3JtLiBCdXQgYWxsIHRoZXkga25v
dyBpcyB3aGF0ICJkb3dubG9hZCBzcGVlZCIgdGhleSBib3VnaHQuCj4KPgo+Cj4gTWFueSwgbWFu
eSBwZW9wbGUgYXJlIHVzaW5nIHZpZGVvY29uZmVyZW5jaW5nIG5vdywgbm90IGp1c3Qgd2ViIGFu
ZCBUViB3YXRjaGluZy4gQW5kIHRoYXQgaXMgaHlwZXJzZW5zaXRpdmUgdG8gbGFnLXVuZGVyLWxv
YWQgKGFsc28gb24gV2lGaSBkdWUgdG8gYWlydGltZSBzY2hlZHVsaW5nKS4KPgo+IEFuZCBubyBv
bmUgc2VlbXMgdG8gYmUgYXdhcmUgdGhhdCB0aGVpciBxdWFsaXR5IG9mIGV4cGVyaWVuY2UgaXMg
bm90IGFib3V0IHNwZWVkLCBidXQgYWJvdXQgaW5zdGFiaWxpdHkgb2YgbGFnLXVuZGVyLWxvYWQu
IFNvIGl0J3MgYSBuZXcgaWRlYS4KPgo+Cj4KPiBZZWFoLCBJIGRvIG9uY2UgaW4gYSB3aGlsZSB3
YW50IHRvIGtub3cgaWYgbXkgc2VydmljZSBpcyBkZWxpdmVyaW5nIHRoZSB0b3Agc3BlZWQgYWR2
ZXJ0aXNlZCAtIGp1c3QgYXMgSSBvbmNlIGluIGEgd2hpbGUgbWVhc3VyZSB0aGUgdGltZSBvZiBt
eSBjYXIgaW4gdGhlIHF1YXJ0ZXIgbWlsZSBvbiBkcmFnc3RyaXAgOi0pCj4KPgo+Cj4gQnV0IG1v
c3RseSBJIHdhbnQgdG8ga25vdyB3aGF0J3MgbWFraW5nIG15ICphcHBsaWNhdGlvbnMqIHNvIHNs
b3cuIEFuZCBpdCdzIGFsbW9zdCBuZXZlciB0aGUgY2FzZSB0aGF0IHRoZXkgbmVlZCBhIG5pdHJv
LWJ1cm5pbmcgZnVubnkgY2FyIGxldmVsIG9mIHNwZWVkLiBJbnN0ZWFkLCB0aGV5IG5lZWQgZWl0
aGVyOiBlbGltaW5hdGlvbiBvZiBsYWcgdW5kZXIgbG9hZCwgb3IgZWxpbWluYXRpbmcgYWxsIHRo
ZSBjcmFwIHJ1bm5pbmcgaW4gdGFicyBvbiB0aGUgYnJvd3NlciAobGlrZSBhbmltYXRlZCBKYXZh
U2NyaXB0IGF0dGVudGlvbi1zZWVraW5nIGFkcyBmaWxsaW5nIG1lbW9yeSB3aXRoIGdhcmJhZ2Ug
YW5kIGNhdXNpbmcgdGhlIEpTIGdhcmJhZ2UgY29sbGVjdG9yIHRvIHJ1biBjb25zdGFudGx5KS4K
CgpBbiBhbmFsb2d5IEknZCBiZWVuIG1ha2luZyB0byBteXNlbGYgYW5kIHdhcyBob3BpbmcgdG8g
dXNlIHNvbWV3aGVyZQpyZWxldmFudCB0byB0aGUgbDRzIGRlYmF0ZSwgd2FzCmphbWVzIGRlYW4g
cG9pc2luZyBoaXMgZHJhZ3N0ZXIgYXQgdGhlIHRvcCBvZiB3aW5kaW5nIGRpcnQgbW91bnRhaW4K
cm9hZCwgd2l0aCBoaXMgYmVzdCBnaXJsLCBJc2Fkb3JhIER1bmNhbiwKc2NhcmYgZmxvd2luZyBv
dXQsIGJ5IGhpcyBzaWRlLgoKd2hhdCBjb3VsZCBnbyB3cm9uZz8KCj4KPgo+Cj4gU28gSSB3b3Vs
ZCBjaGFuZ2UgZmFzdC5jb20sIGlmIEkgY291bGQsIHRvIGVtcGhhc2l6ZSB0aGUgKnByb2JsZW1z
KiAoYXMgbmV0YWx5emVyIGRpZCkgYW5kIG5vdCB0aGUgc3BlZWQuCgoKLS0gCk1ha2UgTXVzaWMs
IE5vdCBXYXIKCkRhdmUgVMOkaHQKQ1RPLCBUZWtMaWJyZSwgTExDCmh0dHA6Ly93d3cudGVrbGli
cmUuY29tClRlbDogMS04MzEtNDM1LTA3MjkKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9h
dC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=
