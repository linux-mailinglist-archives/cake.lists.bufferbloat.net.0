Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id 40635B46C0
	for <lists+cake@lfdr.de>; Tue, 17 Sep 2019 07:12:28 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 395023CB41;
	Tue, 17 Sep 2019 01:12:27 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1568697147;
	bh=XUsSl57vzvTIPSEUNOwMVuvvTmbFphkU0wugTLQgXog=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=m8qC0GrDc+3vluFtxguD6Z1bVz0QkbWUsE724quUcQ78/I2MsLAEi8XbEJ+vsQ8H4
	 pvZxdEXuZ8Q3t8kqc+HT7Txp2UEa7iJLf3MJ7xrtclf5w87tCkbHMUSq4bpZpArMQT
	 wGUSM7Y87MMVTO8sHXS7POA3oOWrKw2uwc84i4o1LFxl1So9RaYlXgoJ7VtLZnSgHS
	 ieAOnQF9CgizgV/GJwOEL5M0Dv09lTWN+NLOmcIfSjPnIdHiRAGLP8f47EFWsWRy1b
	 2Y/0QN2LIcYsNEnlfyxCOfO4M+BwqAYrYXuBMXaGlbByQ8SyJszpOR2L9r+tfI82lV
	 Oy1nDCpUz8Kfw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from webmail.newmedia-net.de (smtps.newmedia-net.de
 [IPv6:2a05:a1c0:0:de::167])
 (using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id B489F3CB36
 for <cake@lists.bufferbloat.net>; Tue, 17 Sep 2019 01:12:25 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=newmedia-net.de; s=mikd; 
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject;
 bh=Jakg/0cZHjQ7dKuurogneH9Cf5Im3/xNzlKgVEBKPn0=; 
 b=jKxkWemB838Ak1d8/o/V52WYykqzoP0V8+f1PVMn9VinbMMyHSRFE1XJogze/FVkXZu2ETX14Bh//F9RZNamf8YWg1Rbi/KXKvu45WATlcuB0fguvvjdv7Csf/zUJ5SoM+OtJhVw6FOm3zqgUbPCf8oUeFFzOQPFwE+DsI6FBNc=;
To: Jonathan Morton <chromatix99@gmail.com>
References: <ac3db996-6769-4e38-b19b-eaa08ac40cd5@www.fastmail.com>
 <2825CE14-2109-4580-A086-9701F4D3ADF0@gmail.com>
 <18b1c174-b88d-4664-9aa8-9c42925fc14c@www.fastmail.com>
 <E0C914DE-893D-4B14-9179-F10EB595DE0C@gmail.com>
 <9a90111b-2389-4dc6-8409-18c40f895540@www.fastmail.com>
 <43F02160-E691-4393-A0C0-8AB4AD962700@gmail.com>
 <a75b079e-8a29-46f1-9890-7eb73e18b0f2@www.fastmail.com>
 <E975CC03-A531-4450-A896-5C3921A9D063@gmail.com>
 <057ea708-6797-23f5-ef01-9d3d7b002578@newmedia-net.de>
 <CAA93jw6+=SuQhFbvVWMbL3m3r_0pRWSMmgScHbhZ=sSN9prntw@mail.gmail.com>
 <f44aa0fc-64d3-88a3-98db-dccf4f2c0530@newmedia-net.de>
 <93040b26-aa44-41b9-abec-7e1f637c0cb1@www.fastmail.com>
 <2FE4FDA8-BB22-4216-8D97-FA05D896E54B@gmail.com>
 <99196e48-926e-689d-b1a8-69b1bfb1885f@newmedia-net.de>
 <D50283B7-56E0-44D1-A026-854D794661BC@gmail.com>
From: Sebastian Gottschall <s.gottschall@newmedia-net.de>
Message-ID: <3de7bfb5-3393-f10e-1ffa-be46b798cea4@newmedia-net.de>
Date: Tue, 17 Sep 2019 07:10:54 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <D50283B7-56E0-44D1-A026-854D794661BC@gmail.com>
X-Received: from [2003:c9:3f21:2600:e48d:ccf8:4911:ed41]
 by webmail.newmedia-net.de with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.72) (envelope-from <s.gottschall@newmedia-net.de>)
 id 1iA5mz-0007eV-0v; Tue, 17 Sep 2019 07:12:33 +0200
Subject: Re: [Cake] cake memory consumption
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
Cc: cake@lists.bufferbloat.net
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

CkFtIDE2LjA5LjIwMTkgdW0gMTY6MDYgc2NocmllYiBKb25hdGhhbiBNb3J0b246Cj4gSWYgeW91
J3JlIGFibGUgdG8gbG9nIGluIGFzIHJvb3QsIHdoYXQgZG9lcyAidGMgLXMgcWRpc2MgfCBmZ3Jl
cCBtZW1vcnkiIHRlbGwgeW91PwppdHMgbm90IG15IGRldmljZS4gaSBuZWVkIHRvIHJlY3JlYXRl
IGhpcyBzZXR1cCAob2YgdGhlIHJlcG9ydGVyKSBvbiBteSAKdGVzdGJlZCBmaXJzdC4gdGhlbiBp
IGNhbiBzaG93IHlvdSB0aGUgb3V0cHV0Lgo+Cj4gQ2FrZSBhY3R1YWxseSBkb2VzIHZlcnkgbGl0
dGxlIGR5bmFtaWMgbWVtb3J5IGFsbG9jYXRpb24uICBUaGVyZSdzIGEgc21hbGwgYW1vdW50IG9m
IG1lbW9yeSB1c2VkIHBlciBxdWV1ZSBhbmQgcGVyIHRpbiwgd2hpY2ggc2hvdWxkIHRvdGFsIGxl
c3MgdGhhbiAxMDBLQiBpbiAiYmVzdGVmZm9ydCIgbW9kZSAod2hpY2ggeW91IHNob3VsZCBiZSB1
c2luZyBpZiB5b3UgaGF2ZSBtYW51YWwgdHJhZmZpYyBjbGFzc2lmaWNhdGlvbikuCmJlc3RlZmZv
cmQgaXMgdXNlZC4geWVzCj4KPiBBbGwgb3RoZXIgbWVtb3J5IGNvbnN1bXB0aW9uIGlzIGR1ZSB0
byBwYWNrZXRzIGluIHRoZSBxdWV1ZSwgd2hpY2ggYXJlIGFsbG9jYXRlZCBieSB0aGUga2VybmVs
IHdoZW4gdGhleSBhcmUgcmVjZWl2ZWQsIGFuZCBkZWFsbG9jYXRlZCB3aGVuIHRyYW5zbWl0dGVk
IG9yIGRyb3BwZWQuICBDYWtlIGFwcGxpZXMgYSBsaW1pdCB0byB0aGUgbWVtb3J5IHVzZWQgYnkg
cXVldWVkIHBhY2tldHMsIGdlbmVyYWxseSA0TUIgYnkgZGVmYXVsdC4gIFRoZSBvbmx5IHdheSB0
aGlzIGNhbiBiZSBleGNlZWRlZCBieSBtb3JlIHRoYW4gb25lIHBhY2tldCAodHJhbnNpZW50bHks
IHdoZW4gYSBwYWNrZXQgaXMgZW5xdWV1ZWQgYW5kIENha2UgaGFzIHRvIGRyb3Agb3RoZXIgcGFj
a2V0cyB0byBtYWtlIHJvb20pIGlzIGlmIHRoZXJlJ3MgYW4gdW5hY2NvdW50ZWQgbWVtb3J5IGxl
YWsgc29tZXdoZXJlLgo+Cj4gSWYgeW91IGNhbiBmaW5kIHN1Y2ggYSBsZWFrIGluIENha2UsIHdl
J2xsIGZpeCBpdC4gIEJ1dCBJIHRoaW5rIGl0IGlzIHByb2JhYmx5IGVsc2V3aGVyZS4KCmV2ZW4g
aWYgZWxzZXdoZXJlIGknbSB3b25kZXJpbmcgd2h5IG9ubHkgY2FrZSB0cmlnZ2VycyBpdC4gdGhl
cmUgaXMgCm5vdGhpbmcgZGlmZmVyZW50IGluIGJldHdlZW4gd2hlbiBjb21wYXJpbmcgd2l0aCBv
dGhlciBzY2hlZHVsZXJzCmkgZG9udCBzZWUgYSBsZWFrIGhlcmUuIGkgbW9yZSBzZWUgYSBtYXNz
aXZlIGNvbnN1bXB0aW9uIGhlcmUuIGkgY2FuIHJ1biAKY2FrZSBvbiBkZXZpY2VzIHdpdGggbW9y
ZSBtZW1vcnkgYW5kIGl0IHdpbGwgbm90IHJ1biBvdXQgb2YgbWVtb3J5Lgp0aGUgYXNzdW1wdGlv
biBpcyB0aGF0IGNha2UgdGFrZXMgdGhlIDQgbWIgbWVtb3J5IHBlciBxZGlzYyBhbmQgaSBoYXZl
IAphbG90IG9mwqAgcWRpc2NzCgoKPgo+ICAgLSBKb25hdGhhbiBNb3J0b24KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2Fr
ZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlz
dGluZm8vY2FrZQo=
