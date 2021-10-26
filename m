Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B9D243C8CB
	for <lists+cake@lfdr.de>; Wed, 27 Oct 2021 13:43:03 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id F047B3CB67;
	Wed, 27 Oct 2021 07:43:01 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1635334982;
	bh=+/lCB5ziB4q34wJ50I7fE31HIzoFU++O2jOuzu15XtY=;
	h=In-reply-to:Date:References:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=g/7DxYvGHW69LYNLdCFwfTgAvDEBuHipu58ho4rK7XfO/zBSe/VzLm9ae227aQ7gK
	 qNqa/HQFHWOzRlFkUcSWVHOaSurZKip9aZOvy8sJ+YHE7AcjVN3W4duexFcAAZyB2p
	 zhIjB5xNBfpBceQgUe0ajE7N7XOZW6U548/HmwQ/6k8G9Lp8r7u161TcQEctRSHLI/
	 1V8iIfIUiNYsJxmO3tnKNvRn4pnadn2zcBui5YDsd5HiXDHCCao+m2uGjJe7ehMkHy
	 yGlQGQ2AWRex8dIM4NbHrchvEMvejg2bxrxr3oAb6AQbdCIzxThky0f3PcVtrNBl6g
	 sRlWUvx/4IQpw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from ma1-aaemail-dr-lapp02.apple.com
 (ma1-aaemail-dr-lapp02.apple.com [17.171.2.68])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id A4D583CB41;
 Tue, 26 Oct 2021 14:45:30 -0400 (EDT)
Received: from pps.filterd (ma1-aaemail-dr-lapp02.apple.com [127.0.0.1])
 by ma1-aaemail-dr-lapp02.apple.com (8.16.0.42/8.16.0.42) with SMTP id
 19QIcXbu060375; Tue, 26 Oct 2021 11:45:27 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=apple.com;
 h=content-type :
 mime-version : subject : from : in-reply-to : date : cc :
 content-transfer-encoding : message-id : references : to; s=20180706;
 bh=oyL9VS5ulcyKzt+/gU1oZu7Al8JJpWcRXX5kozjTmS0=;
 b=lfjcq46H6uJcVBsr79BCXKlAhYciafTU5Otv4LBGx7NzLy9Mus9gca+xIE8I3tNUnHZV
 JMJO10GzBq2CYqPTeUpq+Gbzm59kpOT1ogxHAPKR4/+zxCBwuFGRB9EXRFD0nroPQljs
 OCz+quDOAxiRtBRO6gi5hTcN/M647H3W6bRSo8OM8vRmOe0f7XPjCtR7XMbB4oANGo6i
 TM/8M1viaOG7Z19XEDs4j0vEHTDqDxpxjecB34lbs9saT1T6PkGX8+404Bk9ijc7FTtm
 8hL5hQ5EHbjLAsGYETe1tdwkMBH50qDbEt/2g+o4ucWgUyAzaG6HpIsVnk6CvM3DxEM+ 8A== 
Received: from rn-mailsvcp-mta-lapp01.rno.apple.com
 (rn-mailsvcp-mta-lapp01.rno.apple.com [10.225.203.149])
 by ma1-aaemail-dr-lapp02.apple.com with ESMTP id 3bx4htvjpm-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO);
 Tue, 26 Oct 2021 11:45:27 -0700
Received: from rn-mailsvcp-mmp-lapp01.rno.apple.com
 (rn-mailsvcp-mmp-lapp01.rno.apple.com [17.179.253.14])
 by rn-mailsvcp-mta-lapp01.rno.apple.com
 (Oracle Communications Messaging Server 8.1.0.12.20210903 64bit (built Sep 3
 2021)) with ESMTPS id <0R1L005GXLFQ4S80@rn-mailsvcp-mta-lapp01.rno.apple.com>; 
 Tue, 26 Oct 2021 11:45:26 -0700 (PDT)
Received: from process_milters-daemon.rn-mailsvcp-mmp-lapp01.rno.apple.com by
 rn-mailsvcp-mmp-lapp01.rno.apple.com
 (Oracle Communications Messaging Server 8.1.0.12.20210903 64bit (built Sep 3
 2021)) id <0R1L00Q00LECI500@rn-mailsvcp-mmp-lapp01.rno.apple.com>; Tue,
 26 Oct 2021 11:45:26 -0700 (PDT)
X-Va-A: 
X-Va-T-CD: c77343ee6ab9f324defc7c289727b739
X-Va-E-CD: e6061580a21389ade45530f31e4ff121
X-Va-R-CD: 8bbe4467100e83bb797086b9816f35d5
X-Va-CD: 0
X-Va-ID: 1e0b279c-bd24-4716-bca8-fdc04a3c228e
X-V-A: 
X-V-T-CD: c77343ee6ab9f324defc7c289727b739
X-V-E-CD: e6061580a21389ade45530f31e4ff121
X-V-R-CD: 8bbe4467100e83bb797086b9816f35d5
X-V-CD: 0
X-V-ID: d40da595-b532-430a-941b-b6b1572f3421
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.425, 18.0.790
 definitions=2021-10-26_05:2021-10-26,
 2021-10-26 signatures=0
Received: from smtpclient.apple ([17.192.155.152])
 by rn-mailsvcp-mmp-lapp01.rno.apple.com
 (Oracle Communications Messaging Server 8.1.0.12.20210903 64bit (built Sep 3
 2021))
 with ESMTPSA id <0R1L00QGDLFP1500@rn-mailsvcp-mmp-lapp01.rno.apple.com>; Tue,
 26 Oct 2021 11:45:25 -0700 (PDT)
MIME-version: 1.0 (Mac OS X Mail 15.0 \(3693.20.0.1.32\))
In-reply-to: <0e29e225-9f55-4392-640a-2d27c4c26116@gmail.com>
Date: Tue, 26 Oct 2021 11:45:24 -0700
Message-id: <4BFB5A37-9574-49BE-B083-FBC1F2B0381E@apple.com>
References: <CAA93jw7ZFWRWsBK-R1See9jRCASHd1U8ZFawyDXOT8fh2pLTag@mail.gmail.com>
 <1625188609.32718319@apps.rackspace.com>
 <CAA93jw5wQ5PYL08hWcdUucUYWt-n=uKDAbF23Pp3t5u9dEDEng@mail.gmail.com>
 <CAHb6LvrjgKnfe_jaGgx7_B1VDTkZfTmP0OyTmxL9ojWoxogrsA@mail.gmail.com>
 <989de0c1-e06c-cda9-ebe6-1f33df8a4c24@candelatech.com>
 <1625773080.94974089@apps.rackspace.com>
 <FDF5C7A7-47A6-4123-A948-352C07C35F02@cs.ucla.edu>
 <CAH8sseShtJHZ1mZWu-hhKYsDLG_LC9GBpX9XRrj68yyzQLPcAg@mail.gmail.com>
 <1625859083.09751240@apps.rackspace.com>
 <CAA93jw5QyH4SqKT07hP+skijfimZ0GU=AgLJtkVOQGzKrAkazg@mail.gmail.com>
 <257851.1632110422@turing-police>
 <CABf5zv+yq_oJ7O7YqVeSbZ2Qns3C4hESzNA2V0zNb0L1Zg-mgw@mail.gmail.com>
 <CAHxHggd-4rZ5Nc4raaoRUjjL17MVh8UsNu_5eL8eiLJ=R_68wA@mail.gmail.com>
 <CAHb6Lvp86iw=DQMN8Z+f7yUJu-5pmVUxsM1_1Jw8RJb2XRcMcg@mail.gmail.com>
 <1632680642.869711321@apps.rackspace.com>
 <CAHb6Lvp1dxnbuCNiE5FKC-yRyD6HGkb0H1ZQAm_nSxANwJg2pA@mail.gmail.com>
 <E3373586-EF4C-40DF-885B-0D6134E6EAF1@apple.com>
 <0e29e225-9f55-4392-640a-2d27c4c26116@gmail.com>
To: Eric Dumazet <eric.dumazet@gmail.com>
X-Mailer: Apple Mail (2.3693.20.0.1.32)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.425, 18.0.790
 definitions=2021-10-26_05:2021-10-26,
 2021-10-26 signatures=0
