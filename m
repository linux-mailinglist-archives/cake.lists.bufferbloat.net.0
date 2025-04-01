Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D6BCA781CA
	for <lists+cake@lfdr.de>; Tue,  1 Apr 2025 19:57:35 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 99E203CB58;
	Tue,  1 Apr 2025 13:57:30 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1743530250;
	bh=b2KQhji1k9/YezWiwFXQXiPGqKY5TYsDPMGIKygOx8Q=;
	h=In-reply-to:Date:References:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=E9LRBNNgPY0P41rRo1a/7U4JyKwpiFpNanHh1mAtYG+uqILVmYQJ2zxWwJ4lRG6e6
	 9Rc5tS9MkobtQPxLIyy3eIkVQKklKuuIkvRC8uMaLrXLQ2yW85NYW3YL0tKwchKLSD
	 REXOmtHW+N63anAKNUeRZMwPGmksa6FE+x65xd1StLECib805EAjVo0m2EB9a879Oa
	 i7JjMpydnLx6Wf+5N6DMkvarfEit6br3HQ8Mgr0IH1knoDjnTqIx1c6tCWuJTlVx0Z
	 RbUyG/YHt7MtfMph2NaM7BUG85mWWUKeWdGz/myhZWe8OKYt6HxMbmcZebMCDsDZoo
	 tgKDuURgmkmHw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from ma-mx02.apple.com (ma-mx02.apple.com [17.23.4.17])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 2A9703CB42
 for <cake@lists.bufferbloat.net>; Tue,  1 Apr 2025 13:57:29 -0400 (EDT)
Received: from mr55p01nt-mtap01.apple.com
 (mr55p01nt-mtap01.apple.com [10.170.185.217]) by st47p01nt-mxp02.apple.com
 (Oracle Communications Messaging Server 8.1.0.27.20250130 64bit (built Jan 30
 2025)) with ESMTPS id <0SU11M8FIWJMUJ10@st47p01nt-mxp02.apple.com> for
 cake@lists.bufferbloat.net; Tue, 01 Apr 2025 17:57:28 +0000 (GMT)
X-Proofpoint-ORIG-GUID: pswFGLfOjsUq92WiMyeBpymAR7laCB_y
X-Proofpoint-GUID: pswFGLfOjsUq92WiMyeBpymAR7laCB_y
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-01_07,2025-04-01_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=interactive_user_notspam
 policy=interactive_user score=0 bulkscore=0 mlxlogscore=999 malwarescore=0
 adultscore=0 suspectscore=0 phishscore=0 spamscore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2502280000
 definitions=main-2504010110
Received: from mr55p01nt-mmpp04.apple.com
 (mr55p01nt-mmpp04.apple.com [10.170.185.204]) by mr55p01nt-mtap01.apple.com
 (Oracle Communications Messaging Server 8.1.0.27.20250130 64bit (built Jan 30
 2025)) with ESMTPS id <0SU102X8KWJO16H0@mr55p01nt-mtap01.apple.com>; Tue,
 01 Apr 2025 17:57:24 +0000 (GMT)
Received: from process_milters-daemon.mr55p01nt-mmpp04.apple.com by
 mr55p01nt-mmpp04.apple.com
 (Oracle Communications Messaging Server 8.1.0.27.20250130 64bit (built Jan 30
 2025)) id <0SU10Z300WBTRV00@mr55p01nt-mmpp04.apple.com>; Tue,
 01 Apr 2025 17:57:24 +0000 (GMT)
X-Va-A: 
X-Va-T-CD: f2c1ed3109027d2e1bc140f704584763
X-Va-E-CD: 551a943e12d85a71590ae2a3fd5aaaa5
X-Va-R-CD: 5843dedd332c5f58c94a6a38f8aa9ecc
X-Va-ID: 3e832801-6d11-4380-b400-13fc385f2d06
X-Va-CD: 0
X-V-A: 
X-V-T-CD: f2c1ed3109027d2e1bc140f704584763
X-V-E-CD: 551a943e12d85a71590ae2a3fd5aaaa5
X-V-R-CD: 5843dedd332c5f58c94a6a38f8aa9ecc
X-V-ID: 4b4646d3-5a50-4d1f-b6c2-85b35b64a7a0
X-V-CD: 0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-01_07,2025-04-01_01,2024-11-22_01
Received: from smtpclient.apple ([17.11.158.21]) by mr55p01nt-mmpp04.apple.com
 (Oracle Communications Messaging Server 8.1.0.27.20250130 64bit
 (built Jan 30
 2025)) with ESMTPSA id <0SU10YV8RWJMPO00@mr55p01nt-mmpp04.apple.com>; Tue,
 01 Apr 2025 17:57:23 +0000 (GMT)
