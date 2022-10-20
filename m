Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CF518B6574
	for <lists+cake@lfdr.de>; Tue, 30 Apr 2024 00:19:05 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 412393CB65;
	Mon, 29 Apr 2024 18:18:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1714429133;
	bh=qfNgoWiP4QCOOHDMqGAwYjhthF/Id6dLNRDkH+AwLzA=;
	h=In-reply-to:Date:References:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=ilnyZKIdstK0otMKAoS4hE+annSc14Bf3cw53M/5500kk4XA9ro85XVR0H+s+7MMY
	 XK0wS0DTUTfk3qI+yZBIhf1KbR9AW6Xg2A5PEFotDp3g1BsZsF6Dq19LUxe1qzJL3k
	 rX+EXUy7WEjzW2JzvhHoVED9uDpi4aEJRuyUZJEyTdwDwihe4QotBa37Z0GRmjJwfI
	 jKiEWs7lGx8VN+UxKNoBpCveAgcWOYPExWlrSql37kGZ/Gdrj8eRSPBZxT2fOWK/RY
	 xjejbEYj3GD0FPwvAn6Akk4VjkqlHxFp55ovxsIViDYTigevazCk2qeOrOsg5vp3Ap
	 0kLeXHyl/6ExQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from rn-mailsvcp-ppex-lapp14.apple.com
 (rn-mailsvcp-ppex-lapp14.rno.apple.com [17.179.253.33])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 9FD293B2A4;
 Thu, 20 Oct 2022 14:32:51 -0400 (EDT)
Received: from pps.filterd (rn-mailsvcp-ppex-lapp14.rno.apple.com [127.0.0.1])
 by rn-mailsvcp-ppex-lapp14.rno.apple.com (8.16.1.2/8.16.1.2) with
 SMTP id 29KIVflN027749; Thu, 20 Oct 2022 11:32:47 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=apple.com;
 h=content-type :
 mime-version : subject : from : in-reply-to : date : cc :
 content-transfer-encoding : message-id : references : to; s=20180706;
 bh=+c3wio5KyAAYGT8bhG1cs2rCo3Uo97Og8CFePr9njR4=;
 b=cPeCbcTc1w7KO2jDjWn/H24/v0i7d/Sgm1W1WECR6ZrRNLK6tU/eYzjsuP0mQmyswPsq
 sZOyg0EfkoT2JKa0PRws4gCT7NTzA3Lzi45gz/+P/wcgDAm+jlikNoe22oOdCXzbfJBc
 59Qc/oPTSU06P0JS5EYxzfb9GXy9ZZHANMEO3KjxBC3uw5+iyiwPGdbkgHhx0Dbw9zpb
 kuhhOjovZiqeNvQ7fnoiFODGpUJsdAiyNLj7YvoOKHHW1+objtPwfPPnncBtNKpmBNku
 VV0jIDc4wD+00jY3uCKXnxCCme9FxNvg1Q79tuEcCE3V7eYMWHvXYKL/PPGJhWHvf5MO YA== 
Received: from rn-mailsvcp-mta-lapp04.rno.apple.com
 (rn-mailsvcp-mta-lapp04.rno.apple.com [10.225.203.152])
 by rn-mailsvcp-ppex-lapp14.rno.apple.com with ESMTP id 3k8380gtus-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO);
 Thu, 20 Oct 2022 11:32:47 -0700
Received: from rn-mailsvcp-policy-lapp01.rno.apple.com
 (rn-mailsvcp-policy-lapp01.rno.apple.com [17.179.253.18])
 by rn-mailsvcp-mta-lapp04.rno.apple.com
 (Oracle Communications Messaging Server 8.1.0.19.20220711 64bit (built Jul 11
 2022)) with ESMTPS id <0RK200DWWE6NKI70@rn-mailsvcp-mta-lapp04.rno.apple.com>; 
 Thu, 20 Oct 2022 11:32:47 -0700 (PDT)
Received: from process_milters-daemon.rn-mailsvcp-policy-lapp01.rno.apple.com
 by rn-mailsvcp-policy-lapp01.rno.apple.com
 (Oracle Communications Messaging Server 8.1.0.19.20220711 64bit (built Jul 11
 2022)) id <0RK200Z00DMFUE00@rn-mailsvcp-policy-lapp01.rno.apple.com>; Thu,
 20 Oct 2022 11:32:47 -0700 (PDT)
