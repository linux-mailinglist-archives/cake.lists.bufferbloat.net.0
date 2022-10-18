Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id D6E43602986
	for <lists+cake@lfdr.de>; Tue, 18 Oct 2022 12:44:24 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 997A73CB39;
	Tue, 18 Oct 2022 06:44:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1666089862;
	bh=oQ/KkB1JM4DTg6pIGuJOKQMvxlqEveBUzDLxU5BkfFk=;
	h=To:In-Reply-To:References:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=e6PyQyVQocaGY1RQyaObYQVDDe000pDLt6F1t/AWjuBryJ7hXma8Ch3DerB1++MPd
	 U6jfQY9ccE7WHex3YCrI+4c5qLLmCQWPu4V5Pl5OHvf+hWTkvxSxTLyV+YQ6zCMso3
	 srT6RnQEjda1cXZ5IWNplOI4OQek+HrYzSGGgdFPwBf8l+AyIrHD1pVjQ0FD0edNHy
	 Bg4nSaTnX1/yd+zbN/gvwoEPCRI4C4F9FvhRWe6QpCyeesj8YLWYWus/o4JVLbt7OF
	 NJ2LPdomgdn5sS0i8ccNXfVIw/8wwzqPVi6+5piJtsTJAO26Iycv2k1INLTQyg98OL
	 bgViC809PqtUw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 71CA23B29E
 for <cake@lists.bufferbloat.net>; Tue, 18 Oct 2022 06:44:20 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
 t=1666089859; bh=9oIaumfOj6bwSGNBI3LbDysj0Dw9PV2ix1nGA4G2JHM=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=s/WljlgIbHexctzOjr068hXJ96dg2WEfn7Jg4OG2FqIWVD2Ur8Jg6Md3WovmOEItS
 X7lCbjSY30PN3iFit/JW+pWpmXhicjCYnilrkxa7/ydGLtuteyAGD22VRgI+YB/SoZ
 2QgmJPQCznaD23T2P/M3oCruJm2EBkg6FC9A67h/hdeo7+rdcHayYnpop2xwp0HX4x
 JgLSHjSdxYMEPsYv99fG5Pg8foUJHEEmFo6ZpGl/pYGTyYVFwbdDfJ2JPbvFlvcROH
 qhKMFPvAt/ArDGTcWvDNn8eVFuDiPoqIO6eVUha2WJ/SinMX0Uw0OYbOJRBrs58/Bu
 9G5fxFxO6qayw==
To: Zhengchao Shao <shaozhengchao@huawei.com>, cake@lists.bufferbloat.net,
 netdev@vger.kernel.org, jhs@mojatatu.com, xiyou.wangcong@gmail.com,
 jiri@resnulli.us, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com
In-Reply-To: <20221018063201.306474-2-shaozhengchao@huawei.com>
References: <20221018063201.306474-1-shaozhengchao@huawei.com>
 <20221018063201.306474-2-shaozhengchao@huawei.com>
Date: Tue, 18 Oct 2022 12:44:18 +0200
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <874jw1bed9.fsf@toke.dk>
MIME-Version: 1.0
Subject: Re: [Cake] [PATCH net,
 v2 1/3] net: sched: cake: fix null pointer access issue when
 cake_init() fails
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
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= via Cake
 <cake@lists.bufferbloat.net>
Reply-To: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@toke.dk>
Cc: yuehaibing@huawei.com, shaozhengchao@huawei.com, weiyongjun1@huawei.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

