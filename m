Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id E2984B3B47
	for <lists+cake@lfdr.de>; Mon, 16 Sep 2019 15:27:06 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id D373E3CB40;
	Mon, 16 Sep 2019 09:27:05 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1568640425;
	bh=oe+wgIO4tzU3WWtRrXfc4HHt391ctP2efw8A/6WxiIU=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=iKt/XRNYwDSKgACRpL6ld80z2RhZjlPSGlp7AVSpuxNcus6x6EtQOLC0egGZN37fi
	 T3fwQiWzlReVJ85AU+tKm+nNF2z0fwHbWoZryoRML+Ps26S49nZ37gUukKz9BlcuFk
	 6mLT0q/jZkZ/iojN6gmCw+gO5wXfMeQNkAdYzhwaVgDWzTGak2YsI8zcdTgi9zPE4S
	 6NWjbTMT33DAIXv+rFLU4gzp6fRqG1gXN0Rt+JBHrkna3scwvBnRNlWj6NOCMnqK3i
	 CQ9wh1E8l83yPaUKaixIbOihwJahFy4WryW6KHJAGyMm8irtQW3LbuhlN2sEVLlCcE
	 CMqrObbX7jPEg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from webmail.newmedia-net.de (smtps.newmedia-net.de
 [IPv6:2a05:a1c0:0:de::167])
 (using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 79ECD3B2A4
 for <cake@lists.bufferbloat.net>; Mon, 16 Sep 2019 09:27:04 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=newmedia-net.de; s=mikd; 
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject;
 bh=xHgGIHYa+NjuUNuN0gH8+6TWx+ngRP2+tDxpq7XhpZg=; 
 b=TY6PKW1uTgwHyYtQhTlkk/tlScS7ieJ7ubN/Gjwl63u33RQWTfYiuKo6xIAPzE2UDHM4gmizwni4LiZrXemyFECJ5afWTavAgajaCFq9QSOW4yCh7K4oH4NSt20gu2FqrnZESXUQOjlzjfZSrv43imry3ECm9sQp6KsqkYk3BMI=;
To: =?UTF-8?Q?Toke_H=c3=b8iland-J=c3=b8rgensen?= <toke@redhat.com>,
 cake@lists.bufferbloat.net
References: <ac3db996-6769-4e38-b19b-eaa08ac40cd5@www.fastmail.com>
 <2825CE14-2109-4580-A086-9701F4D3ADF0@gmail.com>
 <18b1c174-b88d-4664-9aa8-9c42925fc14c@www.fastmail.com>
 <E0C914DE-893D-4B14-9179-F10EB595DE0C@gmail.com>
 <9a90111b-2389-4dc6-8409-18c40f895540@www.fastmail.com>
 <43F02160-E691-4393-A0C0-8AB4AD962700@gmail.com>
 <a75b079e-8a29-46f1-9890-7eb73e18b0f2@www.fastmail.com>
 <E975CC03-A531-4450-A896-5C3921A9D063@gmail.com>
 <057ea708-6797-23f5-ef01-9d3d7b002578@newmedia-net.de>
 <878sqomoj4.fsf@toke.dk>
From: Sebastian Gottschall <s.gottschall@newmedia-net.de>
Message-ID: <b52b59ac-c5f7-8015-c7dc-b82406b9002c@newmedia-net.de>
Date: Mon, 16 Sep 2019 15:25:33 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <878sqomoj4.fsf@toke.dk>
X-Received: from [212.111.244.1] (helo=[172.29.0.186])
 by webmail.newmedia-net.de with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.72) (envelope-from <s.gottschall@newmedia-net.de>)
 id 1i9r27-0006yt-NG; Mon, 16 Sep 2019 15:27:11 +0200
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

CkFtIDE2LjA5LjIwMTkgdW0gMTQ6MDggc2NocmllYiBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW46
Cj4gU2ViYXN0aWFuIEdvdHRzY2hhbGwgPHMuZ290dHNjaGFsbEBuZXdtZWRpYS1uZXQuZGU+IHdy
aXRlczoKPgo+PiBhZnRlciB3ZSBmb3VuZCBvdXQgc2VyaW91cyBvdXQgb2YgbWVtb3J5IGlzc3Vl
cyBvbiBzbWFsbGVyIGVtYmVkZGVkCj4+IGRldmljZXMgKDEyOCBtYiByYW0pIHdlIG1hZGUgc29t
ZSBiZW5jaG1hcmtzIHdpdGggZGlmZmVyZW50IHNjaGVkdWxlcnMKPj4gd2l0aCB0aGUgcmVzdWx0
IHRoYXQgY2FrZSB0YWtlcyBhIHNlcmlvdXMgYW1vdW50IG9mIG1lbW9yeS4gd2UgdXNlIHRoZQo+
PiBvdXQgb2YgdHJlZSBjYWtlIG1vZHVsZSBhbmQgd2UgdXNlIGl0IGNsYXNzIGJhc2VkIHNpbmNl
IHdlIGhhdmUgY29tcGxleAo+PiBtZXRob2RzIG9mIGRvaW5nIHFvcyBwZXIgaW50ZXJmYWNlLCBw
ZXIgbWFjIGFkZHJlc3NlIG9yIGV2ZW4gcGVyCj4+IGlwL25ldHdvcmsuIHNvIGl0cyBub3QganVz
dCBzaW1wbGUgY2FrZSBvbiBhIHNpbmdsZSBpbnRlcmZhY2Ugc29sdXRpb24uCj4+IHdlIG1hZGUg
c29tZSBiZW5jaG1hcmtzIHdpdGggZGlmZmVyZW50IHNjaGVkdWxlcnMuIGRvZXMgYW55Ym9keSBo
YXZlIGEKPj4gc29sdXRpb24gZm9yIG1ha2luZyB0aGF0IGJldHRlcj8KPj4KPj4gSFRCL0ZRX0NP
REVMIC0tLS0tLS3vg6AgNjJNCj4+IEhUQi9TRlEgLS0tLS0tLe+DoCA2Mk0KPj4gSFRCL1BJRSAt
LS0tLS0t74OgIDYyTQo+PiBIVEIvRlFfQ09ERUxfRkFTVCAtLS0tLS0t74OgIDY3TQo+PiBIVEIv
Q0FLRSAtLS0tLS0t74OgMTExTQo+Pgo+PiBIRlNDL0ZRX0NPREVMX0ZBU1QgLS0tLS0tLe+DoCA0
N00KPj4gSFRCL1BJRSAtLS0tLS0t74OgIDQ5TQo+PiBIVEIvU0ZRIC0tLS0tLS3vg6AgNTBNCj4+
IEhGU0MgL0ZRX0NPREVMIC0tLS0tLS3vg6AgNTJNCj4+IEhGU0MvQ0FLRSAtLS0tLS0t74OgMTA5
TQo+IEhvdyBhcmUgeW91IG1lYXN1cmluZyB0aGUgbWVtb3J5IHVzYWdlLCBhbmQgd2hhdCBpcyB5
b3VyIGZ1bGwgY29uZmlnIGZvcgo+IGVhY2ggc2V0dXA/IDopCm1lPyBub3RoaW5nLiBpIHJlcXVl
c3RlZCB0aGlzIHRlc3QgZnJvbSBhIHJlcG9ydGVyIGFuZCBoZSB1c2VzIGp1c3QgZnJlZSAKLyB0
b3AuIHNvIHRoZXJlIGlzIGEgZXJyb3IgdG9sbGVyYW5jZS4KCmJ1dCBpdCBzaG93cyBhIHNpZ25p
ZmljYW50IGRpZmZlcmVuY2UgYmV0d2VlbiBjYWtlIGFuZCBmcV9jb2RlbCBldGMuIApjYWtlIGlz
IGRvaW5nIGEgT09NIGF0IHRoZSBlbmQKCmZvciB0aGUgZnVsbCByZXBvcnQgaW5jbHVkaW5nIGNv
bmZpZyBzY3JlZW5zaG90cyBzZWUgdGhpcyAKaHR0cHM6Ly9zdm4uZGQtd3J0LmNvbS90aWNrZXQv
Njc5OCNjb21tZW50OjE0LiBpdCBzaG93cyBhbHNvIHRoZSBxb3MgCnNldHVwIHdoaWNoIGkgY2Fu
IHVzZSB0byByZXByb2R1Y2UgYW5kIHRvCnByaW50IG91dCB0aGUgZnVsbCB0YyBydWxlc2V0IGlm
IHJlcXVpcmVkICh3aGljaCBpdCBzdXJlbGx5IGlzIGZvciB5b3UpLiAKaWYgeW91IHdhbnQgaSB3
aWxsIHJlY3JlYXRlIHRoaXMgc2V0dXAgYW5kIHNlbmQgdGhlIHRjIHJ1bGVzIG9uIHRoaXMgbGlz
dAoKPgo+IC1Ub2tlCj4KPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRw
czovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==
