Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id A6E573B1E49
	for <lists+cake@lfdr.de>; Wed, 23 Jun 2021 18:09:23 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 4B9413CB5C;
	Wed, 23 Jun 2021 12:09:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1624464557;
	bh=eEpvrFvMmbd87LWak4Luq/EZL5CMZQJGZkYhJ9U9u24=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=bEEYBfaDcY61H58YuIfvWgieHm3EdvwOOErGLmMUbOae1+3VlgdHRj3UIpecCdOhE
	 phevHVbH0rzGtO4VCEzc5w1YlgPEikJfqZ0Qg/guZKCmrtwPfPV7vi6JVBlLjjxtn5
	 ITOoTfHnMaJjIC5m+5FRMAD/4z2UkUowl+3yHtns3xoe/8qllt7Yonysw58A5dYrdq
	 sH6d2J4CcINZMvwK7aJbKYVtrx7iyD/I/oqFY8JMFMR5ixSKwgCGedbxwdoOKL8gpl
	 +x4mhXftDWibSMmhrzQEeQXBK3/MYBOrR0D19uQN6CPO13QpCeDO78azwmO2F7ybaf
	 pMi6L5F8dBngw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from smtp74.iad3a.emailsrvr.com (smtp74.iad3a.emailsrvr.com
 [173.203.187.74])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id A76973CB53
 for <cake@lists.bufferbloat.net>; Wed, 23 Jun 2021 12:09:15 -0400 (EDT)
Received: from app38.wa-webapps.iad3a (relay-webapps.rsapps.net
 [172.27.255.140])
 by smtp2.relay.iad3a.emailsrvr.com (SMTP Server) with ESMTP id 4BD9518AB;
 Wed, 23 Jun 2021 12:09:15 -0400 (EDT)
Received: from deepplum.com (localhost.localdomain [127.0.0.1])
 by app38.wa-webapps.iad3a (Postfix) with ESMTP id 38979E03AC;
 Wed, 23 Jun 2021 12:09:15 -0400 (EDT)
Received: by apps.rackspace.com
 (Authenticated sender: dpreed@deepplum.com, from: dpreed@deepplum.com) 
 with HTTP; Wed, 23 Jun 2021 12:09:15 -0400 (EDT)
X-Auth-ID: dpreed@deepplum.com
Date: Wed, 23 Jun 2021 12:09:15 -0400 (EDT)
From: "David P. Reed" <dpreed@deepplum.com>
To: "Matt Mathis" <mattmathis@google.com>
MIME-Version: 1.0
Importance: Normal
X-Priority: 3 (Normal)
X-Type: plain
In-Reply-To: <mailman.3123.1624154360.24343.cerowrt-devel@lists.bufferbloat.net>
References: <CAA93jw5JR_uawdeK7PtdxwBkkeB4d0DOS9nHBizoPv8EteBPDw@mail.gmail.com> 
 <mailman.3123.1624154360.24343.cerowrt-devel@lists.bufferbloat.net>
X-Client-IP: 209.6.168.128
Message-ID: <1624464555.230819179@apps.rackspace.com>
X-Mailer: webmail/19.0.4-RC
X-Classification-ID: 6f378fa2-f97d-4c3e-945a-fccbf66e50c9-1-1
Subject: Re: [Cake]
	=?utf-8?q?=5BCerowrt-devel=5D__access_to_cmsg_from_go=3F?=
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
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

KFRoZXkgY2xvc2VkIHRoZSBpc3N1ZSBvbiB0aGUgZ29sYW5nIGxpbmsuKQoKCkknbSBub3QgYSBn
b2xhbmcgdXNlci4gT25lIGxhbmd1YWdlIHRvbyBtYW55IGZvciBtZS4gSXQgc291bmRzIGxpa2Ug
YSBsaWJyYXJ5IGlzc3VlLgoKTXkgc3VnZ2VzdGlvbiB3b3VsZCBiZSB0byB1c2UgdGhlIG9wZW5u
ZXNzIG9mIG9wZW4gc291cmNlLiBHZW5lcmF0ZSBhIHBhdGNoc2V0IHRoYXQgZXh0ZW5kcyB0aGUg
aW50ZXJmYWNlIHByb3Blcmx5LiBEb24ndCB0cnkgdG8gImltcHJvdmUiIHdoYXQgeW91IGRvbid0
IGxpa2UgLSBjb21tdW5pdGllcyBsaWtlIHN0YWJpbGl0eSBhbmQgYmFja3dhcmQgY29tcGF0aWJp
bGl0eS4gRXhwbGFpbiB0aGUgYWRkZWQgc2VtYW50aWNzIGluIGRvY3VtZW50YXRpb24uCgpUaGVu
LCBtYWludGFpbiB5b3VyIGZvcmsuIEkgZG9uJ3Qga25vdyBob3cgdGhlIGdvbGFuZyBjb21tdW5p
dHkgd29ya3Mgd2l0aCB2ZXJzaW9uaW5nIG9mIGxpYnJhcmllcywgYnV0IFB5dGhvbiwgUnVzdCwg
SGFza2VsbCwgYW5kIE5vZGVKUyBhbGwgaGF2ZSB3YXlzIHRvIGxldCBwcm9qZWN0cyB1c2UgdmFy
aWFudHMgb2YgbGlicmFyaWVzLgoKVGhlbiwgc3VibWl0IHRoYXQgcGF0Y2hzZXQgdXBzdHJlYW0g
dG8gdGhlIGdvbGFuZyBjb21tdW5pdHkuIEFkdm9jYXRlIGZvciB1cHN0cmVhbWluZyBpdCwgYW5k
IGRldmVsb3AgYSBjb21tdW5pdHkgdGhhdCB1c2VzIHRoZSBwYXRjaGVkIGxpYnJhcnkuIEV2ZW50
dWFsbHksIHlvdSBtYXkgYmUgYWJsZSB0byBzdG9wIG1haW50YWluaW5nIHlvdXIgdmFyaWFudCB0
b29sc2V0LiBPciB5b3Ugd2lsbCBkZXZlbG9wIGFuIGFsdGVybmF0IGxpYnJhcnkgdXNlciBiYXNl
IHRoYXQgZGlzYWdyZWVzIHdpdGggdXBzdHJlYW0ncyBkZWNpc2lvbnMuCgooQW5hbG9neSwgQW5k
cm9pZCdzIExpbnV4IEtlcm5lbCB2cy4gTGludXMgVG9ydmFsZHMncy4gR29vZ2xlIEFuZHJvaWQg
cmVqZWN0cyB0byBzb21lIGV4dGVudCBMaW51cydzIGNyZXcncyB1bndpbGxpbmduZXNzIHRvIGFj
Y2VwdCB3aGF0IEFuZHJvaWQgbmVlZHMgYXMgaW1wcm92ZW1lbnRzLikKClRoaXMgaXMgIm1vZGVy
biBvcGVuIHNvdXJjZSBjb21tdW5pdHkiIHByYWN0aWNlIGZvciBnZXR0aW5nIHRoaW5ncyBkb25l
LiBQcmFnbWF0aWMgaW5ub3ZhdGlvbnMgaW4gc2hhcmVkIGNvZGViYXNlcyBzb21ldGltZXMgaGF2
ZSB0byB3YWl0IGZvciB0aGUgb3JpZ2luYWwgZWdvcyB0byBkaWUgb2ZmLgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2Fr
ZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlz
dGluZm8vY2FrZQo=
