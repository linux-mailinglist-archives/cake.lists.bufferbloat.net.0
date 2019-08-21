Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id 71D7997368
	for <lists+cake@lfdr.de>; Wed, 21 Aug 2019 09:31:39 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 54F3B3CB38;
	Wed, 21 Aug 2019 03:31:38 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1566372698;
	bh=kTiT4SLL3dDCm1PBxmT04MZa1XnQdEhJXYbAolf/Ozw=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TQZpZZEhjLVzMkB6VWapvVPnM17y397Nl70qClY8Y8XygyqlTo8Dtm+l91V/o6V+1
	 /fJ9MlkAa3kEcuZyA8MABAO3DS+dMRmHs+lRZ3TLJaky6ltec6VNMsyO5ZMv+2kDra
	 fCSKdYq4KzUH1iTMUT6YajlWJP3hbA1sdfdSEdR/yHdwsG2PFPFySY/TZdeEOeEL72
	 j6U+DqtVleGNkJ/oQILerm7B2+cRg2tTyuqnVUIL0Ov7oa1+hIkWW1hcRfzTW+mo17
	 wvKytwNNZqOMCAzFdub+f1wzZtkalQhHr9R+Nx4wPc7HhXfJo31I1FaEZ6paRWycVn
	 hmRXFGgsjRcLQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from webmail.newmedia-net.de (smtps.newmedia-net.de
 [IPv6:2a05:a1c0:0:de::167])
 (using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id C7D243B2A4
 for <cake@lists.bufferbloat.net>; Wed, 21 Aug 2019 03:31:36 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=newmedia-net.de; s=mikd; 
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject;
 bh=P3U+ikM2g/zx6/+arKNNZRPvDb2wAAkTHc6opgLzCFA=; 
 b=szsg5MVLuk/sAEUOjJ8A3MfYmemPX2YtKDEgUnPqqiJ/wiyO6WIN4dYvwxVhQHwAj4J2Leu854ufw2OKh81YZEuSGx07jdNDlxt1b9UPpgRtlgZi8cp3tIw9Y082fHcijFgHRVLFfPPjNXJX1eTpbnxlVgACdHn5ANWi6eoK+6o=;
To: Jonathan Morton <chromatix99@gmail.com>
References: <CAA93jw4FDjYjxxStyzMu8eCz_6Ezcumg-iZaYeM3kBZ5da8MBQ@mail.gmail.com>
 <fc64c772-d85c-deba-a0e4-4e590cfb76ee@newmedia-net.de>
 <CAA93jw4Fm=uY08A3XHWh3d=OKNfraCeYHwFGtAdPH7a51vG6WA@mail.gmail.com>
 <384866b4-4c91-cf2c-c267-ee4036e5fbf7@newmedia-net.de>
 <87wof7sriw.fsf@toke.dk>
 <6782ec15-30eb-63b0-f54f-376c5e6b840b@newmedia-net.de>
 <87tvabsp99.fsf@toke.dk>
 <74bccc2b-b805-255f-b6a7-83ade9af6765@newmedia-net.de>
 <87r25fsn70.fsf@toke.dk>
 <b52b087d-c21c-e190-1bc7-a06e5fe6305f@newmedia-net.de>
 <54438C64-C613-438E-9CB9-6C6D0C5EAFA0@gmail.com>
From: Sebastian Gottschall <s.gottschall@newmedia-net.de>
Message-ID: <3d3b6b49-6a8a-c645-e26d-999699c13fa1@newmedia-net.de>
Date: Wed, 21 Aug 2019 09:30:33 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <54438C64-C613-438E-9CB9-6C6D0C5EAFA0@gmail.com>
X-Received: from [2003:c9:3f25:1300:e947:ab73:1d88:4792]
 by webmail.newmedia-net.de with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.72) (envelope-from <s.gottschall@newmedia-net.de>)
 id 1i0L5r-0004UB-70; Wed, 21 Aug 2019 09:31:43 +0200
Subject: Re: [Cake] cake in dd-wrt
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
Cc: "cake@lists.bufferbloat.net >> Cake List" <cake@lists.bufferbloat.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

CkFtIDIwLjA4LjIwMTkgdW0gMjE6MDcgc2NocmllYiBKb25hdGhhbiBNb3J0b246Cj4+IE9uIDIw
IEF1ZywgMjAxOSwgYXQgOTozOSBwbSwgU2ViYXN0aWFuIEdvdHRzY2hhbGwgPHMuZ290dHNjaGFs
bEBuZXdtZWRpYS1uZXQuZGU+IHdyb3RlOgo+Pgo+PiDigKZhIGhlYXZ5IGJpdHRvcnJlbnQgZG93
bmxvYWRlciB3aWxsIHN0aWxsIHN0ZWFsIHRoZSBiYW5kd2lkdGggb2YgbXkgc2NwIHNlc3Npb24u
Cj4gSWYgeW91IGNhbiBpZGVudGlmeSB0aGUgQml0dG9ycmVudCBwYWNrZXRzLCB5b3UgY2FuIG1h
cmsgdGhlbSBDUzEsIGFuZCBzd2l0Y2ggb24gQ2FrZSdzICJkaWZmc2VydjMiIG1vZGUgKGFzIGl0
IGlzIGJ5IGRlZmF1bHQpLiAgVGhlbiB0aGUgQml0dG9ycmVudCBwYWNrZXRzIHdpbGwgc3RpbGwg
YmUgYWJsZSB0byB1c2UgZnVsbCBiYW5kd2lkdGggaWYgaXQncyBhdmFpbGFibGUsIGJ1dCB3aWxs
IGJlIGxpbWl0ZWQgdG8gMS8xNnRoIG9mIHRoZSB0b3RhbCBpZiB0aGVyZSBpcyBjb250ZW50aW9u
Lgp3ZSBoYXZlIGFscmVhZHkgcHJpb3Jpc2F0aW9uIGNsYXNzIHN5c3RlbSBpbiB0aGUgZ3VpIHdo
aWNoIHdhcyB1c2VkIGluIAp0aGUgcGFzdCB3aGljaCBvZmZlcnMgbW9yZSBjbGFzc2VzIHRoYW4g
b2ZmZXJlZCBidXQgdGhpcyBpc250IHRoZSBwb2ludCAKaGVyZS4KaXQgd29udCBiZSBsaW1pdGVk
IHRvIGEgMS8xNiBpZiB3ZSBoYXZlIG11bHRpcGxlIGxhbiBpbnRlcmZhY2VzIG9yIApkaWZmZXJl
bnQgc2V0dGluZ3MgcGVyIHVzZXIgKHNwZWNpZmllZCBieSBtYWMgb3IgaXAvbmV0KS4gc28gd2Ug
bmVlZCBhIApjYWtlIGluc3RhbmNlIGZvciBlYWNoIGxhbiBpbnRlcmZhY2UgYnV0IHRoZXNlIGNh
a2UgaW5zdGFuY2VzIGRvbnQga25vdyAKb2YgZWFjaCBvdGhlci4gc28gZWFjaCB3aWxsIHVzZSB0
aGUgZnVsbCBiYW5kd2lkdGggYXZhaWxhYmxlCml0cyBub3QganVzdCBhYm91dCBsaW1pdGluZyBh
IHNpbmdsZSBzZXJ2aWNlIG9uIGEgc2luZ2xlIGludGVyZmFjZS4gdGhpcyAKaXNudCBhIHByb2Js
ZW0KCj4KPiAgIC0gSm9uYXRoYW4gTW9ydG9uCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxv
YXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK
