Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id F0062655B2B
	for <lists+cake@lfdr.de>; Sat, 24 Dec 2022 21:41:21 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 915543CB40;
	Sat, 24 Dec 2022 15:41:20 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1671914480;
	bh=xvJcyMUmzwHly0+IegzuJ01aqQ4dJufxe9pFwXwmZuQ=;
	h=Date:References:To:In-Reply-To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:
	 From;
	b=Vhekq8d4CMmKb5vROQicEC9sUs/caGtYAdnZ76O/4U7xWkR9HmRL17owdywgTvSZd
	 dMDWgZR7L77NTkh5DJU/mJ/oiZuhIQc+nkRid+be/Dkk0K2MdBukoS3yq5nnZ8NYAP
	 qxEiMn/4WmTlhVKnBnCQx3/esanE6FkR1B5yrmvW4m/GnITTlj6kXFLJrGMu1ZlpPv
	 hS/qGfjCg1513DjC6mYqsIcFVbWPtjMEalafHjLNF0QgMTZElcl1If1hUyQOb04oTs
	 aTPCzSb9HnvhDLpqaSt8g/rdtfssk4ugGei5b7RAIMuSnvfEqSEkHfyudjxT6lykNO
	 OY2iRCuh/Nkbw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 0346C3B2A4
 for <cake@lists.bufferbloat.net>; Sat, 24 Dec 2022 15:41:18 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.de; s=s31663417;
 t=1671914477; bh=BzmYXrqRRnzNj26wsTZNYvf3JXvjWoUcZglHY/Q1/Ms=;
 h=X-UI-Sender-Class:From:Subject:Date:References:To:In-Reply-To;
 b=AxpvzsBwpe5/Ly0kCGR99rQ2yKuaBdK0EjprKuzjWFrUCYa5OWRgaSj7aViduu5oK
 9zAmqmMBycvL1QyEihkeQ2PkpIImzYnQ29+Nfo08JvSKQM4sLKmfGzNiUuN3XHAcZJ
 /y7C6uFDCAuSQCoovVWP7WkY68Qp6BlMALrAKCT9zlCwmiypa+trM1jX99zrHsmAkG
 IihG2GoyZJp0cXvdGbzpFPikhTDYKCM/HnLjVszwAhrrDNWrJT6dgux+ZoJUYB5HHY
 oJsfeALJp5x1SHtFAwOnOxao2q2jS9cgHov9/m2XGq1Vl82F8xqBrKzBNuhQM8lCEr
 qkmXxqvQ6/3kw==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from smtpclient.apple ([95.112.176.36]) by mail.gmx.net (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1M3DJl-1pA1Cq1zjx-003hVp for
 <cake@lists.bufferbloat.net>; Sat, 24 Dec 2022 21:41:17 +0100
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.120.41.1.1\))
Date: Sat, 24 Dec 2022 21:41:16 +0100
References: <B48E5791-DFD7-4EFF-8B7E-4626CE89954B@gmx.de>
 <CAA93jw7JBZJLPZgW4sBPTqQ+1zpxsJAV4+zSw6--CBXaZE3Rdg@mail.gmail.com>
 <0b8ef844-5c23-d8d9-0207-38fc2a0105c6@newmedia-net.de>