WmhlbmdjaGFvIFNoYW8gPHNoYW96aGVuZ2NoYW9AaHVhd2VpLmNvbT4gd3JpdGVzOgoKPiBXaGVu
IHRoZSBkZWZhdWx0IHFkaXNjIGlzIGNha2UsIGlmIHRoZSBxZGlzYyBvZiBkZXZfcXVldWUgZmFp
bHMgdG8gYmUKPiBpbml0ZWQgZHVyaW5nIG1xcHJpb19pbml0KCksIGNha2VfcmVzZXQoKSBpcyBp
bnZva2VkIHRvIGNsZWFyCj4gcmVzb3VyY2VzLiBJbiB0aGlzIGNhc2UsIHRoZSB0aW5zIGlzIE5V
TEwsIGFuZCBpdCB3aWxsIGNhdXNlIGdwZiBpc3N1ZS4KPgo+IFRoZSBwcm9jZXNzIGlzIGFzIGZv
bGxvd3M6Cj4gcWRpc2NfY3JlYXRlX2RmbHQoKQo+IAljYWtlX2luaXQoKQo+IAkJcS0+dGlucyA9
IGt2Y2FsbG9jKC4uLikgICAgICAgIC0tLT5mYWlsZWQsIHEtPnRpbnMgaXMgTlVMTAo+IAkuLi4K
PiAJcWRpc2NfcHV0KCkKPiAJCS4uLgo+IAkJY2FrZV9yZXNldCgpCj4gCQkJLi4uCj4gCQkJY2Fr
ZV9kZXF1ZXVlX29uZSgpCj4gCQkJCWIgPSAmcS0+dGluc1suLi5dICAgLS0tPnEtPnRpbnMgaXMg
TlVMTAo+Cj4gVGhlIGZvbGxvd2luZyBpcyB0aGUgQ2FsbCBUcmFjZSBpbmZvcm1hdGlvbjoKPiBn
ZW5lcmFsIHByb3RlY3Rpb24gZmF1bHQsIHByb2JhYmx5IGZvciBub24tY2Fub25pY2FsIGFkZHJl
c3MKPiAweGRmZmZmYzAwMDAwMDAwMDA6IDAwMDAgWyMxXSBQUkVFTVBUIFNNUCBLQVNBTgo+IEtB
U0FOOiBudWxsLXB0ci1kZXJlZiBpbiByYW5nZSBbMHgwMDAwMDAwMDAwMDAwMDAwLTB4MDAwMDAw
MDAwMDAwMDAwN10KPiBSSVA6IDAwMTA6Y2FrZV9kZXF1ZXVlX29uZSsweGM5LzB4M2MwCj4gQ2Fs
bCBUcmFjZToKPiA8VEFTSz4KPiBjYWtlX3Jlc2V0KzB4YjEvMHgxNDAKPiBxZGlzY19yZXNldCsw
eGVkLzB4NmYwCj4gcWRpc2NfZGVzdHJveSsweDgyLzB4NGMwCj4gcWRpc2NfcHV0KzB4OWUvMHhi
MAo+IHFkaXNjX2NyZWF0ZV9kZmx0KzB4MmMzLzB4NGEwCj4gbXFwcmlvX2luaXQrMHhhNzEvMHgx
NzYwCj4gcWRpc2NfY3JlYXRlKzB4M2ViLzB4MTAwMAo+IHRjX21vZGlmeV9xZGlzYysweDQwOC8w
eDE3MjAKPiBydG5ldGxpbmtfcmN2X21zZysweDM4ZS8weGFjMAo+IG5ldGxpbmtfcmN2X3NrYisw
eDEyZC8weDNhMAo+IG5ldGxpbmtfdW5pY2FzdCsweDRhMi8weDc0MAo+IG5ldGxpbmtfc2VuZG1z
ZysweDgyNi8weGNjMAo+IHNvY2tfc2VuZG1zZysweGM1LzB4MTAwCj4gX19fX3N5c19zZW5kbXNn
KzB4NTgzLzB4NjkwCj4gX19fc3lzX3NlbmRtc2crMHhlOC8weDE2MAo+IF9fc3lzX3NlbmRtc2cr
MHhiZi8weDE2MAo+IGRvX3N5c2NhbGxfNjQrMHgzNS8weDgwCj4gZW50cnlfU1lTQ0FMTF82NF9h
ZnRlcl9od2ZyYW1lKzB4NDYvMHhiMAo+IFJJUDogMDAzMzoweDdmODllNTEyMmQwNAo+IDwvVEFT
Sz4KPgo+IEZpeGVzOiAwNDZmNmZkNWRhZWYgKCJzY2hlZDogQWRkIENvbW1vbiBBcHBsaWNhdGlv
bnMgS2VwdCBFbmhhbmNlZCAoY2FrZSkgcWRpc2MiKQo+IFNpZ25lZC1vZmYtYnk6IFpoZW5nY2hh
byBTaGFvIDxzaGFvemhlbmdjaGFvQGh1YXdlaS5jb20+CgpBY2tlZC1ieTogVG9rZSBIw7hpbGFu
ZC1Kw7hyZ2Vuc2VuIDx0b2tlQHRva2UuZGs+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxv
YXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK
