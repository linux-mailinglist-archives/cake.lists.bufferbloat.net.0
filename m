Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id BB6FA31FF33
	for <lists+cake@lfdr.de>; Fri, 19 Feb 2021 20:04:55 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 5F5CF3CB38;
	Fri, 19 Feb 2021 14:04:54 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1613761494;
	bh=Ienkmdw42Yz4/o4xXryb5JT00m+5TGrEUaPcW73BpRg=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=j92OtcCzOy4gLAjd9a3ZlMK+UDTIo9/nTMitFhUiF75Q+CRM7YZCfGr1CYMZkn8S/
	 /+V0VVIkaV7BTCmfblskudosCbzFmpZayYoX1cn03AOXZuXbKDMkBheZEWoj4UbM1o
	 g/ZIjU4hQxwMWSNOCDnruXjG0MHhQxtc7xyxO9ieXmbDOF9sGri5AIWkRkhEr6I9FV
	 gPJir7wWQH/8cHXZPqC/WGRUPzxOHp+wa2QeEDiDVj+7ZG5i5DJVRJuZjKM9BlzHc+
	 pc56r5aTSGMqXGzGxu6i7LuJo7Mehle4aGfYQw7GwqKJiaalvh/iUkPPDBDpGNnvgz
	 oakBM7zLq8z5w==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail268c50.megamailservers.eu (mail1467c50.megamailservers.eu
 [91.136.14.67])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 1964D3B2A4
 for <cake@lists.bufferbloat.net>; Fri, 19 Feb 2021 14:04:52 -0500 (EST)
X-Authenticated-User: sagermail@sager.me.uk
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megamailservers.eu;
 s=maildub; t=1613761487;
 bh=uZzM6FpjLNXpI8bP+c2ovYf826abkbaOBtKhhQ942Mc=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=V45w1Eev+wCKzm+aH3siYdvUEKS3otvoXjITcIVlIwzTZSX9fyUtAAcuOz5bFv+ZA
 q+O9YehzvtDZDNwtCjkMsYI65KiFYq4zBK8U0YHCB7DZFROLh2pogt5FEPdtS5JO8m
 QKq8qWaaSQmOgmAhCZH6LfvnDf4//a7wUpCqepVg=
Feedback-ID: john@sager.me.u
Received: from mainserver.wc (97.83.2.81.in-addr.arpa [81.2.83.97])
 (authenticated bits=0)
 by mail268c50.megamailservers.eu (8.14.9/8.13.1) with ESMTP id 11JJ4iur025703
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Fri, 19 Feb 2021 19:04:47 +0000
Received: from
 1.4.7.2.4.7.8.0.a.e.2.c.c.0.5.d.0.0.0.0.3.e.b.c.0.b.8.0.1.0.0.2.ip6.arpa
 ([2001:8b0:cbe3:0:d50c:c2ea:874:2741])
 by mainserver.wc with esmtp (Exim 4.93)
 (envelope-from <john@sager.me.uk>)
 id 1lDB51-000gwX-Pt; Fri, 19 Feb 2021 19:04:43 +0000
To: Peter Lepeska <bizzbyster@gmail.com>
References: <CANmPAYHxP9mdmPMsvR=bi=TSNi9+0HbZGz0r89zOLbe3dAyk-Q@mail.gmail.com>
 <87mtw1kx9c.fsf@toke.dk>
 <CANmPAYHFrtbLhGZ1yXNzsaGGf8gP09ap_vUCMX9ggbSRUcpRFg@mail.gmail.com>
 <87im6pkweq.fsf@toke.dk> <9a889d98-0fae-d1af-6dea-c534f0df854a@sager.me.uk>
 <CANmPAYF7SEwWUOpj7S3riHufHDm2QtqSjWq8F-+rGJnRk=3xZw@mail.gmail.com>
From: John Sager <john@sager.me.uk>
Message-ID: <faa1600e-d040-2741-9335-fdf17e32f11b@sager.me.uk>
Date: Fri, 19 Feb 2021 19:04:43 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CANmPAYF7SEwWUOpj7S3riHufHDm2QtqSjWq8F-+rGJnRk=3xZw@mail.gmail.com>
Content-Language: en-GB
X-CTCH-RefID: str=0001.0A742F19.60300BCF.0041:SCFSTAT79219218, ss=1, re=-4.000,
 recu=0.000, reip=0.000, cl=1, cld=1, fgs=0
