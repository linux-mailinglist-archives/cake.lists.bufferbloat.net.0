Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id D2DAF8B656E
	for <lists+cake@lfdr.de>; Tue, 30 Apr 2024 00:18:55 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id B9FEF3CB4C;
	Mon, 29 Apr 2024 18:18:52 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1714429132;
	bh=yLpPQRTVnYyQnKI9JYJwH+Axd3JHw8STxC9kcpTuLJU=;
	h=In-reply-to:Date:References:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=F440P8eSd81QMFeATUHcSVa/SU9XzFAKTBXZpR5Wb4vzxve1n3+Qqr7tUdQE7pEqE
	 lu3abClwOujIPG7oBDsLcMaP5G7gQByy7Uw2k1EcpWPY9wSxI5pWqOslmtvRmJnOF8
	 gFIr8Hw4S3vyJN764Id4PxmORvoDgNWbbuPX3wujA1rex5B4d9Qino+O72Fja83JGm
	 d9H9TCA/hWMTq8qhR+qV4TdbggC3IS/IhEms7MVO2ZQBbeB+Gquk4xI6LTkYrPjtbG
	 0rOF7rGs7NbaIJXJIGZs8uvXwtotDg4bks9dJm6Cb3YsgP9/glbigyu1bbEmEAvM0Q
	 vdvb5vTwLLwng==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from rn-mailsvcp-ppex-lapp34.apple.com
 (rn-mailsvcp-ppex-lapp34.rno.apple.com [17.179.253.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 11CE13B2A4;
 Mon, 17 Oct 2022 20:02:09 -0400 (EDT)
Received: from pps.filterd (rn-mailsvcp-ppex-lapp34.rno.apple.com [127.0.0.1])
 by rn-mailsvcp-ppex-lapp34.rno.apple.com (8.16.1.2/8.16.1.2) with
 SMTP id 29I028g0010925; Mon, 17 Oct 2022 17:02:08 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=apple.com;
 h=content-type :
 mime-version : subject : from : in-reply-to : date : cc :
 content-transfer-encoding : message-id : references : to; s=20180706;
 bh=by6yF55DNawqDTnhWWusKHQH0H8ZGO/tG07IcIUSJYg=;
 b=sKCnwxZxv8n5xQqbBluni2xY6RmaZN9Pjouu7e8PZ3psCMfpZEEzwjEyoHR5AeCwoCV+
 GGL4stFMjxvVVWfboEe6txi20V4yzbxKdd50jEs7YnN2QrB0dfPCup5dYa6pCBoinhqS
 YX79sK30rpiddVA2pcNgJiP2rdwtCcFWOYtQ8xo+Bgn89s8gBUoRjglkbj2Bd8KKr2lO
 NtX1De4Hk9W0FIMOMRBbW19SqWb5maNrpHCaVfQ38Nici21g8MxRhoGL0oa9lrni9KYV
 icplq3wUsIG2hOmUemCIe+FvPhXY15J78a2+jlFAPY8HJf4U8Jx9FxhOwuKNEDwKSfTn gA== 
Received: from rn-mailsvcp-mta-lapp02.rno.apple.com
 (rn-mailsvcp-mta-lapp02.rno.apple.com [10.225.203.150])
 by rn-mailsvcp-ppex-lapp34.rno.apple.com with ESMTP id 3k95nx10tc-2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO);
 Mon, 17 Oct 2022 17:02:08 -0700
Received: from rn-mailsvcp-mmp-lapp03.rno.apple.com
 (rn-mailsvcp-mmp-lapp03.rno.apple.com [17.179.253.16])
 by rn-mailsvcp-mta-lapp02.rno.apple.com
 (Oracle Communications Messaging Server 8.1.0.19.20220711 64bit (built Jul 11
 2022)) with ESMTPS id <0RJX00J5Q9FC9K00@rn-mailsvcp-mta-lapp02.rno.apple.com>; 
 Mon, 17 Oct 2022 17:02:08 -0700 (PDT)
Received: from process_milters-daemon.rn-mailsvcp-mmp-lapp03.rno.apple.com by
 rn-mailsvcp-mmp-lapp03.rno.apple.com
 (Oracle Communications Messaging Server 8.1.0.19.20220711 64bit (built Jul 11
 2022)) id <0RJX00M0097TMG00@rn-mailsvcp-mmp-lapp03.rno.apple.com>; Mon,
 17 Oct 2022 17:02:06 -0700 (PDT)
X-Va-A: 
X-Va-T-CD: 762a9e81ab1774e425bcb42b3bcb8505
X-Va-E-CD: 7b79535e0e2c706cb521c16087105ecb
X-Va-R-CD: b29d391f6d13ba1bafb01998e95aa6b7
X-Va-CD: 0
X-Va-ID: ab26b32c-8ae2-4408-9b8a-0723921ba97d
X-V-A: 
X-V-T-CD: 762a9e81ab1774e425bcb42b3bcb8505
X-V-E-CD: 7b79535e0e2c706cb521c16087105ecb
X-V-R-CD: b29d391f6d13ba1bafb01998e95aa6b7
X-V-CD: 0
X-V-ID: b01e1739-46a8-436d-a5e1-f4e22b4b67c2
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.545, 18.0.895
 definitions=2022-10-17_13:2022-10-17,
 2022-10-17 signatures=0
Received: from [17.11.122.14] (unknown [17.11.122.14])
 by rn-mailsvcp-mmp-lapp03.rno.apple.com
 (Oracle Communications Messaging Server 8.1.0.19.20220711 64bit (built Jul 11
 2022))
 with ESMTPSA id <0RJX002069FEIC00@rn-mailsvcp-mmp-lapp03.rno.apple.com>; Mon,
 17 Oct 2022 17:02:05 -0700 (PDT)
MIME-version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.7\))
In-reply-to: <CAA93jw77h=ztEOzyADriH2PnswUDQiyNvBdsuFi+K5EexpoxUQ@mail.gmail.com>
Date: Mon, 17 Oct 2022 17:02:01 -0700
Message-id: <938D9D45-DADA-4291-BD8A-84E4257CEE49@apple.com>
References: <CAA93jw77h=ztEOzyADriH2PnswUDQiyNvBdsuFi+K5EexpoxUQ@mail.gmail.com>
To: =?utf-8?Q?Dave_T=C3=A4ht?= <dave.taht@gmail.com>
X-Mailer: Apple Mail (2.3608.120.23.2.7)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.545, 18.0.895
 definitions=2022-10-17_13:2022-10-17,
 2022-10-17 signatures=0
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

T24gOSBPY3QgMjAyMiwgYXQgMDY6MTQsIERhdmUgVGFodCB2aWEgTWFrZS13aWZpLWZhc3QgPG1h
a2Utd2lmaS1mYXN0QGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldD4gd3JvdGU6Cgo+IFRoaXMgd2FzIHNv
IG1hc3NpdmVseSB3ZWxsIGRvbmUsIEkgY3JpZWQuIERvZXMgYW55b25lIGtub3cgaG93IHRvIGdl
dCBpbiB0b3VjaCB3aXRoIHRoZSBpZnhpdCBmb2xrPwo+IAo+IGh0dHBzOi8vd3d3LnlvdXR1YmUu
Y29tL3dhdGNoP3Y9VUlDaDNTY2ZOV0kKCknigJltIHN1cnByaXNlZCB0aGF0IHlvdSBsaWtlZCB0
aGlzIHZpZGVvLiBJdCBzZWVtcyB0byBtZSB0aGF0IGl0IHJlcGVhdHMgYWxsIHRoZSBzdGFuZGFy
ZCBtaXNpbmZvcm1hdGlvbi4gVGhlIGFuYWxvZ3kgdGhleSB1c2UgaXMgdGhlIHN0YW5kYXJkIHRl
cnJpYmxlIGV4YW1wbGUgb2Ygd2FpdGluZyBpbiBhIGxvbmcgbGluZSBhdCBhIGdyb2Nlcnkgc3Rv
cmUsIGFuZCB0aGUg4oCcc29sdXRpb27igJ0gaXMgbGV0dGluZyBjZXJ0YWluIHRyYWZmaWMg4oCc
anVtcCB0aGUgbGluZSwgYW5nZXJpbmcgZXZlcnlvbmUgYmVoaW5kIHRoZW3igJ0uCgpTb21lIHF1
b3RlcyBmcm9tIHRoZSB2aWRlbzoKCj4gaXQgd291bGQgYmUgc28gbXVjaCBtb3JlIGVmZmljaWVu
dCBmb3IgdGhlbSB0byBsZXQgeW91IHNraXAgdGhlIGxpbmUgYW5kIGp1c3QgY2hlY2sgb3V0LCBl
c3BlY2lhbGx5IHNpbmNlIHlvdeKAmXJlIGluIGEgaHVycnksIGJ1dCB0aGV54oCZcmUgcnVkZWx5
IHJlZnVzaW5nCgo+IHRvIGdvIGJhY2sgdG8gb3VyIGdyb2Nlcnkgc3RvcmUgYW5hbG9neSB0aGlz
IHdvdWxkIGJlIGxpa2UgaWYgYSB3b3JrZXIgc2F3IHlvdSBzdGFuZGluZyBhdCB0aGUgYmFjayAu
Li4gYW5kIGVpdGhlciBsZXQgeW91IHNraXAgdG8gdGhlIGZyb250IG9mIHRoZSBsaW5lIG9yIG9w
ZW5zIHVwIGFuIGV4cHJlc3MgbGFuZSBqdXN0IGZvciB5b3UKClRoZSB2aWRlbyBkZXNjcmliZXMg
dGhlIHByb2JsZW0gb2YgYnVmZmVyYmxvYXQsIGFuZCB0aGVuIGRlc2NyaWJlcyB0aGUgc2FtZSBm
YWlsZWQgc29sdXRpb24gdGhhdCBoYXNu4oCZdCB3b3JrZWQgZm9yIHRoZSBsYXN0IHRocmVlIGRl
Y2FkZXMuIERlc2NyaWJpbmcgdGhlIG9idmlvdXMgc2ltcGxlLW1pbmRlZCAod3JvbmcpIHNvbHV0
aW9uIHRoYXQgYW55IG5vcm1hbCBwZXJzb24gd291bGQgdGhpbmsgb2YgYmFzZWQgb24gdGhlaXIg
cGVyc29uYWwgaHVtYW4gZXhwZXJpZW5jZSB3YWl0aW5nIGluIGdyb2Nlcnkgc3RvcmVzIGFuZCBh
aXJwb3J0cywgaXMgbm90IGRlc2NyaWJpbmcgdGhlIHNvbHV0aW9uIHRvIGJ1ZmZlcmJsb2F0LiBU
aGUgc29sdXRpb24gdG8gYnVmZmVyYmxvYXQgaXMgbm90IHRoYXQgaWYgeW91IGFyZSBwcml2aWxl
Z2VkIHRoZW4geW91IGdldCB0byDigJxza2lwIHRvIHRoZSBmcm9udCBvZiB0aGUgbGluZeKAnS4g
VGhlIHNvbHV0aW9uIHRvIGJ1ZmZlcmJsb2F0IGlzIHRoYXQgdGhlcmUgaXMgbm8gbGluZSEKCldp
dGggZ3JvY2VyeSBzdG9yZXMgYW5kIGFpcnBvcnRzIHBlb3BsZeKAmXMgYXJyaXZhbHMgYXJlIGlu
ZGVwZW5kZW50IGFuZCBub3QgY29udHJvbGxlZC4gVGhlcmUgaXMgbm8gd2F5IGZvciBhIGdyb2Nl
cnkgc3RvcmUgb3IgYWlycG9ydCB0byBnZW5lcmF0ZSBiYWNrcHJlc3N1cmUgdG8gdGVsbCBwZW9w
bGUgdG8gd2FpdCBhdCBob21lIHdoZW4gYSBxdWV1ZSBiZWdpbnMgdG8gZm9ybS4gVGhlIGtleSB0
byBzb2x2aW5nIGJ1ZmZlcmJsb2F0IGlzIGdlbmVyYXRpbmcgdGltZWx5IGJhY2twcmVzc3VyZSB0
byBwcmV2ZW50IHRoZSBxdWV1ZSBmb3JtaW5nIGluIHRoZSBmaXJzdCBwbGFjZSwgbm90IGFjY2Vw
dGluZyBhIGh1Z2UgcXVldWUgYW5kIHRoZW4gZGVjaWRpbmcgd2hvIGRlc2VydmVzIHNwZWNpYWwg
dHJlYXRtZW50IHRvIGdldCBiZXR0ZXIgc2VydmljZSB0aGFuIGFsbCB0aGUgb3RoZXIgcGVvbnMg
d2hvIHN0aWxsIGhhdmUgdG8gd2FpdCBpbiBhIGxvbmcgcXVldWUsIGp1c3QgbGlrZSBiZWZvcmUu
CgpTdHVhcnQgQ2hlc2hpcmUKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0
dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK
