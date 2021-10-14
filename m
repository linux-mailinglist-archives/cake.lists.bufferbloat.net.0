Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id D4ABD42E345
	for <lists+cake@lfdr.de>; Thu, 14 Oct 2021 23:27:41 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 4D6EF3CB4C;
	Thu, 14 Oct 2021 17:27:40 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1634246860;
	bh=1kXaVD/aju2Cqjf2rWOm3og1gJkHbo0c8+bI8rSwlaw=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=puYudnpQVmiNx0OEub61LLeFLBO/RZYGnOihrShGWiBCuUuqzEejuj7+y1MTdNSBW
	 SEnOebobntCBYN3etr1A0rad9XPNuYb7NNtL18+G7DC8bY+6xLkZhLDZJ+J+LXxr2u
	 AVD22YgEhlrS8fvsiyo87wVrcqsU2uCAjSVQDj98yI3ATh3VubK6SVDogu4PybN1nR
	 YvkdBAs3ygUz3IvYnCqPjnKvHWaxKYDqZnOBtHFYWZcP9QBtDHJQxLGp/N/vAuD7l2
	 oka8q/o0j2xBh+0Go8JdThI/sEqly3gkOWWJ0pcN4bIeGZwHxS83hoe4WgSH8C89Dj
	 9NMszqiUv2U8w==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-il1-x132.google.com (mail-il1-x132.google.com
 [IPv6:2607:f8b0:4864:20::132])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id B38E13B29E;
 Thu, 14 Oct 2021 17:27:38 -0400 (EDT)
Received: by mail-il1-x132.google.com with SMTP id r9so5001462ile.5;
 Thu, 14 Oct 2021 14:27:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Y8f1Q2LKqjI56W/We02nYmCXxiVl0byuw4i9OaQgCMI=;
 b=LHB7QM2bs6StXmMROIjpCzQC2wYM8zYxtWnL/94v1j2iqZNUMSYcPYppYIwPWF3XGS
 sWm5uW5zQ3vD8rsnfCwWIZKwOSYEWRF68kno5Gd+C8mv1BuEHdr/tTmLFSoIz9AG35bj
 a1S+Ph0k3aL/0KZh7TTF9Z+PE2lu2ORL4slsTfFvOoRDYeeTvwdgteFt/dfY3K/3+csr
 LNX8yYuzmImdvVE7k2g2W7aD0ehSOd2T8X7Y9lUOFnOsPi5tkNaAHq7ItKJ+ZXNS9duI
 7+SKc3vJ3CRiJocdN81s3Fgfmld5+Be+ITGxY0I2EmXcSw68yTt0k4fr60gNrA52GUsg
 2rRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Y8f1Q2LKqjI56W/We02nYmCXxiVl0byuw4i9OaQgCMI=;
 b=lPrZ1Ux6vJKd1fki9JfNXb28nCO4QqtaECayBnKZQCBQSn2HcOL2yIYCSZxNT37qjl
 cHlQZiXDNGcHlY0iAP7TP8zGljM/ExFcb9vszr7ZcbqlESJsv9oVi2ctOeuDJGnzq9EK
 /buQcYK5FRYuWJss/FiN6uA/1CEIjMR8eE0ElxJelGfPjppznhUkC3nxq2Y+3wC8s1d0
 hBnOJ2RhDxbv/4XL3lpoh6AnBKMQj59sHgIqNGA0+i/fCzkcDPmXWU4uaWQbfI+oMS61
 OmdlH4iXE9FFC4dvgzpbPc58CTMUhZL6Hzm3QDRS4Wqepq7lzPufHyJGpykwwxEMryPK
 wpjA==
X-Gm-Message-State: AOAM532vhLEyi52RiXAYm3GZAUmD92fFDL+uG2AJgI5af04RzljALFDq
 76/H632g5ovC32mz1lVI6D6KK9gw7PqA1IGdsL9oJGRK
X-Google-Smtp-Source: ABdhPJzziitl0Zd/w8nIRZ/t5wW95lMi+NPVLSEJK8I91wHZwswNAKhU6aJALw6mJ5cIt9QgXSifAyAKOUdLzeRBrxE=
X-Received: by 2002:a05:6e02:8a3:: with SMTP id
 a3mr1008430ilt.88.1634246858021; 
 Thu, 14 Oct 2021 14:27:38 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw43C7CB-4Jv7h9NvvzjROdO5p2rVbPSZnmSJf0JAaCyaQ@mail.gmail.com>
 <CBBD435B-5A6F-408D-B17C-B28F326B49AC@gmx.de>
In-Reply-To: <CBBD435B-5A6F-408D-B17C-B28F326B49AC@gmx.de>
From: Dave Taht <dave.taht@gmail.com>
Date: Thu, 14 Oct 2021 14:27:26 -0700
Message-ID: <CAA93jw48afWujaJm8Sn+J-uEHb7iKLx57p7e5d=Qw9QyX=Csqg@mail.gmail.com>
To: Sebastian Moeller <moeller0@gmx.de>
Subject: Re: [Cake] l4s kernel submission
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
Cc: Cake List <cake@lists.bufferbloat.net>,
 ECN-Sane <ecn-sane@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

d2VpcmRseSBlbm91Z2gsIG15IGdtYWlsIGFjY291bnQgaGFzIG5vdCByZWNlaXZlZCBhbnl0aGlu
ZyBmcm9tIG5ldGRldgpzaW5jZSBvY3QgMTEuCgp5ZXMsIGkgdGhpbmsgZnFfY29kZWwgd2lsbCBi
ZSBiZXR0ZXIsIGFuZCBldmVuIHRoZSBwcm9wb3NlZAp0b28tc2hhbGxvdyB0aHJlc2hvbGQgd2ls
bCBtYWtlIGZvciBsZXNzIG9mIGEgZGVudCBvbiB0aGUgaW50ZXJuZXQuCgpzdGlsbC4uLiBJIGRv
IHdpc2ggSSdkIHNlZW4gdGhpcyBlYXJsaWVyLgoKT24gVGh1LCBPY3QgMTQsIDIwMjEgYXQgMToz
MSBQTSBTZWJhc3RpYW4gTW9lbGxlciA8bW9lbGxlcjBAZ214LmRlPiB3cm90ZToKPgo+IFdoaWNo
IGRvZXMgbm90IGNoYW5nZSB0aGUgaW5jb252ZW5pZW50IGZhY3QgdGhhdCBMNFMgZG9lcyBub3Qg
d29yayBvdmVyIHRoZSBvcGVuIGludGVybmV0LiBCdXQgSSBiZXQgdGhhdCBmcV9jb2RlbCB3aXRo
IGEgc2hhcGVyIGlzIGdvaW5nIHRvIGJlIGhhbmRzIGRvd24gdGhlIGJldHRlciBMNFMgQVFNIGNv
bXBhcmVkIHRvIER1YWxRLi4uICh0aGFua3MgdG8gaXRzIGZxIG5hdHVyZSBpdCBjYW4gZm9yZWdv
IHRoZSB3aG9sZSAiY291cGxpbmciIGhldXJpc3RpYyBtZXNzIGFuZCBzaWRlLXN0ZXAgdGhlIHdo
b2xlIG1hc3NpdmUgdW5mYWlybmVzcyBpc3N1ZXMsIGFuZCBrZWVwaW5nIHRoZSBrbm93biB3b3Jr
aW5nIGNvZGVsIGxhdyBmb3Igbm9uLUVDVCgxKSB0cmFmZmljIGFsc28gY29tcGFyZWQgdG8gZHVh
bHEncyBidXJ0cyBpbnRvbGVyYWJ0IFBJRSB2YXJpYW50IGFsc28gc2VlbXMgbGlrZSBhIHN0ZXAg
aW4gdGhlIHJpZ2h0IGRpcmVjdGlvbikuCj4gVGhlbiBhZ2FpbiBpdCBzZWVtcyBjb25zZXF1ZW50
IGdpdmVuIHRoYXQgdGhlIEJCUnYyIHRlYW0gc2VlbSB0byBiZSBvbi1ib2FyZCB0aGUgTDRTIHRy
YWluOyB0byBwdXQgYSBzb21ld2hhdCBwb3NpdGl2ZSBzcGluIChsaXBzdGljaz8pIG9uIHRoaXMs
IEkgYXNzdW1lIHRoYXQgdGhlIHF1YWxpdHkgb2YgdGhlIEw0UyBlbmdpbmVlcmluZyBtaWdodCBp
bXByb3ZlLi4uCj4KPiBSZWdhcmRzCj4gICAgICAgICBTZWJhc3RpYW4KPgo+IFAuUy46IFdpdG5l
c3NpbmcgdGhlIEw0UyBkcmFtYSBpbiB0aGUgSUVURiBtYWtlcyBtZSBhcHByZWNpYXRlIGhvdyBj
b21wYXJhdGl2ZWx5IGNsZWFuIGFuZCBlbGVnYW50IHNhdXNhZ2VzIGFyZSBtYWRlLi4uCj4KPgo+
Cj4gPiBPbiBPY3QgMTQsIDIwMjEsIGF0IDIyOjA2LCBEYXZlIFRhaHQgPGRhdmUudGFodEBnbWFp
bC5jb20+IHdyb3RlOgo+ID4KPiA+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDIxMTAx
NDE3NTkxOC42MDE4OC0zLWVyaWMuZHVtYXpldEBnbWFpbC5jb20vCj4gPgo+ID4gLS0KPiA+IEZp
eGluZyBTdGFybGluaydzIExhdGVuY2llczogaHR0cHM6Ly93d3cueW91dHViZS5jb20vd2F0Y2g/
dj1jOWdMbzZYcndndwo+ID4KPiA+IERhdmUgVMOkaHQgQ0VPLCBUZWtMaWJyZSwgTExDCj4gPiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4gQ2FrZSBt
YWlsaW5nIGxpc3QKPiA+IENha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cj4gPiBodHRwczovL2xp
c3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCj4KCgotLSAKRml4aW5nIFN0YXJsaW5r
J3MgTGF0ZW5jaWVzOiBodHRwczovL3d3dy55b3V0dWJlLmNvbS93YXRjaD92PWM5Z0xvNlhyd2d3
CgpEYXZlIFTDpGh0IENFTywgVGVrTGlicmUsIExMQwpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZl
cmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==
