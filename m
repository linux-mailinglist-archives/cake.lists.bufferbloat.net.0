Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9317B6B9BC9
	for <lists+cake@lfdr.de>; Tue, 14 Mar 2023 17:38:53 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 9336D3CBC4;
	Tue, 14 Mar 2023 12:38:52 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1678811932;
	bh=qMVoL/235vM3/kG6GjeuLfYSCd+Du460aQa/aM0Yfto=;
	h=In-Reply-To:Date:References:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=QdBB7geFjGseun5AAhKEJljycapoO/j2z4eRViOOU7e5Nhn89aMWUiTw7b9yKQ0E2
	 a5g2fzpuS+iuNoS2gaJexYa8FzkrO8AAGOnNdkPGx2aSaLWjqVhtFGbtfiaVnlFhXW
	 Tb5F/kaeDO+UCw+ntF0d3T7u0vpeDobFFUQ922JfmFu64GPHSy8xczwauHkA0I1EU5
	 tDJKV98hZ7WHCRfpFF00K5hrPXVUaxxElEs855YhNsraIwMkuw4Hyz2fLnhS/4pVBJ
	 JbxHI8iUDJ1isGTC/8m8U2z3vckk183gdLG0vRYzxH76do501XxERiGAL97Rb1DGIf
	 KwIkXfPuMvAJQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 644893CB37
 for <cake@lists.bufferbloat.net>; Tue, 14 Mar 2023 12:38:51 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.de; s=s31663417;
 t=1678811928; i=moeller0@gmx.de;
 bh=XfF6gTtFs64Pa4I2sr48HaIuPNB8r/ZyYSM3m9yFBGc=;
 h=X-UI-Sender-Class:Subject:From:In-Reply-To:Date:Cc:References:To;
 b=h2LPXpDU8oezZcVC2CCaU2YpCKy7ntfCWdBmMuY/O8Ojhos1irkAizyldlf+Q6BzL
 7pt620taZYJw5J1hFRS4DKJ6CYig/qURA38TQOOdgnoC5w70N0y2Lvo/ltOcP9vd8V
 TWSjPxRWoyeHCsPBiF755TQGzknOczdUd8/AD0ymqP7nCV2lJUOsb9bsI6n49r5bAg
 wxTwxXpj+si30fSIbRVHNec5SbpiIsg4evXZFR6062mpvH1OBx8n3Y8+mkz+EK2nBu
 kpWdjNBp/cTyBlAn2g1JvUm/5XUqUWFH90+HEOj5ivzqIgxSpzeKMk2VZOrczDe+0N
 R74gFpppv6FgQ==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from smtpclient.apple ([134.76.241.253]) by mail.gmx.net (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1Mplc7-1qJ9Wv1wBp-00qAV0; Tue, 14
 Mar 2023 17:38:48 +0100
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.120.41.1.2\))
In-Reply-To: <CAA93jw4_MAX1DULpvU_Uo7BuyvvRpqZ-_gZP+HbhC251osCT3g@mail.gmail.com>
Date: Tue, 14 Mar 2023 17:38:47 +0100
Message-Id: <6FEAB4C1-0849-4166-9725-46CC91D79A7B@gmx.de>
References: <167348364734.15098.9183646444272144529@ietfa.amsl.com>
 <FR2P281MB1527B1114EA0718F8BB19DBF9CD79@FR2P281MB1527.DEUP281.PROD.OUTLOOK.COM>
 <659CE6DE-2B9D-4210-BAF8-BCC99E2ED875@cablelabs.com>
 <FR2P281MB1527003371292BDB9F08764A9CDE9@FR2P281MB1527.DEUP281.PROD.OUTLOOK.COM>
 <DEB97936-375A-41C8-8ECB-E33F94D30056@cablelabs.com>
 <FR2P281MB15273966161929E8BAB937869CA29@FR2P281MB1527.DEUP281.PROD.OUTLOOK.COM>
 <7434C6A7-4CED-4D39-A852-2714AB9DA1DC@cablelabs.com>
 <FR2P281MB1527C89A1654A77FAD6A24AF9CBE9@FR2P281MB1527.DEUP281.PROD.OUTLOOK.COM>
 <CAA93jw4_MAX1DULpvU_Uo7BuyvvRpqZ-_gZP+HbhC251osCT3g@mail.gmail.com>