To: Cake List <cake@lists.bufferbloat.net>
In-Reply-To: <0b8ef844-5c23-d8d9-0207-38fc2a0105c6@newmedia-net.de>
Message-Id: <7F2C1772-0C8F-47F5-AC9F-B5B4EEA583A6@gmx.de>
X-Mailer: Apple Mail (2.3696.120.41.1.1)
X-Provags-ID: V03:K1:e8CHeSEk7dY9qMrvE3CUw0Xaj3OlWE01T8V+N1Z29p2cyUCULw/
 oOJoipiUAJNPrC9EEwcW5tQjedxbn/2uGDIz5g821By3l9KIb0aK07RnN2OSVhIyId+ycV+
 i40vWnAiW3GjBMx/Fk79I8MhrpacayjWnGSiZ6aIVM9pqPlTvTck3assF5M0qPGmpJpanyk
 BN2I2TcMMeaGDpYULcQLQ==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:vSFiI1XzcSc=;gS2dXLRelpS+W7E4G7B2XhIqCFJ
 PdNOddQ0A28/6ZaqvKn/S22z0PnUOW4SFt2q3CVrfhNB6Uud8iEkyW1noqY6irWdjqXdK/i3/
 OBJXUmBDk/SipW3RtFtKjuyv5SDrwu8C1pNjo+GfadPPRqZpsFCpVTPZEPCIpjb1UbF8epR57
 uTL5x9zyKqpLi4UIENO9EWvj/IsjBgSFDmB8+mi7O8In7wmOwKpVMilaJwv66tghv4OKBeoRt
 nXP9D7Va9UlMTyOzFwYlPFk08nTWfA8G9Fmwr+X53ZX19dn8gAJtC2hsmM2SoWRQf0RrXAY5V
 zjHxjn3KpMsEcBeLbviV6U08VfTA0oETpVXXiNHTEWRWSbJsdjKbAowI8/YY9wEVgtFyB1y8V
 EaUeh2muU+KirmSsjtkPigewnp9Hpr9hbiUpckvGb990tfoMH/Ex5ek+tzemJJ/wSLpMw5Ev4
 8h+WwLcEtPDd9xKrPWsF8EOafDNnel6jO+APGlBoqxBbyvU6GdSYeMc0cUpktYUVD91eXW0ZS
 vxP2bYy/+MPdWNB0KbUHzufpy0JVuvDmlgEs9TNzd+s6Tjbs6EDoSa2TFPaOLD2Vwxj9gKDft
 2A1OX+yX0WaiigGHwHPbCM/mt/lRjPPtHOngOhP1ITcKApb2seqwUmwP45NOcCBSZekjUW/j4
 /LVPCX33M6revvitwJkOnKJl7uKV9j6N1M7LSyQBxea5B/jDI0b9eno5xp0qdGNfoXM7a+jmY
 l/qB0pz4wGL6Oo5k1wnjwtr+QtgXADwE9Yi7V7Odg4t250wwFiWjm4+eO5Q+kjZi3Wn2xIAHM
 5kl7CrczKilhPzKIFEPOm4iNKN19i07Jzow+ZhL/Yy489Fdsqb+A05m7PNjn63g0tzgP7/Q2G
 qQGI1AxrU/tJlM49vR4hoqpFsvx8vHkjtDqmmLmTvNfRQipmnDA1WWMLoxxNQP2GhLmonm8D3
 GZUCc79QqVGNM6M9v9Zvl7ZjU/M=
Subject: Re: [Cake] AVM seems to be shipping cake
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

