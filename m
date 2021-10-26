Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id CD78F43AFEB
	for <lists+cake@lfdr.de>; Tue, 26 Oct 2021 12:18:31 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id A48C23CB46;
	Tue, 26 Oct 2021 06:18:30 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1635243510;
	bh=I2sGxuJ/mW/LfqU3tqkoEvUEy6IgxAW7ONbQbqB8fU4=;
	h=In-reply-to:Date:References:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=ECD/bkiqS+B6mcIR5Wybg0JJbNLJTkEDWxy76ZBA6PAgPyi1cGdyNbwvuFUzezPWm
	 i03IyBpNghjGo1NZyx4K4nT8OYgc1qFF+5+MB24HyVjkd7JfI0wT+zUgvhsgicb/jA
	 PJjsY8cbXgpxNQrMPBnFTWaDgDh24Bumxll3xLMHobm8hWmZqQ/zGv/jqxG7VUTX6r
	 Vqy+JzpM3wc5bklb+MflxGzXayA91fs1y1apzudOl8F00JcakW37HHUN7EvF4FjJWE
	 6LiFqoFwXaZDVosjGN9MjO5RhwbymOsA1nLDqXO304pC/ImYW5icSKhixkOKzJhDCc
	 9cV9efOt6D1dQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from ma1-aaemail-dr-lapp03.apple.com
 (ma1-aaemail-dr-lapp03.apple.com [17.171.2.72])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id C1F8F3B2A4;
 Mon, 25 Oct 2021 23:11:18 -0400 (EDT)
Received: from pps.filterd (ma1-aaemail-dr-lapp03.apple.com [127.0.0.1])
 by ma1-aaemail-dr-lapp03.apple.com (8.16.0.42/8.16.0.42) with SMTP id
 19Q38DJW051612; Mon, 25 Oct 2021 20:11:16 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=apple.com;
 h=content-type :
 mime-version : subject : from : in-reply-to : date : cc :
 content-transfer-encoding : message-id : references : to; s=20180706;
 bh=gruT590pdVcnGwGkUwXWBI2UhLiDU9+cbggYD6a/DLc=;
 b=oCwNj9cppHWLrXu9Kj2hHr7dlx84CgZt0Y0bk23Pni+aNLLmvgNNr5lDKNkGBCC0jwKl
 CzDYVAS4wPi/GC7ufFRUV14TwGO766NJUJ8pQkNhvuGqvmPEnm7X9ofZzjiK3g0JZYGE
 XOBJ3fZVWC3k5UPCfq11v5d1LHR5V87yzZOBTUKGHZy34NNNXc8LLDpqcrbkwXhf47+d
 OwSNsQLgPcyMokt29WJpBQFlO1xNBnXl0OufMTTSkI54F3Q1E1ELlWy4MQgi+3hK9uAt
 PXj3zmMlQA20Gq2Wap+3h5O7IH2FOKHCOCCPU6eOdEfZqAWsOzzWa/+9wRRX5oeK8VFt MQ== 
Received: from rn-mailsvcp-mta-lapp02.rno.apple.com
 (rn-mailsvcp-mta-lapp02.rno.apple.com [10.225.203.150])
 by ma1-aaemail-dr-lapp03.apple.com with ESMTP id 3bx4hkwpn9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO);
 Mon, 25 Oct 2021 20:11:16 -0700
Received: from rn-mailsvcp-mmp-lapp03.rno.apple.com
 (rn-mailsvcp-mmp-lapp03.rno.apple.com [17.179.253.16])
 by rn-mailsvcp-mta-lapp02.rno.apple.com
 (Oracle Communications Messaging Server 8.1.0.12.20210903 64bit (built Sep 3
 2021)) with ESMTPS id <0R1K007A6E6R8IH0@rn-mailsvcp-mta-lapp02.rno.apple.com>; 
 Mon, 25 Oct 2021 20:11:15 -0700 (PDT)
