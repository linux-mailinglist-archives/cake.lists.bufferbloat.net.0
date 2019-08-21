Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id C38B19740F
	for <lists+cake@lfdr.de>; Wed, 21 Aug 2019 09:56:37 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id B984A3CB38;
	Wed, 21 Aug 2019 03:56:36 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1566374196;
	bh=ZchpJb9q4OfhMJaYR94cgF1KuEyETsyxauA+mgUq/Y0=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=HZxJGmk5sTBcdpN34sIyNNs9432Frc+taM1t1l+gkhvFaoNu5gzAUGTbqVONY64ur
	 DFIjIStxvGyObhxBphkrR2wXZkn6FTqiAWYUf71/O6HvApNOJVobXeaEsDdz9FgoE1
	 zudk/UMrB3lvBCjPUWvuQFawBpwStG8SfP6y58oopLGNjZDso3js7rtZlk/pSOETXI
	 wzRTGQ9v3LZ9hwM9IHDuDp1pUt0R8LSarY9F4CkrRggHrWoKMaVtotNK0c0csrb1NT
	 m/eKtUDln3oFazEtsNHgFQh8OZtHD+ECo8M9w/GWHGObZ9Av+3JFmDo+nrVyNgiT1Y
	 UY8hBdk9KAk8g==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 300A83B2A4
 for <cake@lists.bufferbloat.net>; Wed, 21 Aug 2019 03:56:35 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1566374192;
 bh=95ZeZLHv3Rm6Rtdd3RNx3bJq+Hro8iXelh9LpD8AJBo=;
 h=X-UI-Sender-Class:Subject:From:In-Reply-To:Date:Cc:References:To;
 b=Z49/tKZYe0XYZrluPBz0u9PrOnnenjuTB6NPOgs1du98QD70OL+hbwErYoZ2qRTF5
 3DxUhR9rhAcR5Kw/RjZomvsqPtvLXYbYgP4pWVVBfxrMwqVjkT4i7EmCmVTMH2QRpf
 b5cKcqspf3T+5vtzqwmxEyyfP7/OofmlP90X4PiI=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [10.11.12.32] ([134.76.241.253]) by mail.gmx.com (mrgmx003
 [212.227.17.190]) with ESMTPSA (Nemesis) id 0Lvkwm-1iImb61vbg-017XwS; Wed, 21
 Aug 2019 09:56:32 +0200
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
From: Sebastian Moeller <moeller0@gmx.de>
In-Reply-To: <d9f3d04b-61e7-a77f-e242-b4b99c49fe9a@newmedia-net.de>
Date: Wed, 21 Aug 2019 09:56:31 +0200
Message-Id: <F09BCB54-F984-48E9-904D-51C818E8E124@gmx.de>
References: <CAA93jw4FDjYjxxStyzMu8eCz_6Ezcumg-iZaYeM3kBZ5da8MBQ@mail.gmail.com>
 <fc64c772-d85c-deba-a0e4-4e590cfb76ee@newmedia-net.de>
 <CAA93jw4Fm=uY08A3XHWh3d=OKNfraCeYHwFGtAdPH7a51vG6WA@mail.gmail.com>
 <384866b4-4c91-cf2c-c267-ee4036e5fbf7@newmedia-net.de>
 <EDCD1D95-BEA1-45A8-B6A2-4FD4BE418450@gmx.de>
 <d9f3d04b-61e7-a77f-e242-b4b99c49fe9a@newmedia-net.de>