X-CTCH-VOD: Unknown
X-CTCH-Spam: Unknown
X-CTCH-Score: -4.000
X-CTCH-Rules: 
X-CTCH-Flags: 0
X-CTCH-ScoreCust: 0.000
X-CSC: 0
X-CHA: v=2.3 cv=c//Vvi1l c=1 sm=1 tr=0 a=dws6IJh5fU+Ftmrx3Eq8JA==:117
 a=dws6IJh5fU+Ftmrx3Eq8JA==:17 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=qa6Q16uM49sA:10 a=GQ3UrkdYAAAA:8 a=pGLkceISAAAA:8 a=kurRqvosAAAA:8
 a=V4N9VBXgGjcEZrKLXHEA:9 a=QEXdDO2ut3YA:10 a=UrkXBYOGhgNlFfmH13Sb:22
 a=kbxRQ_lfPIoQnHsAj2-A:22
X-Origin-Country: GB
Subject: Re: [Cake] Enforcing video quality question
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
Cc: cake@lists.bufferbloat.net
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

WWVzLiBUaGUgbWFya3MgYXJlIHNldCBvbiBlZ3Jlc3Mgc28geW91IGNhbiBzZWxlY3Qgb24gaW5z
aWRlIElQIGFkZHJlc3MsIApwb3J0LCBwcm90b2NvbCAtIGluIGZhY3QgbWFueSBjaGFyYWN0ZXJp
c3RpY3MgdGhhdCBpcHRhYmxlcyBydWxlcyBjYW4gdGVzdCAKZm9yLiBJJ2xsIHB1dCB0b2dldGhl
ciBhIHRveSBpcHRhYmxlcyBydWxlcyBmaWxlIGFuZCBhIHRveSBzY3JpcHQgd2l0aCB0aGUgCm5l
Y2Vzc2FyeSB0YyBjb21tYW5kcy4gSXQnbGwgdGFrZSBtZSBhIGZldyBkYXlzIHRob3VnaCBhcyBJ
J20gYnVzeSB3aXRoIApvdGhlciBzdHVmZiBjdXJyZW50bHkuCgpQUyBkb2VzIHRoZSBjYWtlIGxp
c3QgYWxsb3cgYXR0YWNobWVudHM/IEl0IHdpbGwgYmUgYSBzbWFsbCB6aXAgZmlsZS4KCkpvaG4K
Ck9uIDE5LzAyLzIwMjEgMTU6MDIsIFBldGVyIExlcGVza2Egd3JvdGU6Cj4gSGkgSm9obgo+IAo+
IERvZXMgdGhpc8KgcmVzdWx0IGluIHRoZSBhYmlsaXR5IHRvIHNldCBwZXIgaW50ZXJuYWwgaG9z
dCBtYXggaW5ncmVzcyAKPiBiYW5kd2lkdGg/IElmIHNvLCBhbnkgY2hhbmNlIHlvdSBjYW4gc2hh
cmUgYSBzbmlwcGV0IG9mIGEgc2NyaXB0PyBJIHdpbGwgYmUgCj4gdHJ5aW5nIHRvIHJlcHJvZHVj
ZSB5b3VyIHNldHVwLgo+IAo+IFRoYW5rIHlvdSEKPiAKPiBQZXRlcgo+IAo+IE9uIEZyaSwgRmVi
IDE5LCAyMDIxIGF0IDc6MTYgQU0gSm9obiBTYWdlciA8am9obkBzYWdlci5tZS51ayAKPiA8bWFp
bHRvOmpvaG5Ac2FnZXIubWUudWs+PiB3cm90ZToKPiAKPiAgICAgVGhhdCdzIGJhc2ljYWxseSB3
aGF0IEkgZG8uIEkgc2V0IG1hcmtzIG9uIG91dGdvaW5nIHRyYWZmaWMgaW4gdGhlIG1hbmdsZQo+
ICAgICB0YWJsZSB3aGljaCBhcmUgY29waWVkIHRvIGNvbm5tYXJrIGJlZm9yZSBlZ3Jlc3MuIFRo
ZW4gb24gaW5ncmVzcyB0aGUKPiAgICAgY29ubm1hcmsgaXMgcmVzdG9yZWQgdG8gdGhlIHBhY2tl
dCBhbmQgcHVudGVkIHRvIGlmYjAgdXNpbmcgJ2FjdGlvbgo+ICAgICBjb25ubWFyawo+ICAgICBh
Y3Rpb24gbWlycmVkIGVncmVzcyByZWRpcmVjdCBkZXYgJElGQicgYXMgYW4gaW5ncmVzcyBmaWx0
ZXIgb24gdGhlCj4gICAgIGluY29taW5nCj4gICAgIGludGVyZmFjZSAocHBwMCBpbiBteSBjYXNl
KS4gVGhlbiBJIGhhdmUgSFRCIGNsYXNzZXMgb24gaWZiMCB3aGljaCBzZXQgcmF0ZQo+ICAgICBs
aW1pdHMgZm9yIGRpZmZlcmVudCB0cmFmZmljIGNsYXNzZXMgaW5kaWNhdGVkIGJ5IHRoZSBtYXJr
cy4gSSBoYXZlIG9ubHkgNgo+ICAgICB0cmFmZmljIGNsYXNzZXMgKEkgYnVuZGxlIGFsbCB2aWRl
byBpbnRvIG9uZSBjbGFzcyksIGJ1dCBhcyBtYXJrcyBhcmUgMzIKPiAgICAgYml0cyB3aWRlIHRo
ZXJlIGlzIGxvdHMgb2Ygc2NvcGUgZm9yIGNsYXNzZXMgZm9yIGluZGl2aWR1YWwgSVAgYWRkcmVz
c2VzLgo+IAo+ICAgICBKb2huCj4gCj4gICAgIE9uIDE4LzAyLzIwMjEgMTk6MjgsIFRva2UgSMO4
aWxhbmQtSsO4cmdlbnNlbiB2aWEgQ2FrZSB3cm90ZToKPiAgICAgID4gUGV0ZXIgTGVwZXNrYSA8
Yml6emJ5c3RlckBnbWFpbC5jb20gPG1haWx0bzpiaXp6YnlzdGVyQGdtYWlsLmNvbT4+Cj4gICAg
IHdyaXRlczoKPiAgICAgID4KPiAgICAgID4+IEEgdXNlciBvbiB0aGUgT3BlbldydCBmb3J1bSBz
dWdnZXN0ZWQgaGFzaGxpbWl0IHJ1bGVzIHN1cHBvcnRlZCBieQo+ICAgICAgPj4gaXB0YWJsZXMu
IEhvdyBkb2VzIHRoYXQgaWRlYSBzb3VuZCB0byB5b3U/Cj4gICAgICA+Cj4gICAgICA+IFRoYXQg
d2lsbCByZXN1bHQgaW4gYSBjbGlmZi1lZGdlIHBvbGljZXIgKGkuZS4sIGFzIHNvb24gYXMgYSBk
ZXZpY2UgZ29lcwo+ICAgICAgPiBvdmVyIGl0cyBsaW1pdHMgaXQgd2lsbCBzZWUgZXZlcnkgcGFj
a2V0IGdldCBkcm9wcGVkKS4gVGhpcyBkb2Vzbid0Cj4gICAgICA+IGludGVyYWN0IHRvbyB3ZWxs
IHdpdGggdGhlIGJ1cnN0aW5lc3Mgb2YgVENQLCBzbyB5b3UnbGwgbGlrZWx5IGdldAo+ICAgICAg
PiBlcnJhdGljIGJlaGF2aW91ciBvZiB0aGUgdHJhZmZpYyBpZiB5b3UgZG8gdGhhdC4gRG9pbmcg
dGhlIHNhbWUgdGhpbmcKPiAgICAgID4gd2l0aCBIVEIgbWVhbnMgdGhlIHJvdXRlciB3aWxsIHF1
ZXVlK3NoYXBlIGVhY2ggY2xhc3MgKGFuZCB3aXRoIEZRLUNvRGVsCj4gICAgICA+IG9uIHRoZSBs
ZWF2ZXMsIHlvdSdsbCBnZXQgYSBuaWNlIEFRTSBiZWhhdmlvdXIgYXMgd2VsbCksIHNvIHRoYXQg
d2lsbCBiZQo+ICAgICAgPiBzbW9vdGhlciBhbmQgbGVzcyBwcm9uZSB0byBibG9hdCA6KQo+ICAg
ICAgPgo+ICAgICAgPiAtVG9rZQo+ICAgICAgPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwo+ICAgICAgPiBDYWtlIG1haWxpbmcgbGlzdAo+ICAgICAgPiBD
YWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldCA8bWFpbHRvOkNha2VAbGlzdHMuYnVmZmVyYmxvYXQu
bmV0Pgo+ICAgICAgPiBodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtl
Cj4gICAgICA+Cj4gICAgIF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCj4gICAgIENha2UgbWFpbGluZyBsaXN0Cj4gICAgIENha2VAbGlzdHMuYnVmZmVyYmxv
YXQubmV0IDxtYWlsdG86Q2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQ+Cj4gICAgIGh0dHBzOi8v
bGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UKPiAKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0
cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8v
Y2FrZQo=
