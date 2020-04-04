Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 370EC19E5EB
	for <lists+cake@lfdr.de>; Sat,  4 Apr 2020 16:47:10 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 68A433CB3E;
	Sat,  4 Apr 2020 10:47:04 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1586011624;
	bh=8wsMnTKermfscVFceat0YKVmjCRkzDHn2ekodsRXgTU=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=EPi36W0JKT7DdYlmzrZ5TRdtBnNCqumlmuzZY7aruNsc2d9PsXkAFn+W4UEBCZfVw
	 czrMrhjZn/BPEA1VmKFymbts6ilu5zr9aDm3N38hCm+44BQp8fj7Fl/xCPHAbH27Mc
	 kLM3IsuCcrEyvFuiNSe6LkLcLt+ZidmDOTs2Dtn2XgeXbWUwzEfKUt7EUkC4atdz0C
	 APl2qZf+FBTwChcrvde/M9nsSA02CefS1uNZY0vAwbDMoDOaThxZvBTRy2TS6Jv3GB
	 BlMPCSgioxgJmcWvCDV8G7uw1XQ2rvuFae8xbLiQM9lGgq3Gtq9n6y0+0sHq2nBE3v
	 IL7RRmnkCbJUw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from smtp127.iad3a.emailsrvr.com (smtp127.iad3a.emailsrvr.com
 [173.203.187.127])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 072E43CB37
 for <cake@lists.bufferbloat.net>; Sat,  4 Apr 2020 10:47:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=g001.emailsrvr.com;
 s=20190322-9u7zjiwi; t=1586011622;
 bh=KDAW1GV+fyyOb8x2zQR32vRJlk+13yZXLHn5sJqmPZ4=;
 h=Date:Subject:From:To:From;
 b=Rw1Q0Ytz0FA2rj0hW633HqkR+pe57nzZN4bR5RJfAf+uDyc+t+xHJ38x7NalxTsyf
 h2xYDh5ImwVABpibAW0RRVatsVpbRkvkGlTVdSn90C2xPQD3m7vLevY/aHAcerOEt5
 P3bVyFgiWrdkR1HMdYbjHPYEQ6Wsuv4sjs056s6M=
Received: from app23.wa-webapps.iad3a (relay-webapps.rsapps.net
 [172.27.255.140])
 by smtp24.relay.iad3a.emailsrvr.com (SMTP Server) with ESMTP id AE2092332E;
 Sat,  4 Apr 2020 10:47:02 -0400 (EDT)
X-Sender-Id: dpreed@deepplum.com
Received: from app23.wa-webapps.iad3a (relay-webapps.rsapps.net
 [172.27.255.140]) by 0.0.0.0:25 (trex/5.7.12);
 Sat, 04 Apr 2020 10:47:02 -0400
Received: from deepplum.com (localhost.localdomain [127.0.0.1])
 by app23.wa-webapps.iad3a (Postfix) with ESMTP id 9B41661537;
 Sat,  4 Apr 2020 10:47:02 -0400 (EDT)
Received: by apps.rackspace.com
 (Authenticated sender: dpreed@deepplum.com, from: dpreed@deepplum.com) 
 with HTTP; Sat, 4 Apr 2020 10:47:02 -0400 (EDT)
X-Auth-ID: dpreed@deepplum.com
Date: Sat, 4 Apr 2020 10:47:02 -0400 (EDT)
From: "David P. Reed" <dpreed@deepplum.com>
To: "Aaron Wood" <woody77@gmail.com>
MIME-Version: 1.0
Importance: Normal
X-Priority: 3 (Normal)
X-Type: plain
In-Reply-To: <CALQXh-P1JGWHXQYnRd68woqj-C8CLxaxeD5=4xjYLYiLubkSeQ@mail.gmail.com>
References: <CALQXh-P1JGWHXQYnRd68woqj-C8CLxaxeD5=4xjYLYiLubkSeQ@mail.gmail.com>
Message-ID: <1586011622.632930657@apps.rackspace.com>
X-Mailer: webmail/17.3.5-RC
X-Classification-ID: 1269ce5d-9b75-48a3-a1f8-de617153be20-1-1
Subject: Re: [Cake] New board that looks interesting
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
Cc: cake@lists.bufferbloat.net,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

VGhhbmtzISBJIG9yZGVyZWQgb25lIGp1c3Qgbm93LiBJbiBteSBleHBlcmllbmNlLCB0aGlzIGNv
bXBhbnkgZG9lcyByYXRoZXIgbmVhdCBzdHVmZi4gVGhlaXIgWE1PUyBiYXNlZCBtaWNyb3Bob25l
IGFycmF5IChSZVNwZWFrZXIpIGlzIHJlYWxseSB1c2VmdWwuIFdoYXQncyB0aGUgc3RhdGUgb2Yg
cGxheSBpbiBMaW51eC9PcGVuV1JUIGZvciBJbnRlbCA5NTYwIGNhcGFiaWxpdGllcyByZWdhcmRp
bmcgQVFNPwoKT24gU2F0dXJkYXksIEFwcmlsIDQsIDIwMjAgMTI6MTJhbSwgIkFhcm9uIFdvb2Qi
IDx3b29keTc3QGdtYWlsLmNvbT4gc2FpZDoKCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KPiBDYWtlIG1haWxpbmcgbGlzdAo+IENha2VAbGlzdHMuYnVm
ZmVyYmxvYXQubmV0Cj4gaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2Fr
ZQo+IGh0dHBzOi8vd3d3LnNlZWVkc3R1ZGlvLmNvbS9PRFlTU0VZLVg4Nko0MTA1ODAwLXAtNDQ0
NS5odG1sCj4gCj4gcXVhZC1jb3JlIENlbGVyb24gSjQxMDUgMS41LTIuNSBHSHogeDY0Cj4gOEdC
IFJhbQo+IDJ4IGkyMTF0IGludGVsIGV0aGVybmV0IGNvbnRyb2xsZXJzCj4gaW50ZWwgOTU2MCA4
MDIuMTFhYyAod2F2ZTIpIHdpZmkvYmx1ZXRvb3RoIGNoaXBzZXQKPiBpbnRlbCBidWlsdC1pbiBn
cmFwaGljcwo+IG9uYm9hcmQgQVJNIENvcnRleC1NMCBhbmQgUlBpICYgQXJkdWlubyBoZWFkZXJz
Cj4gbS4yIGFuZCBQQ0llIGFkYXB0ZXJzCj4gPCQyMDAKPiAKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3Rz
LmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9j
YWtlCg==