X-Mailman-Approved-At: Wed, 27 Oct 2021 07:43:01 -0400
Subject: Re: [Cake] [Bloat] [Make-wifi-fast] TCP_NOTSENT_LOWAT applied to
 e2e TCP msg latency
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
From: Christoph Paasch via Cake <cake@lists.bufferbloat.net>
Reply-To: Christoph Paasch <cpaasch@apple.com>
Cc: Stuart Cheshire <cheshire@apple.com>, starlink@lists.bufferbloat.net,
 =?utf-8?Q?Valdis_Kl=C4=93tnieks?= <valdis.kletnieks@vt.edu>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 Bob McMahon <bob.mcmahon@broadcom.com>, Cake List <cake@lists.bufferbloat.net>,
 codel <codel@lists.bufferbloat.net>,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>, Steve Crocker <steve@shinkuro.com>,
 Vint Cerf <vint@google.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SGVsbG8sCgo+IE9uIE9jdCAyNSwgMjAyMSwgYXQgOToyNCBQTSwgRXJpYyBEdW1hemV0IDxlcmlj
LmR1bWF6ZXRAZ21haWwuY29tPiB3cm90ZToKPiAKPiAKPiAKPiBPbiAxMC8yNS8yMSA4OjExIFBN
LCBTdHVhcnQgQ2hlc2hpcmUgdmlhIEJsb2F0IHdyb3RlOgo+PiBPbiAyMSBPY3QgMjAyMSwgYXQg
MTc6NTEsIEJvYiBNY01haG9uIHZpYSBNYWtlLXdpZmktZmFzdCA8bWFrZS13aWZpLWZhc3RAbGlz
dHMuYnVmZmVyYmxvYXQubmV0PiB3cm90ZToKPj4gCj4+PiBIaSBBbGwsCj4+PiAKPj4+IFNvcnJ5
IGZvciB0aGUgc3BhbS4gSSdtIHRyeWluZyB0byBzdXBwb3J0IGEgbWVhbmluZ2Z1bCBUQ1AgbWVz
c2FnZSBsYXRlbmN5IHcvaXBlcmYgMiBmcm9tIHRoZSBzZW5kZXIgc2lkZSB3L28gcmVxdWlyaW5n
IGUyZSBjbG9jayBzeW5jaHJvbml6YXRpb24uIEkgdGhvdWdodCBJJ2QgdHJ5IHRvIHVzZSB0aGUg
VENQX05PVFNFTlRfTE9XQVQgZXZlbnQgdG8gaGVscCB3aXRoIHRoaXMuIEl0IHNlZW1zIHRoYXQg
dGhpcyBldmVudCBnb2VzIG9mZiB3aGVuIHRoZSBieXRlcyBhcmUgaW4gZmxpZ2h0IHZzIGhhdmUg
cmVhY2hlZCB0aGUgZGVzdGluYXRpb24gbmV0d29yayBzdGFjay4gSWYgdGhhdCdzIHRoZSBjYXNl
LCB0aGVuIGlwZXJmIDIgY2xpZW50IChzZW5kZXIpIG1heSBiZSBhYmxlIHRvIHByb2R1Y2UgdGhl
IG1lc3NhZ2UgbGF0ZW5jeSBieSBhZGRpbmcgdGhlIGRyYWluIHRpbWUgKHdyaXRlIHN0YXJ0IHRv
IFRDUF9OT1RTRU5UX0xPV0FUKSBhbmQgdGhlIHNhbXBsZWQgUlRULgo+Pj4gCj4+PiBEb2VzIHRo
aXMgc2VlbSByZWFzb25hYmxlPwo+PiAKPj4gSeKAmW0gbm90IDEwMCUgc3VyZSB3aGF0IHlvdeKA
mXJlIGFza2luZywgYnV0IEkgd2lsbCB0cnkgdG8gaGVscC4KPj4gCj4+IFdoZW4geW91IHNldCBU
Q1BfTk9UU0VOVF9MT1dBVCwgdGhlIFRDUCBpbXBsZW1lbnRhdGlvbiB3b27igJl0IHJlcG9ydCB5
b3VyIGVuZHBvaW50IGFzIHdyaXRhYmxlIChlLmcuLCB2aWEga3F1ZXVlIG9yIGVwb2xsKSB1bnRp
bCBsZXNzIHRoYW4gdGhhdCB0aHJlc2hvbGQgb2YgZGF0YSByZW1haW5zIHVuc2VudC4gSXQgd29u
4oCZdCBzdG9wIHlvdSB3cml0aW5nIG1vcmUgYnl0ZXMgaWYgeW91IHdhbnQgdG8sIHVwIHRvIHRo
ZSBzb2NrZXQgc2VuZCBidWZmZXIgc2l6ZSwgYnV0IGl0IHdvbuKAmXQgKmFzayogeW91IGZvciBt
b3JlIGRhdGEgdW50aWwgdGhlIFRDUF9OT1RTRU5UX0xPV0FUIHRocmVzaG9sZCBpcyByZWFjaGVk
Lgo+IAo+IAo+IFdoZW4gSSBpbXBsZW1lbnRlZCBUQ1BfTk9UU0VOVF9MT1dBVCBiYWNrIGluIDIw
MTMgWzFdLCBJIG1hZGUgc3VyZSB0aGF0IHNlbmRtc2coKSB3b3VsZCBhY3R1YWxseQo+IHN0b3Ag
ZmVlZGluZyBtb3JlIGJ5dGVzIGluIFRDUCB0cmFuc21pdCBxdWV1ZSBpZiB0aGUgY3VycmVudCBh
bW91bnQgb2YgdW5zZW50IGJ5dGVzCj4gd2FzIGFib3ZlIHRoZSB0aHJlc2hvbGQuCj4gCj4gU28g
aXQgbG9va3MgbGlrZSBBcHBsZSBpbXBsZW1lbnRhdGlvbiBpcyBkaWZmZXJlbnQsIGJhc2VkIG9u
IHlvdXIgZGVzY3JpcHRpb24gPwoKWWVzLCBUQ1BfTk9UU0VOVF9MT1dBVCBvbmx5IGltcGFjdHMg
dGhlIHdha2V1cCBvbiBpT1MvbWFjT1MvLi4uCgpBbiBhcHAgY2FuIHN0aWxsIGZpbGwgdGhlIHNl
bmQtYnVmZmVyIGlmIGl0IGRvZXMgYSBzZW5kbXNnKCkgd2l0aCBhIGxhcmdlIGJ1ZmZlciBvciBk
b2VzIHJlcGVhdGVkIGNhbGxzIHRvIHNlbmRtc2coKS4KCkZ1ciBBcHBsZSwgdGhlIGdvYWwgb2Yg
VENQX05PVFNFTlRfTE9XQVQgd2FzIHRvIGFsbG93IGFuIGFwcCB0byBxdWlja2x5IGNoYW5nZSB0
aGUgZGF0YSBpdCAic2NoZWR1bGVkIiB0byBzZW5kLiBBbmQgdGh1cyBhbGxvdyB0aGUgYXBwIHRv
IHdyaXRlIHRoZSBzbWFsbGVzdCAibG9naWNhbCB1bml0IiBpdCBoYXMuIElmIHRoYXQgdW5pdCBp
cyA1MTJLQiBsYXJnZSwgdGhlIGFwcCBpcyBhbGxvd2VkIHRvIHNlbmQgdGhhdC4KRm9yIGV4YW1w
bGUsIGluIGNhc2Ugb2YgdmlkZW8tc3RyZWFtaW5nIG9uZSBtYXkgd2FudCB0byBza2lwIGFoZWFk
IGluIHRoZSB2aWRlby4gSW4gdGhhdCBjYXNlIHRoZSBhcHAgc3RpbGwgbmVlZHMgdG8gdHJhbnNt
aXQgdGhlIHJlbWFpbmluZyBwYXJ0cyBvZiB0aGUgcHJldmlvdXMgZnJhbWUgYW55d2F5cywgYmVm
b3JlIGl0IGNhbiBzZW5kIHRoZSBuZXcgdmlkZW8gZnJhbWUuClRoYXQncyB0aGUgcmVhc29uIHdo
eSB0aGUgQXBwbGUgaW1wbGVtZW50YXRpb24gYWxsb3dzIG9uZSB0byB3cml0ZSBtb3JlIHRoYW4g
anVzdCB0aGUgbG93YXQgdGhyZXNob2xkLgoKClRoYXQgYmVpbmcgc2FpZCwgSSBkbyB0aGluayB0
aGF0IExpbnV4J3Mgd2F5IGFsbG93cyBmb3IgYW4gZWFzaWVyIEFQSSBiZWNhdXNlIHRoZSBhcHAg
ZG9lcyBub3QgbmVlZCB0byBiZSBjYXJlZnVsIGF0IGhvdyBtdWNoIGRhdGEgaXQgc2VuZHMgYWZ0
ZXIgYW4gZXBvbGwva3F1ZXVlIHdha2V1cC4gU28sIHRoZSBsYXRlbmN5LWJlbmVmaXRzIHdpbGwg
YmUgZWFzaWVyIHRvIGdldC4KCgpDaHJpc3RvcGgKCgoKPiBbMV0gaHR0cHM6Ly9naXQua2VybmVs
Lm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvbmV0ZGV2L25ldC5naXQvY29tbWl0Lz9pZD1j
OWJlZTNiN2ZkZWNiMGMxZDA3MGM3YjU0MTEzYjNiZGZiOWEzZDM2Cj4gCj4gbmV0cGVyZiBkb2Vz
IG5vdCB1c2UgZXBvbGwoKSwgYnV0IHJhdGhlciBhIGxvb3Agb3ZlciBzZW5kbXNnKCkuCj4gCj4g
T25lIG9mIHRoZSBwb2ludCBvZiBUQ1BfTk9UU0VOVF9MT1dBVCBmb3IgR29vZ2xlIHdhcyB0byBi
ZSBhYmxlIHRvIGNvbnNpZGVyYWJseSBpbmNyZWFzZQo+IG1heCBudW1iZXIgb2YgYnl0ZXMgaW4g
dHJhbnNtaXQgcXVldWVzICgzcmQgY29sdW1uIG9mIC9wcm9jL3N5cy9uZXQvaXB2NC90Y3Bfd21l
bSkKPiBieSAxMHgsIGFsbG93aW5nIGZvciBhdXRvdHVuZSB0byBpbmNyZWFzZSBCRFAgZm9yIGJp
ZyBSVFQgZmxvd3MsIHRoaXMgd2l0aG91dAo+IGluY3JlYXNpbmcgbWVtb3J5IG5lZWRzIGZvciBm
bG93cyB3aXRoIHNtYWxsIFJUVC4KPiAKPiBJbiBvdGhlciB3b3JkcywgdGhlIFRDUCBpbXBsZW1l
bnRhdGlvbiBhdHRlbXB0cyB0byBrZWVwIEJEUCBieXRlcyBpbiBmbGlnaHQgKyBUQ1BfTk9UU0VO
VF9MT1dBVCBieXRlcyBidWZmZXJlZCBhbmQgcmVhZHkgdG8gZ28uIFRoZSBCRFAgb2YgYnl0ZXMg
aW4gZmxpZ2h0IGlzIG5lY2Vzc2FyeSB0byBmaWxsIHRoZSBuZXR3b3JrIHBpcGUgYW5kIGdldCBn
b29kIHRocm91Z2hwdXQuIFRoZSBUQ1BfTk9UU0VOVF9MT1dBVCBvZiBieXRlcyBidWZmZXJlZCBh
bmQgcmVhZHkgdG8gZ28gaXMgcHJvdmlkZWQgdG8gZ2l2ZSB0aGUgc291cmNlIHNvZnR3YXJlIHNv
bWUgYWR2YW5jZSBub3RpY2UgdGhhdCB0aGUgVENQIGltcGxlbWVudGF0aW9uIHdpbGwgc29vbiBi
ZSBsb29raW5nIGZvciBtb3JlIGJ5dGVzIHRvIHNlbmQsIHNvIHRoYXQgdGhlIGJ1ZmZlciBkb2Vz
buKAmXQgcnVuIGRyeSwgdGhlcmVieSBsb3dlcmluZyB0aHJvdWdocHV0LiAoVGhlIG9sZCBTT19T
TkRCVUYgb3B0aW9uIGNvbmZsYXRlcyBib3RoIOKAnGJ5dGVzIGluIGZsaWdodOKAnSBhbmQg4oCc
Ynl0ZXMgYnVmZmVyZWQgYW5kIHJlYWR5IHRvIGdv4oCdIGludG8gdGhlIHNhbWUgbnVtYmVyLikK
Pj4gCj4+IElmIHlvdSB3YWl0IGZvciB0aGUgVENQX05PVFNFTlRfTE9XQVQgbm90aWZpY2F0aW9u
LCB3cml0ZSBhIGNodW5rIG9mIG4gYnl0ZXMgb2YgZGF0YSwgYW5kIHRoZW4gd2FpdCBmb3IgdGhl
IG5leHQgVENQX05PVFNFTlRfTE9XQVQgbm90aWZpY2F0aW9uLCB0aGF0IHdpbGwgdGVsbCB5b3Ug
cm91Z2hseSBob3cgbG9uZyBpdCB0b29rIG4gYnl0ZXMgdG8gZGVwYXJ0IHRoZSBtYWNoaW5lLiBZ
b3Ugd29u4oCZdCBrbm93IHdoeSwgdGhvdWdoLiBUaGUgYnl0ZXMgY291bGQgZGVwYXJ0IHRoZSBt
YWNoaW5lIGluIHJlc3BvbnNlIGZvciBhY2tzIGluZGljYXRpbmcgdGhhdCB0aGUgc2FtZSBudW1i
ZXIgb2YgYnl0ZXMgaGF2ZSBiZWVuIGFjY2VwdGVkIGF0IHRoZSByZWNlaXZlci4gQnV0IHRoZSBi
eXRlcyBjYW4gYWxzbyBkZXBhcnQgdGhlIG1hY2hpbmUgYmVjYXVzZSBDV05EIGlzIGdyb3dpbmcu
IE9mIGNvdXJzZSwgYm90aCBvZiB0aG9zZSB0aGluZ3MgYXJlIHVzdWFsbHkgaGFwcGVuaW5nIGF0
IHRoZSBzYW1lIHRpbWUuCj4+IAo+PiBIb3cgdG8gdXNlIFRDUF9OT1RTRU5UX0xPV0FUIGlzIGV4
cGxhaW5lZCBpbiB0aGlzIHZpZGVvOgo+PiAKPj4gPGh0dHBzOi8vZGV2ZWxvcGVyLmFwcGxlLmNv
bS92aWRlb3MvcGxheS93d2RjMjAxNS83MTkvP3RpbWU9MjE5OT4KPj4gCj4+IExhdGVyIGluIHRo
ZSBzYW1lIHZpZGVvIGlzIGEgdHdvLW1pbnV0ZSBkZW1vICh0aW1lIG9mZnNldCA0MjowMCB0byB0
aW1lIG9mZnNldCA0NDowMCkgc2hvd2luZyBhIOKAnGJlZm9yZSBhbmQgYWZ0ZXLigJ0gZGVtbyBp
bGx1c3RyYXRpbmcgdGhlIGRyYW1hdGljIGRpZmZlcmVuY2UgdGhpcyBtYWtlcyBmb3Igc2NyZWVu
IHNoYXJpbmcgcmVzcG9uc2l2ZW5lc3MuCj4+IAo+PiA8aHR0cHM6Ly9kZXZlbG9wZXIuYXBwbGUu
Y29tL3ZpZGVvcy9wbGF5L3d3ZGMyMDE1LzcxOS8/dGltZT0yNTIwPgo+PiAKPj4gU3R1YXJ0IENo
ZXNoaXJlCj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cj4+IEJsb2F0IG1haWxpbmcgbGlzdAo+PiBCbG9hdEBsaXN0cy5idWZmZXJibG9hdC5uZXQKPj4g
aHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vYmxvYXQKPj4gCj4gX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbG9hdCBtYWlsaW5n
IGxpc3QKPiBCbG9hdEBsaXN0cy5idWZmZXJibG9hdC5uZXQKPiBodHRwczovL2xpc3RzLmJ1ZmZl
cmJsb2F0Lm5ldC9saXN0aW5mby9ibG9hdAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9h
dC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=