X-Va-A: 
X-Va-T-CD: 0af778c0afa90afa8c4c05937d25c782
X-Va-E-CD: 05fe825c938c59b2f2fa3a8ec45389e8
X-Va-R-CD: 8d771ce1c9635e4f9e230061af075a72
X-Va-CD: 0
X-Va-ID: 889a81a7-7c0d-4732-9dfb-f7a5c05e2a19
X-V-A: 
X-V-T-CD: 0af778c0afa90afa8c4c05937d25c782
X-V-E-CD: 05fe825c938c59b2f2fa3a8ec45389e8
X-V-R-CD: 8d771ce1c9635e4f9e230061af075a72
X-V-CD: 0
X-V-ID: ccb140f1-72fe-4562-89c2-f2b4cabe82a0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.545, 18.0.895
 definitions=2022-10-20_09:2022-10-20,
 2022-10-20 signatures=0
Received: from [17.11.114.31] (unknown [17.11.114.31])
 by rn-mailsvcp-policy-lapp01.rno.apple.com
 (Oracle Communications Messaging Server 8.1.0.19.20220711 64bit (built Jul 11
 2022))
 with ESMTPSA id <0RK200J9DE6M9N00@rn-mailsvcp-policy-lapp01.rno.apple.com>;
 Thu, 20 Oct 2022 11:32:47 -0700 (PDT)
MIME-version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.7\))
In-reply-to: <9989D2F5-3A6A-454E-ABB8-71A29F3AAC0D@gmx.de>
Date: Thu, 20 Oct 2022 11:32:46 -0700
Message-id: <4BE88889-45A9-41E4-91F6-4910530A6B4C@apple.com>
References: <CAA93jw77h=ztEOzyADriH2PnswUDQiyNvBdsuFi+K5EexpoxUQ@mail.gmail.com>
 <938D9D45-DADA-4291-BD8A-84E4257CEE49@apple.com>
 <CAA93jw4KOkgdfT2LunCtPYPjXL+=OtTrouJgPjM7U1bHKtErnw@mail.gmail.com>
 <BD3CEB48-E45E-49DB-AAFC-80C539BB4169@apple.com>
 <9989D2F5-3A6A-454E-ABB8-71A29F3AAC0D@gmx.de>
To: Sebastian Moeller <moeller0@gmx.de>
X-Mailer: Apple Mail (2.3608.120.23.2.7)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.545, 18.0.895
 definitions=2022-10-20_09:2022-10-20,
 2022-10-20 signatures=0
X-Mailman-Approved-At: Mon, 29 Apr 2024 18:18:51 -0400
Subject: Re: [Cake] [Rpm] [Make-wifi-fast] The most wonderful video ever
 about bufferbloat
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

T24gMjAgT2N0IDIwMjIsIGF0IDAyOjM2LCBTZWJhc3RpYW4gTW9lbGxlciA8bW9lbGxlcjBAZ214
LmRlPiB3cm90ZToKCj4gSGkgU3R1YXJ0LAo+IAo+IFtTTV0gVGhhdCBzZWVtcyB0byBiZSBzb21l
d2hhdCBvcHRpbWlzdGljLiBXZSBoYXZlIGJlZW4gdGhlcmUgYmVmb3JlLCBzaG9ydCBvZiBtYW5k
YXRpbmcgYWN0dWFsbHktd29ya2luZyBvcmFjbGUgc2NoZWR1bGVycyBvbiBhbGwgZW5kLXBvaW50
cywgaW50ZXJtZWRpYXRlIGhvcHMgd2lsbCBzZWUgcXVldWVzIHNvbWUgbW9yZSBhbmQgc29tZSBs
ZXNzIHRyYW5zaWVudC4gU28gd2UgY2FuIHN0cml2ZSB0byBtaW5pbWl6ZSBxdWV1ZSBidWlsZC11
cCBzdXJlLCBidXQgY2FuIG5vdCBhdm9pZCBxdWV1ZXMgYW5kIGxvbmcgcXVldWVzIGNvbXBsZXRl
bHkgc28gd2UgbmVlZCBtZXRob2RzIHRvIGRlYWwgd2l0aCB0aGVtIGdyYWNlZnVsbHkuCj4gQWxz
byBub3QgbWFueSBhcHBsaWNhdGlvbnMgYXJlIGFjdHVhbGx5IGhlbHBlZCBhbGwgdGhhdCBtdWNo
IGJ5IGxldHRpbmcgaW5mb3JtYXRpb24gZ2V0IHN0YWxlIGluIHRoZWlyIG93biBidWZmZXJzIGFz
IGNvbXBhcmVkIHRvIGFuIG9uLXBhdGggcXVldWUuIFRoaW5rIGFuIG9uLWxpbmUgcmVhY3Rpb24t
dGltZSBnYXRlZCBnYW1lLCB0aGUgbmVlZCBpcyB0byBkaXN0cmlidXRlIGN1cnJlbnQgd29ybGQg
c3RhdGUgdG8gYWxsIHBhcnRpY2lwYXRpbmcgY2xpZW50cyBBU0FQLgoKSeKAmW0gYWZyYWlkIHlv
dSBhcmUgd3JvbmcgYWJvdXQgdGhpcy4gSWYgYW4gb24tbGluZSBnYW1lIHdhbnRzIGxvdyBkZWxh
eSwgdGhlIG9ubHkgYW5zd2VyIGlzIGZvciBpdCB0byBhdm9pZCBnZW5lcmF0aW5nIHBvc2l0aW9u
IHVwZGF0ZXMgZmFzdGVyIHRoYW4gdGhlIG5ldHdvcmsgY2FycnkgdGhlbS4gT25lIHBhY2tldCBn
aXZpbmcgdGhlIGN1cnJlbnQgZ2FtZSBwbGF5ZXIgcG9zaXRpb24gaXMgYmV0dGVyIHRoYW4gYSBi
YWNrbG9nIG9mIHRlbiBwcmV2aW91cyBzdGFsZSBvbmVzIHdhaXRpbmcgdG8gZ28gb3V0LiBTZW5k
aW5nIHBhY2tldHMgZmFzdGVyIHRoYW4gdGhlIG5ldHdvcmsgY2FuIGNhcnJ5IHRoZW0gZG9lcyBu
b3QgZ2V0IHRoZW0gdG8gdGhlIGRlc3RpbmF0aW9uIGZhc3RlcjsgaXQgZ2V0cyB0aGVtIHRoZXJl
IHNsb3dlci4gVGhlIHNhbWUgYXBwbGllcyB0byBmcmFtZXMgaW4gYSBzY3JlZW4gc2hhcmluZyBh
cHBsaWNhdGlvbi4gU2VuZGluZyB0aGUgY3VycmVudCBzdGF0ZSBvZiB0aGUgc2NyZWVuICpub3cq
IGlzIGJldHRlciB0aGFuIGhhdmluZyBhIGJhY2tsb2cgb2YgdGVuIHByZXZpb3VzIHN0YWxlIGZy
YW1lcyBzaXR0aW5nIGluIGJ1ZmZlcnMgc29tZXdoZXJlIG9uIHRoZWlyIHdheSB0byB0aGUgZGVz
dGluYXRpb24uIFN0YWxlIGRhdGEgaXMgbm90IGluZXZpdGFibGUuIEFwcGxpY2F0aW9ucyBkb27i
gJl0IG5lZWQgdG8gaGF2ZSBzdGFsZSBkYXRhIGlmIHRoZXkgYXZvaWQgZ2VuZXJhdGluZyBzdGFs
ZSBkYXRhIGluIHRoZSBmaXJzdCBwbGFjZS4KClBsZWFzZSB3YXRjaCB0aGlzIHZpZGVvLCB3aGlj
aCBleHBsYWlucyBpdCBiZXR0ZXIgdGhhbiBJIGNhbiBpbiBhIHdyaXR0ZW4gZW1haWw6Cgo8aHR0
cHM6Ly9kZXZlbG9wZXIuYXBwbGUuY29tL3ZpZGVvcy9wbGF5L3d3ZGMyMDE1LzcxOS8/dGltZT04
OTI+CgpTdHVhcnQgQ2hlc2hpcmUKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0
Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK
