Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CD18A19A43
	for <lists+cake@lfdr.de>; Wed, 22 Jan 2025 22:18:26 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id C9D143CB39;
	Wed, 22 Jan 2025 16:18:24 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1737580704;
	bh=sbzmzuTNRh5PtT3xftOig69vhevXK6KfA8HbNiOukY8=;
	h=In-Reply-To:Date:References:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=JOwS5afvDioBv8lUyArwVOWP7n3fi/X27IjgCpcVtkD6nrtrSZ7LPi4GbBNM++zfQ
	 Fc/2Dk+XF3d9q6rTCfj+BSr6e5FJEBClWl9EyqMOLiR52NgktKQZF5WvE27S6nh8pL
	 aIY7wHzgEqHM/bi631imbTj3Yu6U9IzymFfnxfafHdqOvPahJsBmbXcJXuZa5q5mXH
	 3PS2OlO8rDGGqBWsJjQVgFvlhYmof0YoFEFl8HjvMcw4Nj0FpssIMhjc0Ok6/2b/02
	 t4KF/0EUpJMX2fwZt7k6PNr66L4hGTK0/ygwSHbhdlNRssysKG1MioAUXiQxO9lj+3
	 OkWANndvwmHPA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 6684A3B29E
 for <cake@lists.bufferbloat.net>; Wed, 22 Jan 2025 16:18:22 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
 s=s31663417; t=1737580698; x=1738185498; i=moeller0@gmx.de;
 bh=+qF4BKp/7EG8NEahhXjllL0FixF5s3BpgaMR686pr9k=;
 h=X-UI-Sender-Class:Content-Type:Mime-Version:Subject:From:
 In-Reply-To:Date:Cc:Content-Transfer-Encoding:Message-Id:
 References:To:cc:content-transfer-encoding:content-type:date:from:
 message-id:mime-version:reply-to:subject:to;
 b=qkUWKAb2aRY7JmGir7wmaavPUU3ZVpKsBOz+TpcVYaDIdabbw4OlL1PFb9+4dYLy
 kd53ONSVtbgambe/RFVTj3y0UZCxrctWCcwkU1s6btsvKocrdXJu7ce5oYVt5kyP8
 eOGCI6IMC8DItcFWZy9ub/COAA2qnYOwg1iFtrdKwBDFtyc9Ajl8wLZ7gvIOw100E
 qR9AJHdAn61Skg6CaM2VDyDFslMbLKq7iIBSYqiOnsSNtJGB59Sgs1xGlaN3XuBE9
 UJhMWVr/jy6nF+plozoUgxSPaRSSAJOzf1CXkxneObMUOg8bLNEWyBkPHq4t5gOhc
 +DvQQLH0qOivk+9ZPQ==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from smtpclient.apple ([2.241.243.6]) by mail.gmx.net (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MSbxD-1u2wNf2myn-00PGuz; Wed, 22
 Jan 2025 22:18:18 +0100
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3776.700.51.11.1\))
In-Reply-To: <CAA93jw5oyChfNmX1bekA_Vwwv8YMqTtCH8ixufrdLh88PcZ5Tw@mail.gmail.com>
Date: Wed, 22 Jan 2025 22:18:07 +0100
Message-Id: <B02409B4-9AA5-4A9E-B939-0F42AB1F05ED@gmx.de>
References: <20250110155531.300303-1-toke@redhat.com>
 <2FE6B2E2-9A34-47C1-B203-F0C424F00704@gmx.de>
 <CAA93jw54GOfYP56XTh-jjjfAbybNDeYUgUENNA2+aSQbXpS91A@mail.gmail.com>
 <FAD46B40-2142-4254-BA44-C9AD9EEFB924@gmx.de>
 <CAA93jw4mj2RdtqdDT3ug5j8EZSsYujC1V_SjQEcjmCVCUZU+jw@mail.gmail.com>
 <898E9FB0-D92E-4421-8CCD-1B9F4A3D9D5D@gmail.com>
 <CAA93jw7XUfR7Ww40nh5EZ8U8pMUezhSY6PFLoaGj+pGnzeYZbg@mail.gmail.com>
 <F4B37725-18F6-45DB-8BD1-02849E146108@gmx.de>
 <CAA93jw5oyChfNmX1bekA_Vwwv8YMqTtCH8ixufrdLh88PcZ5Tw@mail.gmail.com>