Received: from process_milters-daemon.rn-mailsvcp-mmp-lapp03.rno.apple.com by
 rn-mailsvcp-mmp-lapp03.rno.apple.com
 (Oracle Communications Messaging Server 8.1.0.12.20210903 64bit (built Sep 3
 2021)) id <0R1K00600E4RFQ00@rn-mailsvcp-mmp-lapp03.rno.apple.com>; Mon,
 25 Oct 2021 20:11:15 -0700 (PDT)
X-Va-A: 
X-Va-T-CD: 095fc62c348ed25dc0c10f0adec69295
X-Va-E-CD: cd8bf474a903d3c7bc0aa9da18c9a853
X-Va-R-CD: 540cfe524e2d48ca1445b34bbf6444c7
X-Va-CD: 0
X-Va-ID: c6f845f8-d97a-46c5-afa6-45717430e2ba
X-V-A: 
X-V-T-CD: 095fc62c348ed25dc0c10f0adec69295
X-V-E-CD: cd8bf474a903d3c7bc0aa9da18c9a853
X-V-R-CD: 540cfe524e2d48ca1445b34bbf6444c7
X-V-CD: 0
X-V-ID: b886e011-fe58-4bae-9337-08199c0357b5
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.425, 18.0.790
 definitions=2021-10-25_08:2021-10-25,
 2021-10-25 signatures=0
Received: from [17.11.109.25] (unknown [17.11.109.25])
 by rn-mailsvcp-mmp-lapp03.rno.apple.com
 (Oracle Communications Messaging Server 8.1.0.12.20210903 64bit (built Sep 3
 2021))
 with ESMTPSA id <0R1K00433E6K1M00@rn-mailsvcp-mmp-lapp03.rno.apple.com>; Mon,
 25 Oct 2021 20:11:15 -0700 (PDT)
MIME-version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.1\))
In-reply-to: <CAHb6Lvp1dxnbuCNiE5FKC-yRyD6HGkb0H1ZQAm_nSxANwJg2pA@mail.gmail.com>
Date: Mon, 25 Oct 2021 20:11:07 -0700
Message-id: <E3373586-EF4C-40DF-885B-0D6134E6EAF1@apple.com>
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
To: Bob McMahon <bob.mcmahon@broadcom.com>
X-Mailer: Apple Mail (2.3608.120.23.2.1)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.425, 18.0.790
 definitions=2021-10-25_08:2021-10-25,
 2021-10-25 signatures=0
X-Mailman-Approved-At: Tue, 26 Oct 2021 06:18:28 -0400
Subject: Re: [Cake] [Make-wifi-fast] TCP_NOTSENT_LOWAT applied to e2e TCP
	msg latency
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
Cc: starlink@lists.bufferbloat.net,
 =?utf-8?Q?Valdis_Kl=C4=93tnieks?= <valdis.kletnieks@vt.edu>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 Cake List <cake@lists.bufferbloat.net>, codel <codel@lists.bufferbloat.net>,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>, Steve Crocker <steve@shinkuro.com>,
 Vint Cerf <vint@google.com>, Neal Cardwell <ncardwell@google.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gMjEgT2N0IDIwMjEsIGF0IDE3OjUxLCBCb2IgTWNNYWhvbiB2aWEgTWFrZS13aWZpLWZhc3Qg