To: Sebastian Gottschall <s.gottschall@newmedia-net.de>
X-Mailer: Apple Mail (2.3445.104.11)
X-Provags-ID: V03:K1:dqxHZ+eola98RbippefxQzxGfGg9cuIAIP4KGcT4v4GhD9iNd34
 o3jVJ+c2HtyDQ3Wh81pDR/QPyiE2Pt7INCIj8VyYOp71Pw3lmrzrFF4Zg8R5t1k4iOSADpf
 Nr+ZP5Mc9aLDPqcNMOkDp/B4cLtveAPK8k3vm6zr/sMuWtjQrganClME/Ao3oSC1JmBZ2k0
 JRQUS3Pn2Hl8iFZ4z9N8Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:piKOb7yQwak=:EQHVg7EHena6HrjjJ0D8Lc
 h+FFRZUW0olFPpe28rPzKQ3LbbAISD0INOx1h0ns3K70+HvumM4/bfcaLSOK840yVjPPul2ye
 XVT60xhUJto5YHTXZ7x/dsRuDXZfaQ6Y44UK4ssDtOWeKs1YJxvDdvkixIHKaHzDzN7tKHOIM
 q6Q3yJahUhywHk7aNRxTUot4pT+jtYzEHexu+TzDv9zA2DJm9RKjZtMf/zUvoTMpEMFD52Z0H
 wL7tJVUfgthj/HZoBFoV+o2+JObHOPmTPAD/ZcJEmv8LR3Lq7Z4TiNv17/Y63Lg083HsHnVhs
 B4C9VWeimzLALDm4F7gnzhE6kXfYuEWJ38fH/VCl35ZlPcs/wXJD8+nhnNNCW55WTKg3Bdh62
 N069XQHW2SzyagGBICuw4qR24NhnoH7dqLSQTAK/5N4bANIL5QfvEzrY8UlXVej1obwezqvjf
 GSdWVLuPq0AZJo4AUSEYcS/MezEstz7AKw4E4pfvTGEeBBoJrCJeaMkUcTcAjcBLhAkunSh91
 Q+KvJO2K8+XMip1iuRkl+QAg9YtIbLaTlxb06bHRX32Tv9VW7twGcfIvtSek+pp6YrTh1Jcop
 hdG0rCUVTVv4xZhcwxxXeF5QkwViPvzIpsdEBGrXKaDmukVGlaIIu4ad71hbzAdEY/b+5a0pN
 297cUe9tuvxXxtFqWaJpuRAOIxNGk4kubt+gaiJV4DLPKGroaPwQh3rwzhGeWFhDodQinnbvo
 5pw59TmEMKvCqNIuMudumd+/OsdNCxntMYPAGbueCr2GWx4ELZYhL04nqLAQ86Ds3boVkuZiz
 6L/jULjE4hNQsjzXqszCX6FH8ISgMOvHgVcnrH7Nfhft8CmOldx0vSqNKyuGy8LvEh2YNH11O
 tDNxadCtCMYt8Eb7LLX2u/K6QatLlh+/p83HfDWusvfIU80/2T7CqmfJ6esBQ/f2UX8VwP7Lu
 j2ERK0avalyzKqRsasfOknRUYvv+hTOhUApnr1p7ZFc7+y319JT606yUKhdH4WVQS2JoAK2ag
 PERM7ebiU6LFzV095KLsi8zkaVda4KKtEPqKUGF2eATDwLjvO+mjA02hhFBxu0bdvhcD1tgDd
 L6DD4oFjetIvc7lcVHhj4Q5hJa262CrqNyKI6SlrnnZqbBkxVIulaDoiA1+T/+YXbbXKhGRn7
 Gw/OlosdHW7BBMedU2b9uop/oH8FS0PL8g94CBiPQ0yyCxfA==
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

Cgo+IE9uIEF1ZyAyMSwgMjAxOSwgYXQgMDk6NTAsIFNlYmFzdGlhbiBHb3R0c2NoYWxsIDxzLmdv
dHRzY2hhbGxAbmV3bWVkaWEtbmV0LmRlPiB3cm90ZToKPiAKPj4+IGkgaGF2ZSBzZWVuIHRoaXMg
YWxyZWFkeS4gb3V0IHBsYW4gaGVyZSBpcyB0aGF0IHRoZSB1c2VyIHNwZWNpZmllcyB0aGUgaW50
ZXJuZXQgY29ubmVjdGlvbiB0eXBlIGxpa2UgdmRzbDIsIGNhYmxlLCB3aGF0ZXZlciBpbiBjYXNl
IG9mIGNha2Ugd2hpY2ggdGhlbiB3aWxsIGJlIHVzZWQKPj4+IGFzIGFyZ3VtZW50Cj4+IAlHb29k
IGdvYWwsIHRoYXQgYWxzbyBpcyB0aGVvcmV0aWNhbGx5IHdlbGwgc3VwcG9ydGVkIGJ5IGNha2Ug
d2l0aCBpdHMgbXVsdGl0dWRlIG9mIGVuY2Fwc3VsYXRpb24vb3ZlcmhlYWQgcmVhbGF0ZWQga2V5
d29yZHMuIFVuZm9ydHVuYXRlbHkgcmVhbGl0eSBpcyBub3QgYXMgbmljZSBhbmQgdGlkeSBhcyB0
aGlzIGNvbGxlY3Rpb24gb2Yga2V5d29yZHMgaW1wbGllcywgVGhlcmUgYXJlIDgga2V5d29yZHMg
Zm9yIEFUTS9BQUw1IGJhc2VkIGVuY2Fwc3VsYXRpb25zIChBRFNMLCBBRFNMMiwgQURTTDIrLCAu
Li4pLCAyIGZvciBWRFNMMiwgMSBmb3IgRE9DU0lTLCAxIGZvciBldGhlcm5ldCwgZm9yIGEgdG90
YWwgb2YgMTIgdGhhdCBhbGwgY2FuIGJlIGNvbWJpbmVkIHdpdGggb25lIG9yIG1vcmUgVkxBTi10
YWcga2V5d29yZHMsIGZvciBhIHRvdGFsIG9mIDI0IHRvIDM2IGNvbWJpbmF0aW9ucy4gKEFuZCB0
aGVzZSBhcmUgbm90IGV2ZW4gZXhoYXVzdGl2ZSwgYXMgZS5nLiB0aGUgdXNlIG9mIGRzLWxpdGUg
Y2FuIGluY3JlYXNlIHRoZSBwZXItcGFja2V0IG92ZXJoZWFkIGZvciBJUHY0IHBhY2tldHMgYnkg
YW5vdGhlciAyMCBieXRlcykuCj4+IAlJZGVhbGx5IG9uZSB3b3VsZCBqdXN0IGVtcGlyaWNhbGx5
IG1lYXN1cmUgdGhlIGVmZmVjdGl2ZSBvdmVyaGVhZCBhbmQgdXNlIHRoZSAib3ZlcmhlYWQgTk4g
bXB1IE5OIiBrZXl3b3JkcyBpbnN0ZWFkLCBidXQgdGhhdCBoYXMgaXNzdWVzIGFzIG1lYXN1cmlu
ZyBvdmVyaGVhZCBlbXBpcmljYWxseSBpcyBzaW1wbHkgaGFyZC4uLiBUaGUgYmVzdCBiZXQgd291
bGQgYmUgdG8gbGV2ZXJhZ2UgQkVSRUMgdG8gcmVxdWlyZSBJU1BzIHRvIGV4cGxpY2l0bHkgaW5m
b3JtIHRoZWlyIGN1c3RvbWVycyBvZiB0aGUgZWZmZWN0aXZlIGdyb3NzLXJhdGVzIGFuZCBhcHBs
aWNhYmxlIG92ZXJoZWFkcyBmb3IgZWFjaCBsaW5rLCBidXQgSSBhbSBub3QgaG9sZGluZyBteSBi
cmVhdGguIE92ZXIgYXQgaHR0cHM6Ly9vcGVud3J0Lm9yZy9kb2NzL2d1aWRlLXVzZXIvbmV0d29y
ay90cmFmZmljLXNoYXBpbmcvc3FtIHdlIHRyaWVkIHRvIGdpdmUgc2ltcGxpZmllZCBpbnN0cnVj
dGlvbnMgZm9yIHNldHRpbmcgdGhlIG92ZXJoZWFkcyBmb3IgZGlmZmVyZW50IGFjY2VzcyB0ZWNo
bm9sb2dpZXMsIGJ1dCB0aGVzZSBhcmUgbm90IGd1YXJhbnRlZWQgdG8gZml0IGV2ZXJ5Ym9keSAo
bm90IGV2ZW4gbW9zdCB1c2VycywgYXMgd2UgaGF2ZSBubyBudW1iZXJzIGFib3V0IHRoZSByZWxh
dGl2ZSBkaXN0cmlidXRpb25zIG9mIHRoZSBkaWZmZXJlbnQgZW5jYXBzdWxhdGlvbiBvcHRpb25z
KS4KPj4gCj4+IEJlc3QgUmVnYXJkcwo+PiAJImFub3RoZXIiIFNlYmFzdGlhbgo+IAo+IGFzIGkg
c2FpZC4gaSBqdXN0IHN0YXJ0ZWQuIGxldHMgc2VlIGlmIGkgY2FuIGZpbmQgYSBiZXR0ZXIgc29s
dXRpb24gb3IgYSBjbGV2ZXIgd2F5IG9mIGF1dG8gZGV0ZWN0aW5nL21lYXN1cmluZyB0aGUgb3Zl
cmhlYWQKCglJZiB5b3UgZG8gZmluZCBhIGNsZXZlciBhbmQgZmF0IHdheSwgcGxlYXNlIGxldCBt
ZSBrbm93IDspLiBUaGUgYmVzdCBJIGNhbWUgdXAgd2l0aCBvbmx5IHdvcmtzIGZvciBBVE0vQUFM
NSBhbmQgaXMgbmVpdGhlciBjbGV2ZXIsIGF1dG9tYXRlZCBvciBmYXN0IGlzIGF0IGh0dHBzOi8v
Z2l0aHViLmNvbS9tb2VsbGVyMC9BVE1fb3ZlcmhlYWRfZGV0ZWN0b3IgKHdoaWNoIGhhcyB0aGUg
YWR2YW50YWdlIG9mIGFsc28gY29uZmlybWluZyBBVE0vQUFMNS1xdWFudGlzYXRpb24pLiBJIGhh
dmUgc29tZSBpZGVhcyBhYm91dCBob3cgdG8gZGVkdWNlIG92ZXJoZWFkIGdlbmVyaWNhbGx5IGJ1
dCB0aGVzZSByZXF1aXJlIHZlcnkgcHJlY2lzZSBtZWFzdXJlbWVudHMgb2YgbWF4aW11bSBnb29k
cHV0IGZvciBkaWZmZXJlbnQgcGFja2V0IHNpemVzIGFuZCBldmVuIGxlc3MgZml0IGZvciBnZW5l
cmFsIGNvbnN1bXB0aW9uIHRoYXQgdGhlIGF0bSBzdHVmZi4KCkJlc3QgUmVnYXJkcwoJU2ViYXN0
aWFuCgoKPiAKPiBTZWJhc3RpYW4KPiAKPj4gCj4+IAo+PiAKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMu
YnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nh
a2UK