MIME-version: 1.0 (Mac OS X Mail 16.0 \(3826.500.181.1.2\))
In-reply-to: <CAJUtOOizHZCey6KihyRHkZ9N4FJwyzuM5RL6QXPejCSWnbPE3g@mail.gmail.com>
Date: Tue, 01 Apr 2025 10:57:22 -0700
Message-id: <E3699A9A-9B07-4F19-969B-B3723E3DEF7A@apple.com>
References: <CAJUtOOizHZCey6KihyRHkZ9N4FJwyzuM5RL6QXPejCSWnbPE3g@mail.gmail.com>
To: Frantisek Borsik <frantisek.borsik@gmail.com>
X-Mailer: Apple Mail (2.3826.500.181.1.2)
Subject: Re: [Cake]
 =?utf-8?q?=5BBloat=5D_In_loving_memory_of_Dave_T=C3=A4ht_?=
 =?utf-8?q?=3C3?=
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
From: Stuart Cheshire via Cake <cake@lists.bufferbloat.net>
Reply-To: Stuart Cheshire <cheshire@apple.com>
Cc: codel-wireless@lists.bufferbloat.net,
 Jeremy Austin via Rpm <rpm@lists.bufferbloat.net>,
 cerowrt-commits@lists.bufferbloat.net,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 libreqos <libreqos@lists.bufferbloat.net>,
 Dave Taht via Starlink <starlink@lists.bufferbloat.net>,
 Herbert Wolverson <hwolverson@libreqos.io>,
 "Frantisek \(Frank\) Borsik" <frank@libreqos.io>,
 =?utf-8?Q?Network_Neutrality_is_back!_Let=C2=B4s_make_the_technical_as?=
 =?utf-8?Q?pects_heard_this_time!?= <nnagain@lists.bufferbloat.net>,
 codel@lists.bufferbloat.net, cerowrt-devel@lists.bufferbloat.net,
 bloat <bloat@lists.bufferbloat.net>, Cake List <cake@lists.bufferbloat.net>,
 bloat-ietf@lists.bufferbloat.net, cerowrt-users@lists.bufferbloat.net,
 =?utf-8?Q?Robert_Chac=C3=B3n?= <robert@libreqos.io>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

RGF2ZSBUw6RodCB3YXMgYSBnb29kIGZyaWVuZCBhbmQgYSBtZW50b3IgdG8gbWUgYW5kIHNvIG1h
bnkgb3RoZXJzLiBIZSBpbnNwaXJlZCBtZSB0byBmb2N1cyBtdWNoIG9mIG15IHRpbWUgYW5kIGVm
Zm9ydCBpbiB0aGUgbGFzdCBkZWNhZGUgdG8gaGlzIHZpc2lvbiBvZiBhIGZhc3RlciBJbnRlcm5l
dCBleHBlcmllbmNlIGZvciBldmVyeW9uZSB0aHJvdWdoIGxvd2VyIG5ldHdvcmsgbGF0ZW5jeS4g
VGhlIHJlc3VsdHMgb2YgRGF2ZeKAmXMgd29yayBhcmUgZmluYWxseSBjb21pbmcgdG8gZnJ1aXRp
b24sIGFuZCB0aG9zZSBoZSB0YXVnaHQgd2lsbCBjb250aW51ZSBoaXMgd29yayB0cmFuc2Zvcm1p
bmcgaG93IHRoZSBJbnRlcm5ldCBvcGVyYXRlcyBhbmQgaW1wcm92aW5nIHRoZSBsaXZlcyBvZiBj
b3VudGxlc3MgbWlsbGlvbnMgb2YgcGVvcGxlIHdvcmxkd2lkZS4KClN0dWFydCBDaGVzaGlyZQoK
T24gQXByIDEsIDIwMjUsIGF0IDEwOjI3LCBGcmFudGlzZWsgQm9yc2lrIHZpYSBCbG9hdCA8Ymxv
YXRAbGlzdHMuYnVmZmVyYmxvYXQubmV0PiB3cm90ZToKCj4gSGVsbG8gdG8gYWxsLAo+IAo+IFdl
4oCZcmUgZGV2YXN0YXRlZCB0byBhbm5vdW5jZSB0aGF0IERhdmUgVMOkaHQgaGFzIHBhc3NlZCBh
d2F5Lgo+IAo+IERhdmUgd2FzIGFuIGFtYXppbmcgbWFuLCBoZWxwaW5nIHRoZSB3b3JsZCB3aXRo
IEZRLUNvRGVsIGFuZCBDQUtFLCBmaWdodGluZyBidWZmZXJibG9hdCBhbmQgdHJ5aW5nIHRvIG1h
a2UgdGhlIHdvcmxkIGEgYmV0dGVyIHBsYWNlLiBBbHdheXMgd2lsbGluZyB0byBoZWxwLCBhbmQg
d2l0aG91dCBoaW0g4oCTIExpYnJlUW9TIChhbmQgdGhlIG90aGVyIFFvRSBzb2x1dGlvbnMgb3V0
IHRoZXJlKSB3b3VsZG7igJl0IGV4aXN0Lgo+IAo+IERhdmUgd2FzIGFuIGluc3BpcmF0aW9uLCBh
bmQgd2UgYWxsIG1pc3MgaGltLiBXZeKAmXJlIHJlYWNoaW5nIG91dCB0byBmYW1pbHkgYW5kIGNs
b3NlIGZyaWVuZHMgdG8gc2VlIGlmIHRoZXJl4oCZcyBhbnl0aGluZyB3ZSBjYW4gZG8gdG8gaGVs
cC4KPiAKPiBEYXZlIHdhcyBhbiBpbnNwaXJhdGlvbiB0byB1cy4gRGF2ZeKAmXMgY29udHJpYnV0
aW9ucyB0byBMaW51eCwgRlEtQ29EZWwsIGFuZCBDQUtFIGltcHJvdmVkIGludGVybmV0IGNvbm5l
Y3Rpdml0eSBhcm91bmQgdGhlIHdvcmxkIGZvciBtaWxsaW9ucyBvZiBwZW9wbGUuIEJlY2F1c2Ug
b2YgaGltLCBtaWxsaW9ucyBvZiBwZW9wbGUgbm93IGhhdmUgYWNjZXNzIHRvIHJlbGlhYmxlIHZp
ZGVvIGNhbGxzIOKAkyBhbmQgaW4gdHVybiwgYWNjZXNzIHRvIGxvdmVkIG9uZXMsIGhlYWx0aGNh
cmUsIGFuZCBjb21tdW5pdHkuIE9uZSBvZiBSb2JlcnTigJlzIElTUCBjdXN0b21lcnMgaXMgYSBr
aW5kIHBhcmFwbGVnaWMgd29tYW4gd2hvIGxpdmVzIGluIGEgZmFyLWZsdW5nIHJ1cmFsIENvbG9u
aWEgYXJvdW5kIEVsIFBhc28sIFRleGFzLiBIZXIgcmVsaWFibGUgYWNjZXNzIHRvIGhlciBkb2N0
b3JzIHRocm91Z2ggdGVsZW1lZGljaW5lLCBhbmQgdG8gaGVyIGZhbWlseSB0aHJvdWdoIEZhY2VU
aW1lLCB3YXMgb25seSBtYWRlIHBvc3NpYmxlIGJlY2F1c2Ugb2YgaGlzIGFsZ29yaXRobXMuIFRo
ZXJlIGFyZSBtaWxsaW9ucyBvZiBjYXNlcyBsaWtlIGhlcnMsIHdoZXJlIERhdmXigJlzIGNvbnRy
aWJ1dGlvbnMgaGF2ZSBzaWxlbnRseSBlbmFibGVkIGh1bWFuIGNvbm5lY3Rpb24gYW5kIHNhZmV0
eS4gRXZlcnl0aGluZyBEYXZlIGNvbnRyaWJ1dGVkIHRvIHRoZSB3b3JsZCBvZiB0ZWNobm9sb2d5
IHdhcyBmcmVlIGFuZCBvcGVuIHNvdXJjZSwgZm9yIHRoZSBiZXR0ZXJtZW50IG9mIGh1bWFuaXR5
Lgo+IAo+IERhdmUgaXMgdGhlIHJlYXNvbiB0aGF0IFN0YXJsaW5rIHdhcyBhYmxlIHRvIHRhY2ts
ZSBpdHMgbGF0ZW5jeSBpc3N1ZXMg4oCTIGVuYWJsaW5nIGEgZ2VuZXJhdGlvbiBvZiB5b3VuZyBl
bnRyZXByZW5ldXJzIGFjcm9zcyB0aGUgZGV2ZWxvcGluZyB3b3JsZCwgc3VjaCBhcyB0aGVzZSB5
b3VuZyBmb2xrcyBwaWN0dXJlZCBpbiB0aGUgUGhpbGxpcGluZXMsIHRvIHN0YXJ0IHRoZWlyIG93
biBJU1BzIHRvIGV4cGFuZCBpbnRlcm5ldCBhY2Nlc3MgdG8gdGhlaXIgY29tbXVuaXRpZXMuIERh
dmUgc3RhcnRlZCB3b3JrIG9uIEZRLUNvRGVsIGluIHBhcnQgYmVjYXVzZSBvZiBoaXMgb3duIGpv
dXJuZXkgd29ya2luZyB0byBleHBhbmQgaW50ZXJuZXQgYWNjZXNzIGluIE5pY2FyYWd1YSwgc28g
d2Uga25vdyBoZSBzYXcgdGhhdCBoaXMgd29yayBoYWQgY29tZSBmdWxsLWNpcmNsZSBhbmQgaGVs
cGVkIHNvIG1hbnkuCj4gCj4gV2XigJlyZSBpbmNyZWRpYmx5IGdyYXRlZnVsIHRvIGhhdmUgRGF2
ZSBhcyBvdXIgZnJpZW5kLCBtZW50b3IsIGFuZCBhcyBzb21lb25lIHdobyBjb250aW51b3VzbHkg
aW5zcGlyZWQgdXMg4oCTIHNob3dpbmcgdXMgdGhhdCB3ZSBjb3VsZCBkbyBiZXR0ZXIgZm9yIGVh
Y2ggb3RoZXIgaW4gdGhlIHdvcmxkLCBhbmQgbGV2ZXJhZ2UgdGVjaG5vbG9neSB0byBtYWtlIHRo
YXQgaGFwcGVuLiBIZSB3aWxsIGJlIGRlYXJseSBtaXNzZWQuCj4gCj4gUFM6IERhdmUgaXMgZm9y
ZXZlciBpbiBvdXIgaGVhcnRzIGFuZCBzb3VscywgaW4gb3VyIHJvdXRlcnMgYW5kLi4uaW4gcHJv
ZHVjdGlvbiEKPiBodHRwczovL2dpdGh1Yi5jb20vTGlicmVRb0UvTGlicmVRb1MvcHVsbC82ODQK
PiAKPiBBbGwgdGhlIGJlc3QsCj4gCj4gRnJhbmtGcmFudGlzZWsgKEZyYW5rKSBCb3JzaWsKPiAg
aHR0cHM6Ly93d3cubGlua2VkaW4uY29tL2luL2ZyYW50aXNla2JvcnNpawo+IFNpZ25hbCwgVGVs
ZWdyYW0sIFdoYXRzQXBwOiArNDIxOTE5NDE2NzE0IAo+IGlNZXNzYWdlLCBtb2JpbGU6ICs0MjA3
NzUyMzA4ODUKPiBTa3lwZTogY2FzaW9hNTMwMmNhCj4gZnJhbnRpc2VrLmJvcnNpa0BnbWFpbC5j
b20KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJs
b2F0IG1haWxpbmcgbGlzdAo+IEJsb2F0QGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldAo+IGh0dHBzOi8v
bGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Jsb2F0CgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3Rz
LmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9j
YWtlCg==
