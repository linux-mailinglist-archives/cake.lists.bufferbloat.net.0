Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B7158B6571
	for <lists+cake@lfdr.de>; Tue, 30 Apr 2024 00:19:00 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 0865C3CB59;
	Mon, 29 Apr 2024 18:18:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1714429133;
	bh=DsfBr+Z0X9I/4WIbMMjOaCo2Eoocz5+4IYoB2ERrNF0=;
	h=In-reply-to:Date:References:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=BHwQb86Pa3jd/trgBi/0H4tA82cq9Xx1VVntqTkjUmD02TSMq8eVOBn39EfeX1/Vc
	 t7QfHZ6RCt5FaxlR81pLJxRekNMdTvskrA0X4D1w8uI9T2ZNrXP5FT3xer4FL8wA6t
	 scj9kb7tc8Ot0EaU2D4TIaAchjAveKCZ26Yp3azKElETEwpuGNXdJMXJESm8+F1pNg
	 yxedWwDAVNr9iQ3nvPCdf0QIMdo4+gX5jeVNi0wsfTjCHQnnjoEUkUNgrb0wmB5v+r
	 1w7v74mgOFgaeRU6fDzuG3SrJzLzpwjyvoGrLIbbKTOIcv0lbjb5hctuvao11TnyZu
	 OBPTMU39jKSlA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from ma1-aaemail-dr-lapp01.apple.com
 (ma1-aaemail-dr-lapp01.apple.com [17.171.2.60])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id A39773B29D;
 Wed, 19 Oct 2022 16:44:21 -0400 (EDT)
Received: from pps.filterd (ma1-aaemail-dr-lapp01.apple.com [127.0.0.1])
 by ma1-aaemail-dr-lapp01.apple.com (8.16.0.42/8.16.0.42) with SMTP id
 29JKiJjp059428; Wed, 19 Oct 2022 13:44:20 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=apple.com;
 h=content-type :
 mime-version : subject : from : in-reply-to : date : cc :
 content-transfer-encoding : message-id : references : to; s=20180706;
 bh=ZcK0zJZAIc06ugi8lc7f0L8yMdT7xrEgiLCVAfT+AxY=;
 b=JCcjZ5pFLmChHj8tVYTA95WAe8TqB6llHuHn7Sz1oZVVUlbOWQWOaAXC+91yTI6eWt3d
 uGNg2toEQuJqQBejyu8jQS1te4SEQMJP/i13o6qTMttVgpUZQmhsvu+shSvak2MposN/
 2EnbzzVBlBnJMfajpS+8e9OMy0x63Scp1f0bFVWpalnD772oLDQj3yErzMvbX1mq91FU
 TbHk7/D3rvlWHar31UfQEdM01AUdypCHhZhsvOe2MizOv0lnl8yBuua9g9/a1Fj5uW9B
 Un4huQokp+sVo2OnwiBwENCIgxZaJzYHFd48F+SVNaLLqzkKxe8n5XYvaOKu0n2vDc96 xg== 
Received: from rn-mailsvcp-mta-lapp01.rno.apple.com
 (rn-mailsvcp-mta-lapp01.rno.apple.com [10.225.203.149])
 by ma1-aaemail-dr-lapp01.apple.com with ESMTP id 3k7uh2qh56-6
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO);
 Wed, 19 Oct 2022 13:44:20 -0700
Received: from rn-mailsvcp-mmp-lapp02.rno.apple.com
 (rn-mailsvcp-mmp-lapp02.rno.apple.com [17.179.253.15])
 by rn-mailsvcp-mta-lapp01.rno.apple.com
 (Oracle Communications Messaging Server 8.1.0.19.20220711 64bit (built Jul 11
 2022)) with ESMTPS id <0RK000Y99PLVSPE0@rn-mailsvcp-mta-lapp01.rno.apple.com>; 
 Wed, 19 Oct 2022 13:44:19 -0700 (PDT)
Received: from process_milters-daemon.rn-mailsvcp-mmp-lapp02.rno.apple.com by
 rn-mailsvcp-mmp-lapp02.rno.apple.com
 (Oracle Communications Messaging Server 8.1.0.19.20220711 64bit (built Jul 11
 2022)) id <0RK000800PDZ5L00@rn-mailsvcp-mmp-lapp02.rno.apple.com>; Wed,
 19 Oct 2022 13:44:19 -0700 (PDT)
X-Va-A: 
X-Va-T-CD: 762a9e81ab1774e425bcb42b3bcb8505
X-Va-E-CD: 7b79535e0e2c706cb521c16087105ecb
X-Va-R-CD: b29d391f6d13ba1bafb01998e95aa6b7
X-Va-CD: 0
X-Va-ID: 062715c5-3340-4fa9-9ab3-bf3785191c99
X-V-A: 
X-V-T-CD: 762a9e81ab1774e425bcb42b3bcb8505
X-V-E-CD: 7b79535e0e2c706cb521c16087105ecb
X-V-R-CD: b29d391f6d13ba1bafb01998e95aa6b7
X-V-CD: 0
X-V-ID: df580310-9b30-44ff-8472-d5e3a9972d51
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.545, 18.0.895
 definitions=2022-10-19_12:2022-10-19,
 2022-10-19 signatures=0
Received: from [17.11.94.27] (unknown [17.11.94.27])
 by rn-mailsvcp-mmp-lapp02.rno.apple.com
 (Oracle Communications Messaging Server 8.1.0.19.20220711 64bit (built Jul 11
 2022))
 with ESMTPSA id <0RK000MNRPLUTH00@rn-mailsvcp-mmp-lapp02.rno.apple.com>; Wed,
 19 Oct 2022 13:44:19 -0700 (PDT)
MIME-version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.7\))
In-reply-to: <CAA93jw4KOkgdfT2LunCtPYPjXL+=OtTrouJgPjM7U1bHKtErnw@mail.gmail.com>
Date: Wed, 19 Oct 2022 13:44:18 -0700
Message-id: <BD3CEB48-E45E-49DB-AAFC-80C539BB4169@apple.com>
References: <CAA93jw77h=ztEOzyADriH2PnswUDQiyNvBdsuFi+K5EexpoxUQ@mail.gmail.com>
 <938D9D45-DADA-4291-BD8A-84E4257CEE49@apple.com>
 <CAA93jw4KOkgdfT2LunCtPYPjXL+=OtTrouJgPjM7U1bHKtErnw@mail.gmail.com>
To: =?utf-8?Q?Dave_T=C3=A4ht?= <dave.taht@gmail.com>
X-Mailer: Apple Mail (2.3608.120.23.2.7)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.545, 18.0.895
 definitions=2022-10-19_12:2022-10-19,
 2022-10-19 signatures=0
X-Mailman-Approved-At: Mon, 29 Apr 2024 18:18:51 -0400
Subject: Re: [Cake] [Make-wifi-fast] The most wonderful video ever about
	bufferbloat
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
Cc: Rpm <rpm@lists.bufferbloat.net>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 Cake List <cake@lists.bufferbloat.net>, bloat <bloat@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gTW9uLCBPY3QgMTcsIDIwMjIgYXQgNTowMiBQTSBTdHVhcnQgQ2hlc2hpcmUgPGNoZXNoaXJl
QGFwcGxlLmNvbT4gd3JvdGU6Cgo+IEFjY3VyYWN5IGJlIGRhbW5lZC4gVGhlIGFuYWxvZ3kgdG8g
Y29tbW9uIGV4cGVyaWVuY2UgcmVzb25hdGVzIG1vcmUuCgpJIGZlZWwgaXQgaXMgbm90IGFuIGVz
cGVjaWFsbHkgcHJvZm91bmQgaW5zaWdodCB0byBvYnNlcnZlIHRoYXQsIOKAnHBlb3BsZSBkb27i
gJl0IGxpa2Ugd2FpdGluZyBpbiBsaW5lLuKAnSBUaGUgY29uY2x1c2lvbiwg4oCcdGhlcmVmb3Jl
IHByaXZpbGVnZWQgcGVvcGxlIHNob3VsZCBnZXQgdG8gZ28gdG8gdGhlIGZyb250LOKAnSBkZXNj
cmliZXMgYW4gYWlycG9ydCBmaXJzdCBjbGFzcyBjaGVja2luIGNvdW50ZXIsIERpc25leSBGYXN0
cGFzcywgYW5kIGNvdW50bGVzcyBvdGhlciBhbmFsb2dpZXMgZnJvbSBldmVyeWRheSBsaWZlLCBh
bGwgb2Ygd2hpY2ggYXJlIHRoZSB3cm9uZyBzb2x1dGlvbiBmb3IgcGFja2V0cyBpbiBhIG5ldHdv
cmsuCgo+IEkgdGhpbmsgdGhlIHBlcnNvbiB3aXRoIHRoZSBjaGVldG9zIHB1bGxpbmcgb3V0IGEg
Z3VuIGFuZCBzaG9vdGluZyBldmVyeW9uZSBpbiBmcm9udCBvZiBoaW0gKEFRTSkgd291bGQgbm90
IGdvIGRvd24gd2VsbC4KCldoaWNoIGlzIHdoeSBzdGFydGluZyB3aXRoIGEgYmFkIGFuYWxvZ3kg
KHBlb3BsZSB3YWl0aW5nIGluIGEgZ3JvY2VyeSBzdG9yZSkgaW5ldml0YWJseSBsZWFkcyB0byBi
YWQgY29uY2x1c2lvbnMuCgpJZiB3ZSB3YW50IHRvIHN0cnVnZ2xlIHRvIG1ha2UgdGhlIGdyb2Nl
cnkgc3RvcmUgYW5hbG9neSB3b3JrLCBwZXJoYXBzIHdlIHNob3cgcGVvcGxlIGNoZWNraW5nIHNv
bWUgZ3JvY2VyeSBzdG9yZSBhcHAgb24gdGhlaXIgc21hcnRwaG9uZSBiZWZvcmUgdGhleSBsZWF2
ZSBob21lLCBhbmQgaWYgdGhleSBzZWUgdGhhdCBhIGxvbmcgbGluZSBpcyBiZWdpbm5pbmcgdG8g
Zm9ybSB0aGV5IHdhaXQgdW50aWwgbGF0ZXIsIHdoZW4gdGhlIGxpbmUgaXMgc2hvcnRlci4gVGhl
IGNoYWxsZW5nZSBpcyBub3QgaG93IHRvIGRlYWwgd2l0aCBhIGxvbmcgcXVldWUgd2hlbiBpdOKA
mXMgdGhlcmUsIGl0IGlzIGhvdyB0byBhdm9pZCBhIGxvbmcgcXVldWUgaW4gdGhlIGZpcnN0IHBs
YWNlLgoKPiBBY3R1YWxseSB0aGF0IGFuYWxvZ3kgaXMgZmFpcmx5IGNsb3NlIHRvIGZhaXIgcXVl
dWluZy4gVGhlIG11bHRpcGxlIGNoZWNrZXIgYW5hbG9neSBpcyBvbmUgb2YgdGhlIG1vc3QgY29t
bW9uIGFuYWxvZ2llcyBpbiBxdWV1ZSB0aGVvcnkgaXRzZWxmLgoKSSBkaXNhZ3JlZS4gWW91IGFy
ZSBkZXNjcmliaW5nIHRoZSDigJxGUeKAnSBwYXJ0IG9mIEZRX0NvRGVsLiBJdOKAmXMgdGhlIOKA
nENvRGVs4oCdIHBhcnQgb2YgRlFfQ29EZWwgdGhhdCBzb2x2ZXMgYnVmZmVyYmxvYXQuIEZRIGhh
cyBiZWVuIGFyb3VuZCBmb3IgYSBsb25nIHRpbWUsIGFuZCBhdCBiZXN0IGl0IHBhcnRpYWxseSBt
YXNrZWQgdGhlIGVmZmVjdHMgb2YgYnVmZmVyYmxvYXQuIEhhdmluZyBtb3JlIHF1ZXVlcyBkb2Vz
IG5vdCBzb2x2ZSBidWZmZXJibG9hdC4gTWFuYWdpbmcgdGhlIHF1ZXVlKHMpIGJldHRlciBzb2x2
ZXMgYnVmZmVyYmxvYXQuCgo+IEkgbGlrZSB0aGUgaWRlYSBvZiBhIGd1cnUgZmxvYXRpbmcgYWJv
dmUgYSBncm9jZXJ5IGNhcnQgd2l0aCBhIGJldHRlciBzdHJpbmcgb2YgZXhwbGFuYXRpb25zLCBl
eHBsYWluaW5nCj4gCj4gICAtICJubywgZ3Jhc3Nob3BwZXIsIHRoZSBzb2x1dGlvbiB0byBidWZm
ZXJibG9hdCBpcyBubyBsaW5lLi4uIGF0IGFsbCIuCgpUaGF0IGlzIHRoZSBraW5kIG9mIHRoaW5n
IEkgaGFkIGluIG1pbmQuIE9yIGEgc2ltaWxhciBxdW90ZSBmcm9tIFRoZSBNYXRyaXguIFdoaWxl
IGV2ZXJ5b25lIGlzIGRlYmF0aW5nIHdheXMgdG8gbGl2ZSB3aXRoIGxvbmcgcXVldWVzLCB0aGUg
Z3VydSBhc2tzLCDigJxXaGF0IGlmIHRoZXJlIHdlcmUgbm8gcXVldWVzP+KAnSBUaGF0IGlzIHRo
ZSDigJxtaW5kIGJsb3du4oCdIHJlYWxpemF0aW9uLgoKU3R1YXJ0IENoZXNoaXJlCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlz
dApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5l
dC9saXN0aW5mby9jYWtlCg==