VG90YWxseSB1bnJlbGF0ZWQsIEkgKGFjdHVhbGx5IG15IGtpZHMpIHN0dW1ibGVkIG92ZXIgYSBu
ZXcgd2VpciBnYW1lIHNob3cgb24gbmV0ZmxpeCBjYWxsZWQgImlzIGl0IGNha2U/Ii4KVmVyeSBs
aWdodCBvbiBuZXR3b3JraW5nIGFuZCBoZWF2eSBvbiBjcmVhbSwgYnV0dGVyIGFuZCBzdWdhciwg
SSBndWVzcyB0byBiZSBleHBlY3RlZCBmb3IgYSBjb29raW5nLWFkamFjZW50IHNob3cgOykKCkhh
cHB5IGVuZCBvZiB0aGUgeWVhci4uLi4KCVNlYmFzdGlhbgoKCgoKPiBPbiBEZWMgMjQsIDIwMjIs
IGF0IDE5OjUyLCBTZWJhc3RpYW4gR290dHNjaGFsbCB2aWEgQ2FrZSA8Y2FrZUBsaXN0cy5idWZm
ZXJibG9hdC5uZXQ+IHdyb3RlOgo+IAo+IHRoZXJlIGFyZSBqdXN0IDE5NQo+IAo+IEFtIDIwLjEy
LjIwMjIgdW0gMTc6MTIgc2NocmllYiBEYXZlIFRhaHQgdmlhIENha2U6Cj4+IFlheSEgMjYwIG1v
cmUgY291bnRyaWVzIHRvIGdvIQo+PiAKPj4gT24gVHVlLCBEZWMgMjAsIDIwMjIgYXQgNzo0NiBB
TSBTZWJhc3RpYW4gTW9lbGxlciB2aWEgQ2FrZQo+PiA8Y2FrZUBsaXN0cy5idWZmZXJibG9hdC5u
ZXQ+IHdyb3RlOgo+Pj4gRGVhciBhbGwsCj4+PiAKPj4+IGp1c3QgaGFkIGEgbG9vayBpbiBhIHJl
Y2VudCBmaXJtd2FyZSBhcmNoaXZlIGZvciBBVk0ncyBmcml0emJveCA3NTMwLCBhbmQgJ3N0cmlu
Z3MgZHNsZCcgKGRzbGQgaXMgQVZNJ3Mgc2luZ2xlIGJsb2IgIm1hZ2ljIGJpbmFyeSBkc2wgZGVh
bW9uIiB0aGF0IGVuY2Fwc3VsYXRlcyBhIGxvdCBvZiB0aGVpciB2YWx1ZSBwcm9wb3NpdGlvbikg
cmV2ZWFscyB0aGF0IHRoZXkgbGlrZWx5IGFyZSB1c2luZyBjYWtlKjoKPj4+IAo+Pj4gcWRpc2Mg
YWRkIGRldiAlcyBoYW5kbGUgMTA6MCByb290IGNha2UgYmFuZHdpZHRoICV1a2JpdCBiZXN0ZWZm
b3J0ICVzICVzIGR1YWwtZHN0aG9zdCBpbmdyZXNzCj4+PiBxZGlzYyBhZGQgZGV2ICVzIGhhbmRs
ZSAxMDowIHJvb3QgY2FrZSBiYW5kd2lkdGggJXVrYml0IGJlc3RlZmZvcnQgb3ZlcmhlYWQgJWQg
ZHVhbC1kc3Rob3N0IGluZ3Jlc3MKPj4+IAo+Pj4gCj4+PiBJIGZhaWxlZCB0byBmaW5kIHRoZSBt
YXRjaGluZyBkdWFsLXNyY2hvc3QgZW50cnkgc28gdGhleSBtaWdodCB1c2Ugc29tZXRoaW5nIGVs
c2UgZm9yIGVncmVzcy4gSSBoYXZlIG5vIGluc2lnaHQgd2hldGhlci9ob3cgdGhpcyBjYW4gYmUg
YWN0aWF0ZWQgKG5vdCB1c2luZyBhIGZiNzUzMCBteXNlbGYpLCBidXQgYXQgbGVhc3QgdGhpcyBp
cyBtYWtpbmcgaXQgb3V0IHRvIHRoZSB1bndhc2hlZCBtYXNzZXMgaW4gR2VybWFueS4uLiAoVGhl
IEZCNzUzMCBpcyB0aGUgInZhbHVlIiBib3ggZm9yIHRoZSBtb3N0IHJlY2VudCBEU0wgdmFyaWFu
dCBkZXBsb3llZCBpbiBHZXJtYW55LCBwcm9maWxlIDM1YiB2ZWN0b3JpbmcsIHNvbGQgdW5kZXIg
dGhlIG1vbmlrZXIgInN1cGVyLXZlY3RvcmluZyIpLgo+Pj4gCj4+PiAKPj4+ICopIG1ha2VzIHNl
bnNlIHNvbWUgbW9udGhzIGFnbyB0aGV5IHBvc3RlZCBhIHZpZGVvIHByb21pc2luZyBlbmhhbmNl
cyBmYWlybmVzcyBmb3IgaW50ZXJuYWwgdXNlcnMsIEkgd2FzIHB1enpsZWQgYXQgdGhlIHRpbWUg
aG93IHRoZXkgd291bGQgaW1wbGVtZW50IHRoYXQsIGJ1dCBpdCBzZWVtcyB0aGF0IHRoZXkgZGlk
IG5vdCByZS1pbnZlbnQgdGhlIHdoZWVsIGhlcmUgYnV0IHdlbnQgZm9yCj4+PiAKPj4+IFJlZ2Fy
ZHMKPj4+ICAgICAgICAgU2ViYXN0aWFuCj4+PiAKPj4+IFAuUy46IFRvIG15IGpveSB0aGV5IGFs
c28gc2VlbSB0byBkaWxpZ2VudGx5IHNldCBvdmVyaGVhZCwgZm9yIHRoZWlyIEhUQi9UQkYgaW5z
dGFuY2VzIHVzaW5nIHRjLXN0YWIuLi4KPj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCj4+PiBDYWtlIG1haWxpbmcgbGlzdAo+Pj4gQ2FrZUBsaXN0cy5i
dWZmZXJibG9hdC5uZXQKPj4+IGh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZv
L2Nha2UKPj4gCj4+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCj4gQ2FrZSBtYWlsaW5nIGxpc3QKPiBDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldAo+
IGh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNh
a2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xp
c3RpbmZvL2Nha2UK