To: =?utf-8?Q?Dave_T=C3=A4ht?= <dave.taht@gmail.com>
X-Mailer: Apple Mail (2.3696.120.41.1.2)
X-Provags-ID: V03:K1:e1okrW49Y1f8nbQsC27pAZs7yiBzOvfQyOfrJWhVfttvJWm4UdR
 asFYKj+KLPdX3S3HpeyTNPxA74GVEvhJPt3mYTA0eQaNWdRMzcoxc/v0ybWsfomD33Z4D1q
 Nim7+iQTeZmjXvZrSbTNPqNXGBl2bjUwxMm1hTeX/2mFUKZWvkhyMjQYw/VggqBwBxGyXBl
 o1Ro9Ayfgs/1w5NrT5fxQ==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:/GwwGi0HDFc=;SS4fdB1+Dc71b9l60NJdPQtTEkD
 6EjkWKNPDXSBLECxa9GTctXv2s8tP/mnn+d/UqZ4E0Qhfv6Je+Ju7HwMpOfZRPvHH/hVONfz2
 J5GTuNiNG6aLD3Hzw2VzEygTxKJpBgUThUFbj7iLS5X773pev85nPC8W1uXLHYcaJXXuLpPYK
 sVyG19oSR2oLi2l8AR5fOZpBdPPQ/l+oqN9yidk27R6H5yZoA0NM+A5LgVa+6K5261NOTZks7
 /gHAgy8zNO+8KZvQQKhfijaxBOPvFKbHMo8Th7CjgShu23SQYXwnQB3l0EBkTYNQ0TI64O645
 5D50iqz3m+AgNM8TcnTHVgSjO8SH7JyHpaCoIYlaBp1UzgPiJfUDu6d5T9F+LAJq1Pe9J+Bby
 9G+Ckkg8WTJI0sq5CoNTJ8jiUGXbBsxVBg6JOHZ6/lPzMd6uOaKPGf8CE0Nawx2Lg+bykWLwJ
 H578DE9b+XSEQYnNdbJ+I/YGi73WA8VQZzgJedfDPSnB1LkrW9Eh27hwH+fEtZlm/R/SjVYYM
 5UqCeyEpfJchhskFutbg9tjR/+2/uyDqcCWi7gSES5mqfghoxxq3Yz7wtdg3xgYUtqS5FtKrZ
 LfBz9JGLXya1J64RK4pU6z8RfOu4MvmOyxRyLrkusOIe1prxB82uqf9RrOoxaF82jWImrMgu5
 l0O63jlLp2vt7hPNZ5coHh1u4mKmk0hgGfsb6Dqs5qiRjU63b/kliIO7uOjA3wueHoJ7j1dhi
 jWZ97erCKGKHzBrwjLjxw6gAj+kWT8EPgbYumF6YGiBEhO5JdTd6amFOyuLQZkOlqtf9wntju
 wXBJcMAXp7sHTyuH+Hnexu4XcsGtzhEUDI4l4uIxRMf0capymAl5PO53Vf0T8TkVWg0mzhWKD
 b48o4L58UaCYy/QbSAZxG5Xdzdf8T2TxozzkXEukgXzi2pM5yobpRbVCAPpQZ6ZZfT7u1BrCz
 7btJI1o6C+6rM2V9VCl0ytGSKgE=
Subject: Re: [Cake] [tsvwg] draft-ietf-tsvwg-nqb-15.txt vs the cake AQM
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
Cc: Cake List <cake@lists.bufferbloat.net>, Ruediger.Geib@telekom.de,
 tsvwg IETF list <tsvwg@ietf.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SGkgRGF2ZSwKCgo+IE9uIE1hciAxNCwgMjAyMywgYXQgMTU6MDEsIERhdmUgVGFodCA8ZGF2ZS50
YWh0QGdtYWlsLmNvbT4gd3JvdGU6Cj4gCj4gSSBoYXZlIGJlZW4gc2l0dGluZyBvbiB0aGUgY2Fr
ZSByZWxhdGVkIHBhdGNoZXMgZm9yIHRoaXMgZm9yIHllYXJzCj4gbm93LCBhbmQgaXQgaXMgbXkg
aG9wZSB0byBnZXQgc3VwcG9ydCBmb3IgTlFCIGludG8gdGhlIG5leHQgbGludXgKPiByZWxlYXNl
LCByZWdhcmRsZXNzIG9mIHdoZXRoZXIgaXQgZ2V0cyB0aHJvdWdoIGxhc3QgY2FsbCBhdCB0aGlz
IHRpbWUsCj4gdW5sZXNzIHRoZSBzZWxlY3RlZCBjb2RlcG9pbnQgbnVtYmVyIGNoYW5nZXMuICg/
KQo+IAo+IENha2UgKHBsZWFzZSBzZWUgdGhlIG1hbiBwYWdlIGhlcmU6Cj4gaHR0cHM6Ly9tYW43
Lm9yZy9saW51eC9tYW4tcGFnZXMvbWFuOC90Yy1jYWtlLjguaHRtbCApIHN1cHBvcnRzCj4gbXVs
dGlwbGUgZGlmZnNlcnYgbW9kZWxzLgo+IAo+IGJlc3RlZmZvcnQgaXMgZXhhY3RseSB0aGF0LCBi
ZXN0ZWZmb3J0LCBhbmQgd2lsbCBub3QgZ2FpbiBOUUIgc3VwcG9ydC4KPiAKPiBUaGUgZGlmZnNl
cnYzIGludGVycHJldGF0aW9uIGlzIHRoZSBkZWZhdWx0LCBhbmQgZ2l2ZW4gdGhhdCBmbG93Cj4g
cXVldWluZyBoYW5kbGVzIG1vc3Qgb2YgdGhlIE5RQi1saWtlIHByb2JsZW1zIG5hdHVyYWxseSwg
YW5kICBWb2ljZQo+IChDUzcsIENTNiwgRUYsIFZBLCBUT1M0KSBpcyBhbGwgdGhhdCBpcyBoYW5k
bGVkIHRoZXJlIHRvZGF5LCBJIGFtCj4gdGhpbmtpbmcgb2YgKm5vdCogZWxldmF0aW5nIE5RQiBp
bnRvIHRoYXQgY2xhc3MgaXMgdGhlIHJpZ2h0IHRoaW5nLgo+IAo+IE5RQiBmaXRzIG5pY2VseSBp
bnRvIHRoZSBkaWZmc2VydjQgbW9kZWwgaW4gdGhlIHZpZGVvIGNsYXNzLCBzbyBJIHdpbGwKPiBw
dXQgaXQgdGhlcmUuIHNpbmNlIGNvdmlkIHdlIHRlbmQgdG8gdXNlIHRoZSBkaWZmc2VydjQgbW9k
ZWwgYSBsb3QgdG8KPiBtYW5hZ2UgdmlkZW9jb25mZXJlbmNpbmcgYmV0dGVyLgoKCUFyZSB5b3Ug
c3VyZT8gVmlkZW8gZ2V0cyB1cCB0byA1MCUgb2Ygc2hhcGVyIGNhcGFjaXR5IGF0IGVsZXZhdGVk
IHByaW9yaXR5Li4gdGhpcyBpcyBub3QgZG9pbmcgdGhlIHJlcXVpcmVkIGVuZm9yY2VtZW50IHRv
IGtlZXAgTlFCIHJhdGUgbG93Li4uCgoKCj4gQXMgZm9yIHRoZSBDUzAtQ1M3IHByZWNlZGVuY2Ug
bW9kZWwgaW5jIGNha2UsIHdlIGhhdmUgZGVjbGFyZWQgdGhhdAo+IG9ic29sZXRlIGluIHRoZSBj
b2RlLCBhbmQgd2hlcmV2ZXIgTlFCIGZhbGxzIGludG8gaXQsIGdyZWF0LiBBbmQgdGhlCj4gZGlm
ZnNlcnY4LCBJIGRvbsK0dCBrbm93Lgo+IAo+IEFueXdheSwgZG9lcyB0aGF0IHdvcmsgZm9yIGV2
ZXJ5b25lPwoKCU5vdCBmb3IgbWUsIGFzIHlvdSBrbm93IEkgcHJlZmVyIHRvIHRyZWF0IE5RQiBs
aWtlIENTMCBmb3IgYWxsIGNsYXNzZXMuCgo+IAo+IFBhcnQgSUkgb2YgdGhpcyB3b3VsZCBiZSBh
IGRpc2N1c3Npb24gb2YgdGhlIHZhcmlvdXMgd2FzaCBtb2RlcywgYnV0Cj4gbWVyZWx5IGdldHRp
bmcgdGhlIHJpZ2h0IGJ5dGUgaW50byB0aGUgcmlnaHQgbG9va3VwIHRhYmxlcyBhZnRlciBhbGwK
PiB0aGlzIGRpc2N1c3Npb24sIHdvdWxkIGJlIG5pY2UuCgoJV2FzaCBpcyBvbmx5IGEgc2luZ2xl
IG1vZGUgYW5kIHNob3VsZCBzdGF5IHNvLCByZW1hcHBpbmcgYWxsIERTQ1BzIGNha2UgdXNlZCB0
byBzdGVlciBwYWNrZXRzIHRvIHByaW9yaXR5IHRpbnMgdG8gQ1MwIHRvIG5vdCBsZWFrL3JldmVh
bCBhbnkgb2YgdGhlIGludGVybmFsIGRldGFpbHMgdXBzdHJlYW0uIFVzZXJzIHdhbnRpbmcgdG8g
ZXhwb3NlIE5RQiB0byB0aGUgd29ybGQsIHNpbXBseSBkbyBub3QgY29uZmlndXJlIHdhc2ggb3Ig
dXNlIG5vd2FzaC4uLgoJSSBhbSBub3Qgc3VyZSB3aGV0aGVyIHlvdSBhcmUgdGhpbmtpbmcgaW4g
dGhhdCBkaXJlY3Rpb24gYXQgYWwgb3Igd2hldGhlciBJIGFtIGp1c3QgInBhcmFub2lkIiBidXQg
d2FzaGluZyBtb3N0IERTQ1BzIGJ1dCByZXRhaW4gTlFCIHdvdWxkIElNSE8gYSBkaXNzZXJ2aWNl
IHRvIGNha2UncyB1c2Vycy4gSWYgeW91IGJlbGlldmUgc3VjaCBhIGZ1bmN0aW9uYWxpdHkgaXMg
bmVlZGVkLCBpdCBzaG91bGQgYmUgY29uZmlndXJhYmxlIHdoaWNoIERTQ1BzIHRvIHJldGFpbiBh
bmQgbW9zdCBpbXBvcnRhbnRseSBpdCBzaG91bGQgbm90IGJlIGNhbGxlZCB3YXNoIHRvIGF2b2lk
IGNvbmZ1c2lvbiB3aXRoIHRoZSBjdXJyZW50IGJlaGF2aW9yLCBwbGVhc2UuCgpSZWdhcmRzCglT
ZWJhc3RpYW4KClAuUy46IFRoZSBiaWdnZXIgaXNzdWUgaXMgdGhhdCBOUUIncyBkZXNpZ24gZ29h
bCBpcyBhIHNoYWxsb3cgYnVmZmVyZWQgcXVldWUgd2hlcmUgdGhlIHNpZGUgZWZmZWN0cyBvZiB0
aGF0IHNoYWxsb3cgYnVmZmVycyBpcyBob3BlZCB0byBkaXNjaXBsaW5lIHRoZSBOUUIgdXNlcnMg
bm90IHRvIHRyeSB0byBnYW1lIHRoZSBzeXN0ZW0uIFdoaWxlIEkgZ2VuZXJhbGx5IGJlbGlldmUg
dGhpcyBub3QgdG8gd29yaywgdGhpcyBpcyBub3Qgd2hhdCBjYWtlIGlzIGdvaW5nIHRvIG9mZmVy
LCBOUUIgZmxvd3Mgd2lsbCByZWFsbHkgb25seSBiZSBib3VuZCBieSB0aGUgY2FwYWNpdHkgc2hh
cmUuIEFuZCBlLmcuIGEgc2luZ2xlIE5RQiBmbG93IG4gZGlmZnNlcnY0ICh3aXRoIG5vIG90aGVy
IG5vbi1CZXN0RWZmb3J0IHRyYWZmaWMsIHdpbGwgYmUgYWJsZSB0byBob2cgPj0gNTAlIG9mIHRo
ZSB0b3RhbCBsaW5rIGNhcGFjaXR5LiBUaGF0IHNlZW1zIHByb2JsZW1hdGljLi4uICh0aGlzIGlz
IGFsc28gdHJ1ZSBmb3Igb3RoZXIgRFNDUHMgbWFwcGluZyBpbnRvIHRoZXNlIHByaW9yaXR5IHRp
ZXJzLCBidXQgdGhlc2UgYXJlIHJhcmVseSBleGVyY2lzZWQgYnkgYXBwbGljYXRpb25zIHdpdGhv
dXQgYWN0aXZlIHVzZXIgaW50ZXJ2ZW50aW9uIGluIHRoZSBmaXJzdCBwbGFjZSkuCgoKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcg
bGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0
Lm5ldC9saXN0aW5mby9jYWtlCg==