PG1ha2Utd2lmaS1mYXN0QGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldD4gd3JvdGU6Cgo+IEhpIEFsbCwK
PiAKPiBTb3JyeSBmb3IgdGhlIHNwYW0uIEknbSB0cnlpbmcgdG8gc3VwcG9ydCBhIG1lYW5pbmdm
dWwgVENQIG1lc3NhZ2UgbGF0ZW5jeSB3L2lwZXJmIDIgZnJvbSB0aGUgc2VuZGVyIHNpZGUgdy9v
IHJlcXVpcmluZyBlMmUgY2xvY2sgc3luY2hyb25pemF0aW9uLiBJIHRob3VnaHQgSSdkIHRyeSB0
byB1c2UgdGhlIFRDUF9OT1RTRU5UX0xPV0FUIGV2ZW50IHRvIGhlbHAgd2l0aCB0aGlzLiBJdCBz
ZWVtcyB0aGF0IHRoaXMgZXZlbnQgZ29lcyBvZmYgd2hlbiB0aGUgYnl0ZXMgYXJlIGluIGZsaWdo
dCB2cyBoYXZlIHJlYWNoZWQgdGhlIGRlc3RpbmF0aW9uIG5ldHdvcmsgc3RhY2suIElmIHRoYXQn
cyB0aGUgY2FzZSwgdGhlbiBpcGVyZiAyIGNsaWVudCAoc2VuZGVyKSBtYXkgYmUgYWJsZSB0byBw
cm9kdWNlIHRoZSBtZXNzYWdlIGxhdGVuY3kgYnkgYWRkaW5nIHRoZSBkcmFpbiB0aW1lICh3cml0
ZSBzdGFydCB0byBUQ1BfTk9UU0VOVF9MT1dBVCkgYW5kIHRoZSBzYW1wbGVkIFJUVC4KPiAKPiBE
b2VzIHRoaXMgc2VlbSByZWFzb25hYmxlPwoKSeKAmW0gbm90IDEwMCUgc3VyZSB3aGF0IHlvdeKA
mXJlIGFza2luZywgYnV0IEkgd2lsbCB0cnkgdG8gaGVscC4KCldoZW4geW91IHNldCBUQ1BfTk9U
U0VOVF9MT1dBVCwgdGhlIFRDUCBpbXBsZW1lbnRhdGlvbiB3b27igJl0IHJlcG9ydCB5b3VyIGVu
ZHBvaW50IGFzIHdyaXRhYmxlIChlLmcuLCB2aWEga3F1ZXVlIG9yIGVwb2xsKSB1bnRpbCBsZXNz
IHRoYW4gdGhhdCB0aHJlc2hvbGQgb2YgZGF0YSByZW1haW5zIHVuc2VudC4gSXQgd29u4oCZdCBz
dG9wIHlvdSB3cml0aW5nIG1vcmUgYnl0ZXMgaWYgeW91IHdhbnQgdG8sIHVwIHRvIHRoZSBzb2Nr
ZXQgc2VuZCBidWZmZXIgc2l6ZSwgYnV0IGl0IHdvbuKAmXQgKmFzayogeW91IGZvciBtb3JlIGRh
dGEgdW50aWwgdGhlIFRDUF9OT1RTRU5UX0xPV0FUIHRocmVzaG9sZCBpcyByZWFjaGVkLiBJbiBv
dGhlciB3b3JkcywgdGhlIFRDUCBpbXBsZW1lbnRhdGlvbiBhdHRlbXB0cyB0byBrZWVwIEJEUCBi
eXRlcyBpbiBmbGlnaHQgKyBUQ1BfTk9UU0VOVF9MT1dBVCBieXRlcyBidWZmZXJlZCBhbmQgcmVh
ZHkgdG8gZ28uIFRoZSBCRFAgb2YgYnl0ZXMgaW4gZmxpZ2h0IGlzIG5lY2Vzc2FyeSB0byBmaWxs
IHRoZSBuZXR3b3JrIHBpcGUgYW5kIGdldCBnb29kIHRocm91Z2hwdXQuIFRoZSBUQ1BfTk9UU0VO
VF9MT1dBVCBvZiBieXRlcyBidWZmZXJlZCBhbmQgcmVhZHkgdG8gZ28gaXMgcHJvdmlkZWQgdG8g
Z2l2ZSB0aGUgc291cmNlIHNvZnR3YXJlIHNvbWUgYWR2YW5jZSBub3RpY2UgdGhhdCB0aGUgVENQ
IGltcGxlbWVudGF0aW9uIHdpbGwgc29vbiBiZSBsb29raW5nIGZvciBtb3JlIGJ5dGVzIHRvIHNl
bmQsIHNvIHRoYXQgdGhlIGJ1ZmZlciBkb2VzbuKAmXQgcnVuIGRyeSwgdGhlcmVieSBsb3dlcmlu
ZyB0aHJvdWdocHV0LiAoVGhlIG9sZCBTT19TTkRCVUYgb3B0aW9uIGNvbmZsYXRlcyBib3RoIOKA
nGJ5dGVzIGluIGZsaWdodOKAnSBhbmQg4oCcYnl0ZXMgYnVmZmVyZWQgYW5kIHJlYWR5IHRvIGdv
4oCdIGludG8gdGhlIHNhbWUgbnVtYmVyLikKCklmIHlvdSB3YWl0IGZvciB0aGUgVENQX05PVFNF
TlRfTE9XQVQgbm90aWZpY2F0aW9uLCB3cml0ZSBhIGNodW5rIG9mIG4gYnl0ZXMgb2YgZGF0YSwg
YW5kIHRoZW4gd2FpdCBmb3IgdGhlIG5leHQgVENQX05PVFNFTlRfTE9XQVQgbm90aWZpY2F0aW9u
LCB0aGF0IHdpbGwgdGVsbCB5b3Ugcm91Z2hseSBob3cgbG9uZyBpdCB0b29rIG4gYnl0ZXMgdG8g
ZGVwYXJ0IHRoZSBtYWNoaW5lLiBZb3Ugd29u4oCZdCBrbm93IHdoeSwgdGhvdWdoLiBUaGUgYnl0
ZXMgY291bGQgZGVwYXJ0IHRoZSBtYWNoaW5lIGluIHJlc3BvbnNlIGZvciBhY2tzIGluZGljYXRp
bmcgdGhhdCB0aGUgc2FtZSBudW1iZXIgb2YgYnl0ZXMgaGF2ZSBiZWVuIGFjY2VwdGVkIGF0IHRo
ZSByZWNlaXZlci4gQnV0IHRoZSBieXRlcyBjYW4gYWxzbyBkZXBhcnQgdGhlIG1hY2hpbmUgYmVj
YXVzZSBDV05EIGlzIGdyb3dpbmcuIE9mIGNvdXJzZSwgYm90aCBvZiB0aG9zZSB0aGluZ3MgYXJl
IHVzdWFsbHkgaGFwcGVuaW5nIGF0IHRoZSBzYW1lIHRpbWUuCgpIb3cgdG8gdXNlIFRDUF9OT1RT
RU5UX0xPV0FUIGlzIGV4cGxhaW5lZCBpbiB0aGlzIHZpZGVvOgoKPGh0dHBzOi8vZGV2ZWxvcGVy
LmFwcGxlLmNvbS92aWRlb3MvcGxheS93d2RjMjAxNS83MTkvP3RpbWU9MjE5OT4KCkxhdGVyIGlu
IHRoZSBzYW1lIHZpZGVvIGlzIGEgdHdvLW1pbnV0ZSBkZW1vICh0aW1lIG9mZnNldCA0MjowMCB0
byB0aW1lIG9mZnNldCA0NDowMCkgc2hvd2luZyBhIOKAnGJlZm9yZSBhbmQgYWZ0ZXLigJ0gZGVt
byBpbGx1c3RyYXRpbmcgdGhlIGRyYW1hdGljIGRpZmZlcmVuY2UgdGhpcyBtYWtlcyBmb3Igc2Ny
ZWVuIHNoYXJpbmcgcmVzcG9uc2l2ZW5lc3MuCgo8aHR0cHM6Ly9kZXZlbG9wZXIuYXBwbGUuY29t
L3ZpZGVvcy9wbGF5L3d3ZGMyMDE1LzcxOS8/dGltZT0yNTIwPgoKU3R1YXJ0IENoZXNoaXJlCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGlu
ZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxv
YXQubmV0L2xpc3RpbmZvL2Nha2UK