To: =?utf-8?Q?Dave_T=C3=A4ht?= <dave.taht@gmail.com>
X-Mailer: Apple Mail (2.3776.700.51.11.1)
X-Provags-ID: V03:K1:i0QliRhBjx2Ql0WxQg1m7y/5D6oXb/z0s4/vBPya9YLi4tzdpKP
 PujafwKUeME1dAQiDArXEcICliakHpCga4pB1sn4Ei6nCpuzQXyDBUJBG9hj5RkNp3wY+CX
 S9uHTjmK5MXLPI/tpXtC83eZPbggEDOQstdobhl5Hb8QQMoDCGAJ1HRrviULjXOoAJGzXTb
 wEHK4P3b/kQ0SA2BpFBoA==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:9z98Q/95Hz4=;5UPqFsBlIrFX2ytu9xyhou4LIvy
 EvjOOO3UNMBhcH8wXPbJLmSGy6pC8Q2uRrWg+/ZfOOUb6G09dA3m6sGD/V/dV2g+JsFoujuvZ
 IS0DU0k92hjZzEGr1yxQRbGL2tFUZL600gjYdWRPWPZ3TlK/pAd1MQx+TewIa2MBwB8JGc9IF
 EeXfQPJYqBW3beGAJTnqMuHhkQ2oFqcyNmmWJYQBRzTgLLn19eUusE615XC1t5lAnwwUN/kx1
 nmKRF32IXnPpUO2nzt0tF4npGPP/OyYbEqxw8g1E/fO9TkqSEcFsS7n/c9FCrulenM90o3YWC
 2fMMPmGMi8F8wnQUWyDlP1a/xkipHjzLNCD54PqBp0rq3B7YInBoFvme2zXJ3vGvsJTSQQy4M
 423jBqBUAsZr41SxB45mn56pvtkoCJNlruVAf7h/Inoh1VVFUNupdTQZsW1oIxSYao+R8zPpd
 A0c+QQiz0/d3I8Fo2JxLilcEP0NR2haakuViHyznvPI+HJaUVs9Eadfjc7Ym4aYRD+AWzG/Zp
 PixyYImRbV6+CZ+JQU0lMMGrJaxwOqOErdg3LRO1OdN7kF/B55KLde21gnKFpEy1tsVwxYzYI
 Ku7/A3/FdyeuObxOszJaffVygTFgU62rdnMLMg4uxqz77xOGfk33Noc8mZcbuRgoPZ58wXIjn
 l44cn1bdyYZoysKVV9OwYBzGiNTlmoUguJyvTTo9Zze8y/p19I1px/NkuWxQ81Vl/YiL72+X2
 3a296OJ5OqvIePl8EsPjEOK1xMgd0qpWAWHWJcB2M4/KJbUghXgjL+aIn6Y7TTro/1sSI62Fi
 sTEk5kOY7ZLFXFYCLQvSPlkK0lkRU46vNzWCO75PoHrcMShQxcBvTNskAKqVHXZAAPcqA5vr1
 JzRbj8fmiQWkdtosTjUi6us46ZYNhvDAxF/PHGeSyO6okN07ZwDIMIJjJaSbp3OWbX1lOn44b
 THG7LrutmDJhjFf3otYNhF4nFCBR2+NDUv/IK7tZyJNLL2X+kdNy/CryS5QhNxWysJvdwg4mh
 d0yqSPJUyEUpRScMzbbPll4NiXlRG84vMlnhu0EkoCr2zlznf7Mj2qXVZqJZZBSIZR8wKznGA
 hyyYQi7ZGkwx572WG9mqzyv9mqB69K+oq87bdN+s98SYhQQIy0/2C9pCQD6EaakIuOq6AOpRE
 KKTAsPhCN+CAdm188zkqvK2ECLkGNVPWuVBK2PGDaew==
Subject: Re: [Cake] [PATCH net-next] sched: sch_cake: Align QoS treatment to
 Windows and Zoom
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
From: Sebastian Moeller via Cake <cake@lists.bufferbloat.net>
Reply-To: Sebastian Moeller <moeller0@gmx.de>
Cc: cake@lists.bufferbloat.net,
 =?utf-8?Q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SGkgRGF2ZSwKCkkgc2VlbSB0byByZWNhbGwgdGhhdCBjYWtlJ3MgRFNDUCB0byBwcmlvcml0eSB0
aW4gbWFwcGluZyBhbHdheXMgd2FzIGludGVuZGVkIHRvICJkbyB0aGUgcmlnaHQgdGhpbmciIGJ5
IGRlZmF1bHQgYW5kIGluIHRoYXQgY2FzZSB0aGF0IElNSE8gbWVhbnMgZG8gc29tZXRoaW5nIHVz
ZWZ1bCB3aXRoIHRoZSBmZXcgRFNDUHMgdGhhdCBhcHBsaWNhdGlvbnMgYWN0dWFsbHkgdXNlIGlu
IHRoZSB3aWxkIChJIG1pZ2h0IGJlIHNvbWV3aGF0IHdyb25nIGhlcmUgaW4gbXkgaW1wcmVzc2lv
biwgc28gSm9uYXRoYW4sIHBsZWFzZSBjb3JyZWN0IG1lIGlmIEkgYW0gd3JvbmcpLiBJIHRoaW5r
IHRoYXQgaXMgYSBzb2xpZCBndWlkaW5nIHByaW5jaXBsZS4gCklmIGVub3VnaCB6b29tIHNlc3Np
b25zIG92ZXIgdGhlIGludGVybmV0IGFjdHVhbGx5IHVzZSB0aGVzZSBEU0NQcyBzZWVtcyBmYWly
IHRvIGFkanVzdCBjYWtlJ3MgbWFwcGluZyB0byBkbyBzb21ldGhpbmcgcmVhc29uYWJsZSB3aXRo
IHRoZW0uIEkgaGF2ZSBubyBjbHVlIGFib3V0IHRoZSBhY3R1YWwgbnVtYmVycyBidXQgSSBjYW4g
c2VlIGhvdyBtb3ZpbmcgdmlkZW8gZnJvbSB0aGUgdGlnaHRlciBWb2ljZSB0aW4gdG8gdGhlIHdp
ZGVyIFZpZGVvIHRpbiBtYWtlcyBzZW5zZQoKCkkgc3RpbGwgYW0gYSBiaXQgcHV6emxlZCBhYm91
dCB6b29tJ3MgY2hvaWNlIG9mIDU2IGZvciBhdWRpbywgYnV0IEkgZ3Vlc3MgSSBhbSBqdXN0IGNv
bmZ1c2VkLgoKClF1ZXN0aW9uLCBzaW5jZSB6b29tIGRvZXMgbm90IHVzZSBDUzQsIHdoeSBtb3Zl
IHRoYXQgYXJvdW5kPyBUbyBhdm9pZCBDUzQgaGF2aW5nIGhpZ2hlciBwcmlvcml0eSB0aGFuIENT
NT8KClJlZ2FyZHMKCVNlYmFzdGlhbgoKUC5TLjogSGFzIGFueWJvZHkgdGVzdGVkIHdoZXRoZXIg
dGhpcyBpbXByb3ZlcyB0aGluZ3MgZW5vdWdoIGluIHByYWN0aWNlIHRvIGJlIG5vdGljZWFibGU/
CgoKPiBPbiAyMi4gSmFuIDIwMjUsIGF0IDIwOjM1LCBEYXZlIFRhaHQgPGRhdmUudGFodEBnbWFp
bC5jb20+IHdyb3RlOgo+IAo+IFRoaXMgcGF0Y2gganVzdCBtb3ZlcyBDUzQgYW5kIENTNSB0byB0
aGUgdmlkZW8gdGluLiBJIGhvcGUgdGhhdMK0cyBvaz8KPiAKPiBPbiBGcmksIEphbiAxMCwgMjAy
NSBhdCAxMjozNOKAr1BNIFNlYmFzdGlhbiBNb2VsbGVyIDxtb2VsbGVyMEBnbXguZGU+IHdyb3Rl
Ogo+PiAKPj4gSGkgRGF2ZSwKPj4gCj4+PiBPbiAxMC4gSmFuIDIwMjUsIGF0IDIwOjQzLCBEYXZl
IFRhaHQgPGRhdmUudGFodEBnbWFpbC5jb20+IHdyb3RlOgo+Pj4gCj4+PiBvaywgSSBjb25jZWRl
IG9uIE5RQi4gRG8gd2UgYXQgbGVhc3QgaGF2ZSBhZ3JlZW1lbnQgdGhhdCBDUzUgYmVsb25ncwo+
Pj4gaW4gdGhlIFZJIHF1ZXVlLCBub3QgdGhlIFZPIHF1ZXVlLCBvbiBkaWZmc2VydjQ/Cj4+IAo+
PiBBcyBJIHNhaWQsIEkgaGF2ZSBsZXNzIGlzc3VlcyB3aXRoIGJ1bXBpbmcgdGhpbmdzIGRvd24g
dGhhbiB1cCAoYnV0IEkgYW0gYWxzbyBqdXN0IHZvaWNpbmcgbXkgb3BpbmlvbiBoZXJlLCB0aGFu
a3MgZm9yIGRpc2N1c3NpbmcsIEkgYW0gZmluZSBlbmRpbmcgdXAgaW4gdGhlICJyb3VnaCIgaGVy
ZSkuCj4+IAo+PiBBYm91dCBab29tIChoKytwczovL3N1cHBvcnQuem9vbS5jb20vaGMvZW4vYXJ0
aWNsZT9pZD16bV9rYiZzeXNwYXJtX2FydGljbGU9S0IwMDY2NjE3KToKPj4gIlRoZSBkZWZhdWx0
IFpvb20gRFNDUCBtYXJraW5nIHZhbHVlcyBhcmUgNTYgZm9yIGF1ZGlvLCA0MCBmb3IgdmlkZW8s
IGFuZCA0MCBmb3Igc2NyZWVuIHNoYXJpbmcuIFlvdSBjYW4gdXBkYXRlIGF1ZGlvIGFuZCB2aWRl
byB2YWx1ZXMgdG8gYWxsb3cgYSBuZXR3b3JrIGFkbWluaXN0cmF0b3IgdG8gYWRqdXN0IHRoZSBw
cmlvcml0eSBmb3IgWm9vbSB0cmFmZmljIG9uIHRoZWlyIG5ldHdvcmsuIgo+PiAKPj4gVGhhdCA1
NiBpcyBDUzcgZm9yIGF1ZGlvIHdoaWNoIEkgYW0gcHJldHR5IHN1cmUgd2lsbCBub3QgcGFzcyBt
b3N0IG9mIHRoZSBpbnRlcm5ldCAoSSBiZWxpZXZlIHRoZSBJRVRGIHJlY29tbWVuZHMgdG8gZHJv
cCBDUzcgb24gaW5ncmVzcyBmcm9tIG90aGVyIEFTcykuLi4gZWl0aGVyIHRoZXkgd2FudGVkIHRv
IHdyaXRlIDQ2IChFRikgb3IgdGhleSBhcmUganVzdCBhcyBjb25mdXNlZCBhcyB0aGUgV2lGaSBX
TU0gZm9sa3MuLi4KPj4gCj4+IAo+PiAKPj4gCj4+IAo+Pj4gCj4+PiBPbiBGcmksIEphbiAxMCwg
MjAyNSBhdCA5OjQz4oCvQU0gSm9uYXRoYW4gTW9ydG9uIDxjaHJvbWF0aXg5OUBnbWFpbC5jb20+
IHdyb3RlOgo+Pj4+IAo+Pj4+PiBPbiAxMCBKYW4sIDIwMjUsIGF0IDc6MDcgcG0sIERhdmUgVGFo
dCB2aWEgQ2FrZSA8Y2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQ+IHdyb3RlOgo+Pj4+PiAKPj4+
Pj4gSSBkbyBub3QgdGhpbmsgTlFCIGJlbG9uZ3MgaW4gVm9pY2UgKHdoaWNoIHNoYXJlcyBwcmlv
cml0eSB3aXRoCj4+Pj4+IG5ldGNvbnRyb2wsIGV0YykuIEkgYWxzbyBkbyBub3QgdGhpbmsgaXQg
YmVsb25ncyBpbiBiZXN0IGVmZm9ydCBhcyB0aGUKPj4+Pj4gaW50ZW50IGlzIHRvIGdldCBhIHF1
aWNrIHJlc3BvbnNlIHRvIGEgc2hvcnQgZmxvdy4geWVzLCBGUSBzb2x2ZXMgYQo+Pj4+PiBsb3Qg
b2YgcHJvYmxlbXMsIGJ1dAo+Pj4+IAo+Pj4+IEFzIGZhciBhcyBJJ20gY29uY2VybmVkLCBGUSBp
bXBsZW1lbnRzIGV2ZXJ5dGhpbmcgdGhhdCBOUUIgd2FudHMuICBJbiBhIHN5c3RlbSBpbXBsZW1l
bnRpbmcgRlEsIHRyZWF0aW5nIE5RQiB0cmFmZmljIGFzIGJlc3QtZWZmb3J0IGlzIHRoZSBSaWdo
dCBUaGluZy4KPj4+PiAKPj4+PiBBbmQgSSBzZWNvbmQgdGhlIG5vdGlvbiB0aGF0IHNsYXZpc2hs
eSBjb3B5aW5nIHd0aGUgYnJva2VuIGRlZmF1bHQgYmVoYXZpb3VyIG9mIFdpRmkgcm91dGVycyBp
cyB0aGUgV3JvbmcgVGhpbmcuCj4+Pj4gCj4+Pj4gLSBKb25hdGhhbiBNb3J0b24KPj4+PiAKPj4+
IAo+Pj4gCj4+PiAtLQo+Pj4gRGF2ZSBUw6RodCBDU08sIExpYnJlUW9zCj4+IAo+IAo+IAo+IC0t
IAo+IERhdmUgVMOkaHQgQ1NPLCBMaWJyZVFvcwo+IDwwMDAxLXNjaF9jYWtlLUFsaWduLVFvUy10
cmVhdG1lbnQtdG8tV2luZG93cy1hbmQtWm9vbS5wYXRjaD4KCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMu
YnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nh
a2UK
